/*
 *	Software Platform Generated File
 *	--------------------------------
 */

#include "wb_interfaces.h"

//------------------------------------------------------------------------------
// WB_INTERFACE component: ADC_1
//------------------------------------------------------------------------------

#define ADC_1_DATA(base) ((volatile uint16_t *) base)

#define ADC_1_DATA_ADDR_OFFSET 0x0

//------------------------------------------------------------------------------
// Functions for the register: DATA
//------------------------------------------------------------------------------

uint16_t adc_1_get_data(
    void
)
{
    return ADC_1_DATA(0xFF000000)[ADC_1_DATA_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// WB_INTERFACE component: ENC_1
//------------------------------------------------------------------------------

#define ENC_1_DATA(base) ((volatile uint16_t *) base)

#define ENC_1_C_ADDR_OFFSET    0x0

//------------------------------------------------------------------------------
// Functions for the register: C
//------------------------------------------------------------------------------

uint16_t enc_1_get_c(
    void
)
{
    return ENC_1_DATA(0xFF040000)[ENC_1_C_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// WB_INTERFACE component: ENC_2
//------------------------------------------------------------------------------

#define ENC_2_DATA(base) ((volatile uint16_t *) base)

#define ENC_2_C_ADDR_OFFSET    0x0

//------------------------------------------------------------------------------
// Functions for the register: C
//------------------------------------------------------------------------------

uint16_t enc_2_get_c(
    void
)
{
    return ENC_2_DATA(0xFF060000)[ENC_2_C_ADDR_OFFSET];
}

//------------------------------------------------------------------------------
// WB_INTERFACE component: ENC_3
//------------------------------------------------------------------------------

#define ENC_3_DATA(base) ((volatile uint16_t *) base)

#define ENC_3_C_ADDR_OFFSET    0x0

//------------------------------------------------------------------------------
// Functions for the register: C
//------------------------------------------------------------------------------

uint16_t enc_3_get_c(
    void
)
{
    return ENC_3_DATA(0xFF050000)[ENC_3_C_ADDR_OFFSET];
}

