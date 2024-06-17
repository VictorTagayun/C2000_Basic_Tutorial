//#############################################################################
//
// FILE:    02_gpio_writePin.c
//
// TITLE:   Device GPIO Toggle
//
//! \addtogroup driver_example_list
//! <h1> Device GPIO Write Pin </h1>
//!
//! Configures the device GPIO through the sysconfig file. The GPIO pin is 
//! toggled in the infinite loop.
//! In order to migrate the project within syscfg to any device, 
//! click the swtich button under the device view and select your   
//! corresponding device to migrate, saving the project will 
//! auto-migrate your project settings.
//!
//!  \note: This example project has support for migration across our C2000 
//!  device families. If you are wanting to build this project from launchpad
//!  or controlCARD, please specify in the .syscfg file the board you're using.
//!  At any time you can select another device to migrate this example.
//


//
// Included Files
//
#include "driverlib.h"
#include "device.h"
#include "board.h"

//
// Main
//
void main(void)
{
    //
    // Initializes system control, device clock, and peripherals
    //
    Device_init();

    //
    // Initializes PIE and clear PIE registers. Disables CPU interrupts.
    // and clear all CPU interrupt flags.
    //
    Interrupt_initModule();

    //
    // Initialize the PIE vector table with pointers to the shell interrupt
    // Service Routines (ISR).
    //
    Interrupt_initVectorTable();

    //
    // Board Initialization
    //
    Board_init();

    //
    // Enables CPU interrupts
    //
    Interrupt_enableGlobal();

    //
    // Loop.
    //
    for(;;)
    {
        GPIO_writePin(myGPIOOutput33, 0);
        GPIO_writePin(myGPIOOutput33, 1);
//        DEVICE_DELAY_US(1000);
    }
}


//
// End of File
//

