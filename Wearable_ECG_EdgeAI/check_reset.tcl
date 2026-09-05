connect
targets -set -nocase -filter {name =~ "APU*"}
targets -set -nocase -filter {name =~ "*A9*#0"}
puts "FPGA_RST_CTRL:"
puts [mrd -value 0xF8000240 1]
