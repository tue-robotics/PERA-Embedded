--------------------------------------------------------------------------------
-- Generated: 22-8-2014 15:14:30
--------------------------------------------------------------------------------
Library IEEE;
Use IEEE.Std_Logic_1164.all;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Entity Configurable_WB_ADCX Is Port
--------------------------------------------------------------------------------
(
    ADC_CHAN_0_I         : In   Std_Logic_Vector(15 DownTo 0);

    STB_I                : In   Std_Logic;
    CYC_I                : In   Std_Logic;
    ACK_O                : Out  Std_Logic;
    DAT_O                : Out  Std_Logic_Vector(15 DownTo 0);
    WE_I                 : In   Std_Logic;
    CLK_I                : In   Std_Logic;
    RST_I                : In   Std_Logic
);
--------------------------------------------------------------------------------
End Configurable_WB_ADCX;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
Architecture Structure Of Configurable_WB_ADCX Is
--------------------------------------------------------------------------------

    Signal IsReading                    : Std_Logic;
    Signal IsWriting                    : Std_Logic;
    Signal Acknowledge                  : Std_Logic;

    Signal ActiveAddress_ADC_CHAN_0     : Std_Logic;

    Signal Read_ADC_CHAN_0              : Std_Logic;

--------------------------------------------------------------------------------
Begin
--------------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    IsReading <= STB_I And CYC_I And Not WE_I;
    IsWriting <= STB_I And CYC_I And     WE_I;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    ACK_O <= Acknowledge;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    ActiveAddress_ADC_CHAN_0 <= '1';
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    Process (IsReading, IsWriting, ActiveAddress_ADC_CHAN_0)
    Begin
        Acknowledge      <= '0';
        Read_ADC_CHAN_0  <= '0';

        If IsReading = '1' Then
            If ActiveAddress_ADC_CHAN_0 = '1' Then Read_ADC_CHAN_0 <= '1';  Acknowledge  <= '1'; End If;
            If (ActiveAddress_ADC_CHAN_0) = '0' Then Acknowledge <= '1'; End If;
        End If;
    End Process;
    ----------------------------------------------------------------------------

    ----------------------------------------------------------------------------
    Process (Read_ADC_CHAN_0, ADC_CHAN_0_I)
    Begin
        DAT_O <= (Others => '0');

        If Read_ADC_CHAN_0 = '1' Then
            DAT_O(15 DownTo 0) <= ADC_CHAN_0_I;
        End If;
    End Process;
    ----------------------------------------------------------------------------

--------------------------------------------------------------------------------
End Structure;
--------------------------------------------------------------------------------
