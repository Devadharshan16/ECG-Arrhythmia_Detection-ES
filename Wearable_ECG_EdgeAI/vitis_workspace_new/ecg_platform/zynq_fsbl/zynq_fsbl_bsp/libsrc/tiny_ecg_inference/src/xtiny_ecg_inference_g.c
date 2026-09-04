#include "xtiny_ecg_inference.h"

XTiny_ecg_inference_Config XTiny_ecg_inference_ConfigTable[] __attribute__ ((section (".drvcfg_sec"))) = {

	{
		"xlnx,tiny-ecg-inference-1.0", /* compatible */
		0x40000000,
		0x40010000 /* reg */
	},
	 {
		 NULL
	}
};