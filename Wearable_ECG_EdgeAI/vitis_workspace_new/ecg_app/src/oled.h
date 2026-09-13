#ifndef OLED_H
#define OLED_H

#include <stdint.h>

#define GPIO_OLED_BASE 0x40020000
#define GPIO_OLED_DATA *(volatile uint32_t*)(GPIO_OLED_BASE + 0x00)
#define GPIO_BUZZ_DATA *(volatile uint32_t*)(GPIO_OLED_BASE + 0x08)

#define OLED_DC    0x01
#define OLED_RES   0x02
#define OLED_SCLK  0x04
#define OLED_SDIN  0x08
#define OLED_VBAT  0x10
#define OLED_VDD   0x20

static const uint8_t font5x7[26][5] = {
    {0x7e, 0x11, 0x11, 0x11, 0x7e}, // A
    {0x7f, 0x49, 0x49, 0x49, 0x36}, // B
    {0x3e, 0x41, 0x41, 0x41, 0x22}, // C
    {0x7f, 0x41, 0x41, 0x22, 0x1c}, // D
    {0x7f, 0x49, 0x49, 0x49, 0x41}, // E
    {0x7f, 0x09, 0x09, 0x09, 0x01}, // F
    {0x3e, 0x41, 0x49, 0x49, 0x7a}, // G
    {0x7f, 0x08, 0x08, 0x08, 0x7f}, // H
    {0x00, 0x41, 0x7f, 0x41, 0x00}, // I
    {0x20, 0x40, 0x41, 0x3f, 0x01}, // J
    {0x7f, 0x08, 0x14, 0x22, 0x41}, // K
    {0x7f, 0x40, 0x40, 0x40, 0x40}, // L
    {0x7f, 0x02, 0x0c, 0x02, 0x7f}, // M
    {0x7f, 0x04, 0x08, 0x10, 0x7f}, // N
    {0x3e, 0x41, 0x41, 0x41, 0x3e}, // O
    {0x7f, 0x09, 0x09, 0x09, 0x06}, // P
    {0x3e, 0x41, 0x51, 0x21, 0x5e}, // Q
    {0x7f, 0x09, 0x19, 0x29, 0x46}, // R
    {0x46, 0x49, 0x49, 0x49, 0x31}, // S
    {0x01, 0x01, 0x7f, 0x01, 0x01}, // T
    {0x3f, 0x40, 0x40, 0x40, 0x3f}, // U
    {0x1f, 0x20, 0x40, 0x20, 0x1f}, // V
    {0x3f, 0x40, 0x38, 0x40, 0x3f}, // W
    {0x63, 0x14, 0x08, 0x14, 0x63}, // X
    {0x07, 0x08, 0x70, 0x08, 0x07}, // Y
    {0x61, 0x51, 0x49, 0x45, 0x43}  // Z
};

void spi_send_byte(uint8_t data) {
    for(int i=7; i>=0; i--) {
        GPIO_OLED_DATA &= ~OLED_SCLK;
        if(data & (1<<i)) GPIO_OLED_DATA |= OLED_SDIN;
        else              GPIO_OLED_DATA &= ~OLED_SDIN;
        GPIO_OLED_DATA |= OLED_SCLK;
    }
}

void oled_command(uint8_t cmd) {
    GPIO_OLED_DATA &= ~OLED_DC; // Command
    spi_send_byte(cmd);
}

void oled_data(uint8_t data) {
    GPIO_OLED_DATA |= OLED_DC; // Data
    spi_send_byte(data);
}

void oled_init() {
    GPIO_OLED_DATA = 0;
    for(volatile int i=0; i<100000; i++);
    GPIO_OLED_DATA |= OLED_VDD;
    for(volatile int i=0; i<10000; i++);
    GPIO_OLED_DATA |= OLED_RES;
    for(volatile int i=0; i<10000; i++);
    GPIO_OLED_DATA |= OLED_VBAT;
    for(volatile int i=0; i<1000000; i++); 

    oled_command(0xAE); // OFF
    oled_command(0x8D); // Charge pump
    oled_command(0x14); 
    oled_command(0x20); // Memory Mode
    oled_command(0x00); // Horizontal
    oled_command(0xAF); // ON
}

void oled_clear() {
    oled_command(0x21); oled_command(0); oled_command(127);
    oled_command(0x22); oled_command(0); oled_command(3);
    for(int i=0; i<512; i++) oled_data(0x00);
}

// Stretches a 7-bit column into a 21-bit column
uint32_t stretch_col_3x(uint8_t col) {
    uint32_t res = 0;
    for(int i=0; i<7; i++) {
        if (col & (1<<i)) {
            res |= (1 << (i*3));
            res |= (1 << (i*3 + 1));
            res |= (1 << (i*3 + 2));
        }
    }
    return res;
}

// Prints text massively scaled 3x (Fills the entire 128x32 screen)
void oled_print_large(const char* str) {
    uint32_t buffer[128]; // Store 21-bit columns
    int col_idx = 0;
    
    // 1. Build the stretched columns
    while(*str && col_idx < 128) {
        if (*str >= 'A' && *str <= 'Z') {
            int idx = *str - 'A';
            for(int i=0; i<5; i++) {
                uint32_t stretched = stretch_col_3x(font5x7[idx][i]);
                if (col_idx < 128) buffer[col_idx++] = stretched;
                if (col_idx < 128) buffer[col_idx++] = stretched;
                if (col_idx < 128) buffer[col_idx++] = stretched;
            }
            // 3 pixel space between letters
            if (col_idx < 128) buffer[col_idx++] = 0;
            if (col_idx < 128) buffer[col_idx++] = 0;
            if (col_idx < 128) buffer[col_idx++] = 0;
        } else if (*str == ' ') {
            for(int i=0; i<18 && col_idx < 128; i++) buffer[col_idx++] = 0;
        }
        str++;
    }
    
    // Fill remainder with 0
    while(col_idx < 128) buffer[col_idx++] = 0;

    // 2. Draw Page 0 (Top 8 pixels)
    oled_command(0x21); oled_command(0); oled_command(127);
    oled_command(0x22); oled_command(0); oled_command(0);
    for(int i=0; i<128; i++) oled_data(buffer[i] & 0xFF);
    
    // 3. Draw Page 1 (Middle 8 pixels)
    oled_command(0x21); oled_command(0); oled_command(127);
    oled_command(0x22); oled_command(1); oled_command(1);
    for(int i=0; i<128; i++) oled_data((buffer[i] >> 8) & 0xFF);
    
    // 4. Draw Page 2 (Bottom 8 pixels)
    oled_command(0x21); oled_command(0); oled_command(127);
    oled_command(0x22); oled_command(2); oled_command(2);
    for(int i=0; i<128; i++) oled_data((buffer[i] >> 16) & 0xFF);
}

#endif
