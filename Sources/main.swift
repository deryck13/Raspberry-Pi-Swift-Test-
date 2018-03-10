


import SwiftyGPIO
import Foundation



// Get a dictionary of all the gpio pins
let gpios = SwiftyGPIO.GPIOs(for: .RaspberryPi2)
// Get the pin that you connected the LED to. Remember to set the right pin number, for me it was 27
guard let ledGpio = gpios[GPIOName.P27] else {
    fatalError("Could not initialize the gpio")
}
// Set the pin direction to .OUT and turn it off
ledGpio.direction = .OUT
ledGpio.value = 0
// Read user input from keyboard and switch the LED on/off each time the user presses the return key
print("Press return to switch the LED on/off. To quit type exit")
//while let userInput = readLine(strippingNewline: true), userInput != "exit" {
//    print("Switching LED ON/OFF")
//    ledGpio.value = ledGpio.value == 0 ? 1 : 0
//}




