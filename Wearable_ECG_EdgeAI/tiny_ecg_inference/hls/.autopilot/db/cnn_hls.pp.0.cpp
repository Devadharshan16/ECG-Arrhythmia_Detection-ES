# 1 "cnn_hls.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 422 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "D:/AMD/2026.1/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h" 1
# 105 "D:/AMD/2026.1/Vitis/common/technology/autopilot\\etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_CanWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_PrintNone(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintInt(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_PrintDouble(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "cnn_hls.cpp" 2
# 1 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 1 3
# 52 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 1 3
# 28 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 1 3
# 10 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 12 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_mac.h" 1 3
# 13 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 1 3
# 44 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/_mingw_secapi.h" 3
extern "C++" {
template <bool __test, typename __dsttype>
  struct __if_array;
template <typename __dsttype>
  struct __if_array <true, __dsttype> {
    typedef __dsttype __type;
};
}
# 14 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 282 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 1 3
# 12 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 1 3








# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 1 3
# 595 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_directx.h" 1 3
# 596 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 1 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include/sdks/_mingw_ddk.h" 1 3
# 597 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 10 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 2 3




#pragma pack(push,_CRT_PACKING)



extern "C" {





  typedef __builtin_va_list __gnuc_va_list;






  typedef __gnuc_va_list va_list;
# 99 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\vadefs.h" 3
}



#pragma pack(pop)
# 13 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\vadefs.h" 2 3
# 283 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 2 3
# 558 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
extern "C" {
# 569 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\_mingw.h" 3
void __attribute__((__cdecl__)) __debugbreak(void);
extern __inline__ __attribute__((__always_inline__,__gnu_inline__)) void __attribute__((__cdecl__)) __debugbreak(void)
{
  __asm__ __volatile__("int {$}3":);
}




const char *__mingw_get_crt_info (void);


}
# 11 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 2 3




#pragma pack(push,_CRT_PACKING)
# 35 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long size_t;
# 45 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ssize_t;






typedef size_t rsize_t;
# 62 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long intptr_t;
# 75 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef unsigned long uintptr_t;
# 88 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
__extension__ typedef long ptrdiff_t;
# 106 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef unsigned short wint_t;
typedef unsigned short wctype_t;





typedef int errno_t;




typedef long __time32_t;




__extension__ typedef long __time64_t;
# 138 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
typedef __time64_t time_t;
# 422 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\crtdefs.h" 3
struct threadlocaleinfostruct;
struct threadmbcinfostruct;
typedef struct threadlocaleinfostruct *pthreadlocinfo;
typedef struct threadmbcinfostruct *pthreadmbcinfo;
struct __lc_time_data;

typedef struct localeinfo_struct {
  pthreadlocinfo locinfo;
  pthreadmbcinfo mbcinfo;
} _locale_tstruct,*_locale_t;



typedef struct tagLC_ID {
  unsigned short wLanguage;
  unsigned short wCountry;
  unsigned short wCodePage;
} LC_ID,*LPLC_ID;




typedef struct threadlocaleinfostruct {
  int refcount;
  unsigned int lc_codepage;
  unsigned int lc_collate_cp;
  unsigned long lc_handle[6];
  LC_ID lc_id[6];
  struct {
    char *locale;
    wchar_t *wlocale;
    int *refcount;
    int *wrefcount;
  } lc_category[6];
  int lc_clike;
  int mb_cur_max;
  int *lconv_intl_refcount;
  int *lconv_num_refcount;
  int *lconv_mon_refcount;
  struct lconv *lconv;
  int *ctype1_refcount;
  unsigned short *ctype1;
  const unsigned short *pctype;
  const unsigned char *pclmap;
  const unsigned char *pcumap;
  struct __lc_time_data *lc_time_curr;
} threadlocinfo;







#pragma pack(pop)
# 29 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3



# 1 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stddef.h" 1 3
# 33 "D:/AMD/2026.1/Vitis/tps/mingw/8.3.0/win64.o/nt\\x86_64-w64-mingw32\\include\\stdint.h" 2 3


typedef signed char int8_t;
typedef unsigned char uint8_t;
typedef short int16_t;
typedef unsigned short uint16_t;
typedef int int32_t;
typedef unsigned uint32_t;
__extension__ typedef long long int64_t;
__extension__ typedef unsigned long long uint64_t;


typedef signed char int_least8_t;
typedef unsigned char uint_least8_t;
typedef short int_least16_t;
typedef unsigned short uint_least16_t;
typedef int int_least32_t;
typedef unsigned uint_least32_t;
__extension__ typedef long long int_least64_t;
__extension__ typedef unsigned long long uint_least64_t;





typedef signed char int_fast8_t;
typedef unsigned char uint_fast8_t;
typedef short int_fast16_t;
typedef unsigned short uint_fast16_t;
typedef int int_fast32_t;
typedef unsigned int uint_fast32_t;
__extension__ typedef long long int_fast64_t;
__extension__ typedef unsigned long long uint_fast64_t;


__extension__ typedef long long intmax_t;
__extension__ typedef unsigned long long uintmax_t;
# 53 "D:\\AMD\\2026.1\\Vitis\\win64\\tools\\clang-16\\lib\\clang\\16\\include\\stdint.h" 2 3
# 2 "cnn_hls.cpp" 2
# 1 "./weights.h" 1
# 24 "./weights.h"
const int8_t conv1_weight[40] = {
    -127, -120, -76, 82, 78, 45, -24, -128, 89, -50, -95, -112, -6, 117, 127, -20,
      15, -71, 37, -128, 121, -6, 115, -125, 30, 41, -1, 127, 86, 120, -24, 127,
     -40, -9, -123, -36, -93, -9, -23, 127
};


const int32_t conv1_bias[8] = {
     370, 164, -635, 1114, -819, -2620, 269, -71
};


const float conv1_weight_scale[8] = {
    0.0032029341f, 0.0104244407f, 0.0047785281f, 0.0039492450f, 0.0045335907f, 0.0017486996f, 0.0074451910f, 0.0080540897f
};

const float conv1_output_scale = 0.0162009504f;
const int8_t conv1_output_zp = 0;


const int32_t conv1_multiplier[8] = {
    1048240846, 852915201, 781946846, 646244947, 741865884, 572305984, 609156575, 658975934
};
const int32_t conv1_shift[8] = {
      37, 35, 36, 36, 36, 37, 35, 35
};



const int8_t conv2_weight[640] = {
     -28, 61, 73, 118, 49, -22, -70, -33, -20, 8, -30, -77, -113, -94, -65, 21,
      79, -60, 29, -40, -12, 19, -13, -66, 127, -13, -37, 57, 59, -21, -1, -63,
     -29, -93, -25, 18, 48, 30, -66, 38, -126, -100, -30, 28, -13, 90, 29, -85,
      -8, 84, 112, -112, -69, 34, 7, 68, 73, 93, -36, -92, -27, 9, -87, -48,
     -71, 11, -48, 92, 43, -15, 26, -113, -11, 10, 19, 102, -121, -44, 73, 125,
     -88, 6, 9, -22, -2, -49, -45, 67, -72, -10, 76, 62, -8, -74, -31, -84,
      11, 23, 77, -27, -12, 40, -28, -128, -9, 21, -13, 23, 73, 39, 76, 32,
      57, 27, 7, 49, 23, 23, -67, 22, 31, 73, 50, -53, 37, -20, 96, -10,
     -27, -114, 8, -52, 69, -59, -32, -68, 62, -41, -14, 27, -109, -83, 8, -31,
     -34, -52, -65, 75, -57, 65, -40, -31, -47, 25, -128, -36, -25, -89, -71, 22,
     -56, 25, 121, -58, 27, -45, 78, 2, -81, -45, -69, -66, 82, 127, -7, 78,
      37, -75, 39, -20, 47, 83, 12, -71, -56, -28, 47, -92, 11, 50, -13, 69,
      77, -14, -100, 5, -76, 1, 32, -55, 34, -49, 67, 89, 57, -62, 96, -90,
       8, 76, 70, 18, -92, -91, -128, 126, -46, 13, 17, 44, 84, 112, -26, 44,
      64, -32, 55, -46, 31, -47, -118, 85, -101, 122, 17, 70, -18, -12, 57, -116,
     -15, 8, -52, -20, -24, 75, 23, 8, -45, -49, -36, -67, -47, -50, 4, 48,
     -31, 56, 21, 7, -4, 19, 127, -47, -69, 52, -25, -6, -52, 37, 32, 32,
      -3, 81, 94, -23, 43, 4, -40, 62, -91, -128, -100, 31, -9, -7, -35, 3,
      30, 96, -36, -38, 36, 85, 14, -3, -107, -26, 54, -34, 68, 35, -15, -17,
     -12, -32, -48, 39, 115, 48, -11, 32, -49, 7, 83, -76, -3, -19, -66, -2,
      60, -74, -54, -53, -35, 0, 32, -43, -24, 29, -25, -36, -22, -55, -8, 42,
     -29, 27, 122, 126, -65, -30, -36, 82, 18, 30, 27, 89, -76, 80, -71, -13,
      18, -71, -31, -22, -2, -38, -38, -45, 2, 10, -125, 12, -50, 64, 94, 61,
     -13, 71, -28, 127, -82, -48, 34, -66, -13, 22, 77, 70, 2, -98, 34, 124,
     -99, -24, -16, -45, 17, -117, 3, -81, 45, 38, -80, 61, 22, 86, -35, -35,
      45, 38, 9, 87, -45, 55, -74, 50, -22, -92, -73, 13, 38, 10, -35, 69,
     -61, -75, -46, -127, -67, -28, -85, 58, 4, -80, 35, -8, 10, -10, 13, -28,
     -63, -34, -54, -33, 68, -111, -70, -122, -101, 100, 55, -106, 67, 82, -26, -93,
    -110, 50, 40, 18, -27, -27, 73, 27, 60, 60, 110, -4, 88, 95, 99, -5,
     -52, 50, 52, 72, -126, -18, 39, -16, 73, 80, -3, 0, 9, -29, -66, 48,
      79, 18, 33, -11, 11, -56, 57, -89, 46, -69, 18, 32, 22, 42, -18, 73,
     -19, 90, 53, -112, 60, -110, -39, -81, 42, 98, -21, 118, 40, 21, -64, 0,
      81, 29, 31, 52, -85, 127, -100, -91, -59, 57, -105, -34, 127, -99, 55, -2,
      29, 44, -34, -35, -56, 26, -23, 45, 17, 80, 27, 33, -70, -37, -34, 96,
     -50, 94, -10, -60, -83, -15, -73, 68, 19, -28, 14, -38, -73, -124, -5, 0,
     -19, 81, 101, 38, -84, 32, 127, -72, 6, -75, 79, 82, 60, 38, -57, 19,
      84, 56, 25, 4, 51, -6, 14, -19, -67, 82, 66, 75, -22, 24, -44, 83,
     -64, -73, -16, 46, -44, 4, 60, 43, 18, 11, -44, -37, 36, 53, -16, 56,
      69, -49, 18, -29, 33, 40, -86, -60, 24, -57, -76, -61, -7, -44, -58, 17,
     -32, -71, 10, 32, 57, 73, 45, 60, -64, -59, -128, 61, 50, 17, 37, 41
};


const int32_t conv2_bias[16] = {
    4398, 1673, -1538, 14328, -2035, -8996, -3653, 2355,
    2272, 927, 15589, -16325, -6956, 4282, -13873, 4422
};


const float conv2_weight_scale[16] = {
    0.0075137303f, 0.0060724104f, 0.0095991939f, 0.0037627562f, 0.0047796122f, 0.0032100163f, 0.0049061333f, 0.0047535095f,
    0.0073045394f, 0.0058599208f, 0.0031924455f, 0.0030013109f, 0.0057321372f, 0.0034618531f, 0.0040448932f, 0.0043457123f
};

const float conv2_output_scale = 0.0180181973f;
const int8_t conv2_output_zp = 0;


const int32_t conv2_multiplier[16] = {
    928527129, 750412583, 593121632, 929983138, 590651965, 793370826, 606287112, 587426268,
    902675867, 724153671, 789028119, 741788284, 708362519, 855613501, 999714631, 537031747
};
const int32_t conv2_shift[16] = {
      37, 37, 36, 38, 37, 38, 37, 37,
      37, 37, 38, 38, 37, 38, 38, 37
};



const int8_t conv3_weight[768] = {
     -20, 56, 17, 53, 62, -19, -100, 38, -100, 79, -27, -86, 10, 12, -32, 0,
      -3, -62, 51, -112, 126, -107, -17, 88, 123, -3, 20, 126, 26, 79, -82, -102,
      18, -103, -36, 26, 17, -43, 4, 59, 11, -68, -3, -23, 81, -119, 2, 36,
      48, 51, 38, 14, -102, -50, 14, -117, 58, -14, -25, 81, 6, 22, -46, 32,
     -48, -128, -61, 47, -51, 21, 58, 100, 87, -78, -4, -57, 6, 12, -96, -88,
     -56, -55, -1, 33, 2, -28, 17, -25, 118, -14, -34, 22, 42, 51, -68, -81,
      -2, 25, 11, 53, 3, -101, 2, -87, -82, 95, 23, 7, -107, -73, -1, -72,
      23, -50, 90, 47, 75, -52, 53, -127, 3, 4, 53, -16, 6, 11, 115, 64,
     -22, -23, 43, -46, 17, -25, -70, 2, 39, -72, -47, -55, 3, -51, 15, -37,
      61, -73, -10, 16, -94, 14, -17, -58, 5, 51, -127, -15, 17, -32, -21, 79,
     -48, -33, 27, 8, 53, 35, 29, -2, 27, 48, -39, -119, 22, 55, 36, 63,
    -107, 72, -54, -80, 24, 10, 13, -94, -45, 61, -23, -25, -13, 103, -86, -32,
      47, -82, 74, -76, -27, -26, -36, -30, 20, 73, 28, 84, -112, -3, 9, -15,
      64, -55, -66, 14, -43, 30, 51, -2, 39, 65, 75, 31, -60, 25, 107, 5,
       1, 0, -19, -7, -72, 17, 65, 47, 17, 25, 9, 36, 56, -97, 9, -128,
     -90, -36, 48, -107, 127, 68, -49, -68, -30, 83, 52, -34, -61, -14, 26, 5,
     -22, -51, -26, 20, -61, -27, 48, 3, -49, 44, -40, -56, -63, 89, -3, -121,
      27, 26, 19, 50, -39, -1, -13, -41, 67, 88, -37, 84, 83, -24, -74, 4,
      15, -106, -36, -61, 98, 109, -92, -27, 19, -80, -17, 17, 72, 94, 95, 11,
     -58, 61, 61, -14, 10, 24, -19, -96, 71, -47, 66, -63, -128, 1, 87, 14,
     -30, -45, -49, 69, -39, 126, 13, 60, 68, -112, -76, 2, 100, -39, -41, -5,
     -22, -8, 30, 97, -32, -97, -96, 68, -43, -125, -30, -128, 86, -80, 48, 98,
      71, 37, -109, -8, 19, -37, 23, -95, 47, 11, 20, -13, 92, 16, -78, -1,
     -99, -35, -76, 23, 18, 88, -124, 100, -60, -104, 25, 3, -20, 62, 52, 28,
     -89, -2, -28, -126, -8, -8, -33, 85, -83, -57, -79, 108, 22, 117, -5, -12,
     -56, -17, -17, -42, -65, 94, -51, -55, -20, 60, -46, -61, -63, 82, 39, -32,
       1, -26, -14, -67, 61, 26, -127, -16, -9, -19, -54, -66, 76, 91, 27, 10,
      74, -46, -50, -39, -80, 32, 0, 5, 78, 31, 19, -50, 66, -110, -112, 23,
      16, 44, -29, -37, -7, 15, 127, 98, 89, 63, 29, -101, 59, 12, -10, -10,
      29, -46, 70, -33, -86, -24, 65, -96, -5, 3, 52, 28, -115, -36, -47, 40,
      34, 69, -43, 73, -75, 42, 116, 3, -13, -75, -85, 27, 127, 67, -11, -59,
     -29, 50, 64, -114, -54, 53, 27, 101, -113, -11, 88, 122, -4, -28, -46, 82,
     -62, 58, -109, -125, 12, 16, -121, -78, 45, -24, 15, 88, -65, -107, -77, 69,
      60, -25, 127, -74, -79, 49, 46, -4, 75, -100, 64, 68, 1, 63, 5, 105,
      15, 45, 103, 87, -12, 13, 70, 65, 22, -74, -9, 49, 51, -49, 34, -45,
      42, 30, -87, 47, -11, -10, 86, -8, 87, -57, 14, 101, 8, 56, -52, 28,
     -69, -69, -11, -80, -26, 39, 2, -52, 126, -128, 35, -72, -61, 53, 9, -60,
     -34, -69, 44, 19, -42, 31, -79, -47, -30, -79, 43, -5, -27, 23, 19, -47,
      65, 30, 71, -23, -4, 8, 24, 19, 58, -52, -83, 26, -45, 60, -81, 81,
      23, -59, 51, 127, 80, -53, 28, 28, 14, -103, 47, 36, 42, 88, 16, 40,
      26, -36, -13, -128, 21, -27, -125, 48, -69, 52, -51, -100, -6, 49, 28, 51,
      20, 46, -42, -5, -52, 61, -7, -65, -41, -65, -10, -21, 0, 76, 89, 6,
     -29, -86, -6, 1, 51, 40, 113, -83, 13, -56, -105, 37, -20, 30, 16, -85,
      66, 18, 28, 54, -59, -66, -48, -72, -3, 44, 81, 43, -110, -11, 53, -52,
     -11, 65, -124, -111, 17, 56, -63, 19, -71, -37, 127, -38, -29, 25, -24, 77,
     -33, -46, 40, 54, -35, -3, -35, 37, -79, 97, 9, -41, -48, -2, -83, -62,
     -53, -45, -82, -47, -65, -1, -49, 12, -22, 99, 92, -87, 31, 23, -32, -81,
      85, 32, -1, 22, 16, -26, -14, -41, -65, 58, -34, 104, 37, 107, -84, -127
};


const int32_t conv3_bias[16] = {
    -219, 2280, 4289, 5974, -5434, 2883, 2845, 8209,
    11241, -3845, 50, -19689, 8631, -836, 5704, 5891
};


const float conv3_weight_scale[16] = {
    0.0038268385f, 0.0072176517f, 0.0034232701f, 0.0068228426f, 0.0072419457f, 0.0053831679f, 0.0035641938f, 0.0051054070f,
    0.0044885841f, 0.0038016899f, 0.0035229342f, 0.0028614549f, 0.0061314628f, 0.0040839952f, 0.0072157839f, 0.0052550193f
};

const float conv3_output_scale = 0.0182111673f;
const int8_t conv3_output_zp = 0;


const int32_t conv3_multiplier[16] = {
    1040767010, 981475161, 931010441, 927787993, 984778725, 732017252, 969336808, 694246598,
    610369412, 1033927491, 958115608, 778216234, 833772347, 555352358, 981221178, 714591272
};
const int32_t conv3_shift[16] = {
      38, 37, 38, 37, 37, 37, 38, 37,
      37, 38, 38, 38, 37, 37, 37, 37
};



const int8_t fc_weight[384] = {
     -64, -7, -27, -64, 58, 4, -33, -125, -48, -3, -54, 6, 24, -57, 44, 24,
    -112, -82, -16, -45, -28, 27, -5, 23, 25, 7, -25, -27, -80, -125, -128, -7,
      15, 69, 48, 9, -55, 62, -13, 124, -63, -24, 27, 11, 18, -95, 22, -34,
     -49, -15, 15, 28, -109, 17, -122, -109, 46, 76, 27, -27, 15, 40, 74, 37,
      37, 23, -107, 39, 25, -24, -51, -32, -43, 13, 117, 37, -10, 16, -67, 38,
     -38, -59, 2, 3, -35, -65, 126, 101, 79, -26, -10, -50, 48, -84, -11, 36,
     -21, 16, 10, -6, -46, 16, -112, 21, 28, -65, 7, -15, -39, -44, -30, -18,
    -114, 15, -38, -79, -22, -69, -5, 13, -113, 11, -10, -3, -25, 79, 15, 23,
      65, -13, -95, -48, -20, -29, -15, 70, -74, -28, -46, -13, 42, 15, -55, 25,
     -16, 44, 74, 35, 37, 60, 40, 83, -8, -74, -44, -62, -26, -19, 23, -10,
      56, 20, 9, 76, 46, -7, -92, 48, -84, 26, 84, 84, 36, 22, -18, 58,
      95, -5, 14, -35, -26, 78, -2, -2, -55, 7, -117, 0, -40, 29, 37, 37,
      50, 16, -29, -30, 22, 38, -37, 119, 1, -6, -45, -28, -16, 65, 14, 35,
      94, 1, -36, -17, 114, 66, -3, 75, -27, 3, -30, -47, 127, 125, 126, 127,
      20, 14, -9, -5, 77, -77, 28, 49, 108, -78, -29, 23, 98, 3, 44, 16,
      -9, -31, -25, 66, 73, 46, 121, 109, -32, 23, 29, -36, -4, 3, -78, -46,
     -25, 13, 68, -80, -33, -17, -67, -54, 30, 15, -48, -39, -76, -7, 75, -51,
     -11, 39, 45, -3, 6, 51, -44, -101, -83, -30, 10, -3, 15, -24, 65, 39,
     -45, -20, -31, -19, -11, -63, 65, -84, -19, 68, -17, 26, 66, -7, 19, 27,
     -20, 40, -58, 40, 82, 15, 36, -14, -2, -46, 15, -69, -2, -14, 5, 18,
     -24, 17, 101, -10, -80, -12, -15, -53, 31, 15, -43, -13, 24, 47, 50, 8,
     -41, -33, -76, 64, -69, 66, 29, -29, 35, 73, 14, 20, -29, 86, 23, -53,
     -64, 5, 14, -50, 40, -18, 67, 36, -118, -1, -94, -90, -3, -59, -81, -49,
     -65, 28, -46, 42, -17, 19, -52, -68, 74, -37, 126, 125, -35, -19, -25, 76
};


const int32_t fc_bias[2] = {
    1613, 2290
};


const float fc_weight_scale[2] = {
    0.0011303095f, 0.0011112576f
};

const float fc_output_scale = 0.0111928526f;
const int8_t fc_output_zp = 136;


const int32_t fc_multiplier[2] = {
    1011030417, 993988979
};
const int32_t fc_shift[2] = {
      39, 39
};


const float input_scale = 0.0385783575f;
const int8_t input_zero_point = 104;


const int CONV1_IN_CH = 1, CONV1_OUT_CH = 8, CONV1_KERNEL = 5, CONV1_STRIDE = 2, CONV1_PAD = 2;
const int CONV2_IN_CH = 8, CONV2_OUT_CH = 16, CONV2_KERNEL = 5, CONV2_STRIDE = 2, CONV2_PAD = 2;
const int CONV3_IN_CH = 16, CONV3_OUT_CH = 16, CONV3_KERNEL = 3, CONV3_STRIDE = 2, CONV3_PAD = 1;
const int FC_IN = 192, FC_OUT = 2;
const int INPUT_LENGTH = 90;
# 3 "cnn_hls.cpp" 2

static inline int8_t requantize_and_relu(int32_t acc, int32_t multiplier, int32_t shift, int8_t output_zp) {

    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;


    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }

    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;


    if (res < output_zp) res = output_zp;


    if (res > 127) return 127;
    if (res < -128) return -128;
    return (int8_t)res;
}

static inline int8_t requantize_linear(int32_t acc, int32_t multiplier, int32_t shift, int8_t output_zp) {
    int64_t acc64 = (int64_t)acc * (int64_t)multiplier;

    if (shift > 0) {
        acc64 += (1LL << (shift - 1));
    }

    int32_t res = (int32_t)(acc64 >> shift);
    res += output_zp;


    if (res > 127) return 127;
    if (res < -128) return -128;
    return (int8_t)res;
}

__attribute__((sdx_kernel("tiny_ecg_inference", 0))) void tiny_ecg_inference(int8_t input_ecg[90], int8_t output_logits[2]) {
#line 1 "directive"
#pragma HLSDIRECTIVE TOP name=tiny_ecg_inference
# 41 "cnn_hls.cpp"

#pragma HLS INTERFACE s_axilite port=return bundle=CTRL
#pragma HLS INTERFACE m_axi port=input_ecg offset=slave bundle=DATA_IN
#pragma HLS INTERFACE m_axi port=output_logits offset=slave bundle=DATA_OUT

    int8_t buffer_c1[8][45];
#pragma HLS ARRAY_PARTITION variable=buffer_c1 complete dim=1

    int8_t buffer_c2[16][23];
#pragma HLS ARRAY_PARTITION variable=buffer_c2 complete dim=1

    int8_t buffer_c3[16][12];
#pragma HLS ARRAY_PARTITION variable=buffer_c3 complete dim=1
    int8_t flatten[192];





    VITIS_LOOP_60_1: for (int out_idx = 0; out_idx < 45; ++out_idx) {
        VITIS_LOOP_61_2: for (int oc = 0; oc < CONV1_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv1_bias[oc];

            VITIS_LOOP_65_3: for (int k = 0; k < CONV1_KERNEL; ++k) {
                int in_idx = out_idx * CONV1_STRIDE + k - CONV1_PAD;
                int32_t x = 0;

                if (in_idx >= 0 && in_idx < INPUT_LENGTH) {

                    x = (int32_t)input_ecg[in_idx] - input_zero_point;
                }

                acc += (int32_t)conv1_weight[oc * CONV1_KERNEL + k] * x;
            }

            buffer_c1[oc][out_idx] = requantize_and_relu(acc, conv1_multiplier[oc], conv1_shift[oc], conv1_output_zp);
        }
    }





    VITIS_LOOP_85_4: for (int out_idx = 0; out_idx < 23; ++out_idx) {
        VITIS_LOOP_86_5: for (int oc = 0; oc < CONV2_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv2_bias[oc];

            VITIS_LOOP_90_6: for (int k = 0; k < CONV2_KERNEL; ++k) {
                VITIS_LOOP_91_7: for (int in_ch = 0; in_ch < CONV2_IN_CH; ++in_ch) {
                    int in_idx = out_idx * CONV2_STRIDE + k - CONV2_PAD;
                    int32_t x = 0;

                    if (in_idx >= 0 && in_idx < 45) {


                        x = (int32_t)buffer_c1[in_ch][in_idx] - conv1_output_zp;
                    }

                    acc += (int32_t)conv2_weight[(oc * CONV2_IN_CH + in_ch) * CONV2_KERNEL + k] * x;
                }
            }

            buffer_c2[oc][out_idx] = requantize_and_relu(acc, conv2_multiplier[oc], conv2_shift[oc], conv2_output_zp);
        }
    }





    VITIS_LOOP_113_8: for (int out_idx = 0; out_idx < 12; ++out_idx) {
        VITIS_LOOP_114_9: for (int oc = 0; oc < CONV3_OUT_CH; ++oc) {
#pragma HLS PIPELINE II=1
            int32_t acc = conv3_bias[oc];

            VITIS_LOOP_118_10: for (int k = 0; k < CONV3_KERNEL; ++k) {
                VITIS_LOOP_119_11: for (int in_ch = 0; in_ch < CONV3_IN_CH; ++in_ch) {
                    int in_idx = out_idx * CONV3_STRIDE + k - CONV3_PAD;
                    int32_t x = 0;

                    if (in_idx >= 0 && in_idx < 23) {
                        x = (int32_t)buffer_c2[in_ch][in_idx] - conv2_output_zp;
                    }

                    acc += (int32_t)conv3_weight[(oc * CONV3_IN_CH + in_ch) * CONV3_KERNEL + k] * x;
                }
            }

            buffer_c3[oc][out_idx] = requantize_and_relu(acc, conv3_multiplier[oc], conv3_shift[oc], conv3_output_zp);
        }
    }




    VITIS_LOOP_138_12: for (int i = 0; i < 16; ++i) {
        VITIS_LOOP_139_13: for (int j = 0; j < 12; ++j) {
#pragma HLS PIPELINE II=1
            flatten[i * 12 + j] = buffer_c3[i][j];
        }
    }




    VITIS_LOOP_148_14: for (int out_class = 0; out_class < FC_OUT; ++out_class) {
#pragma HLS PIPELINE II=1
        int32_t acc = fc_bias[out_class];

        VITIS_LOOP_152_15: for (int idx = 0; idx < FC_IN; ++idx) {
            int32_t x = (int32_t)flatten[idx] - conv3_output_zp;
            acc += (int32_t)fc_weight[out_class * FC_IN + idx] * x;
        }

        output_logits[out_class] = requantize_linear(acc, fc_multiplier[out_class], fc_shift[out_class], fc_output_zp);
    }
}
