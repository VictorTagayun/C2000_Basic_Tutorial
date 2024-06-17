//#############################################################################
//
// FILE:   05_epwm4_up-cnt_deadband_w_ISR.c
//
// TITLE:  ePWM4 Using Deadband Submodule.
//
//! \addtogroup driver_example_list
//! <h1>ePWM4 Deadband</h1>
//!
//!  - ePWM4 with Deadband Active High Complimentary
//!
//!
//! \b External \b Connections \n
//! - GPIO6 EPWM4A
//! - GPIO7 EPWM4B
//!
//! \b Watch \b Variables \n
//! - None.
//! View GPIO33 toggle in ISR toggle
//

//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"

__interrupt void INT_myEPWM4_ISR(void);

void main(void)
{

    //
    // Initialize device clock and peripherals
    //
    Device_init();

    //
    // Disable pin locks and enable internal pull-ups.
    //
    Device_initGPIO();

    //
    // Initialize PIE and clear PIE registers. Disables CPU interrupts.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell Interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // Disable sync(Freeze clock to PWM as well). GTBCLKSYNC is applicable
    // only for multiple core devices. Uncomment the below statement if
    // applicable.
    //
    // SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_GTBCLKSYNC);
    SysCtl_disablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);

    //
    // Configure ePWMs
    //
    Board_init();
    
    //
    // Enable sync and clock to PWM
    //
    SysCtl_enablePeripheral(SYSCTL_PERIPH_CLK_TBCLKSYNC);


    //
    // Enable Global Interrupt (INTM) and real time interrupt (DBGM)
    //
    EINT;
    ERTM;

    //
    // IDLE loop. Just sit and loop forever (optional):
    //
    for(;;)
    {
        NOP;
    }
}


__interrupt void INT_myEPWM4_ISR(void)
{
    //
    // Update the CMPA and CMPB values
    //
    EPWM_setCounterCompareValue(myEPWM4_BASE, EPWM_COUNTER_COMPARE_A, 800);

    //
    // Clear INT flag for this timer
    //
    EPWM_clearEventTriggerInterruptFlag(EPWM4_BASE);

    //
    // Acknowledge interrupt group
    //
    Interrupt_clearACKGroup(INTERRUPT_ACK_GROUP3);

    GPIO_togglePin(myGPIO33);
}
