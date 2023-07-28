import Cocoa

//You already know enough to start writing your first useful code, albeit fairly simple: we’re going to convert temperatures from Celsius to Fahrenheit.
//
//Your goal is to write a Swift playground that:
//
//Creates a constant holding any temperature in Celsius.
//Converts it to Fahrenheit by multiplying by 9, dividing by 5, then adding 32.
//Prints the result for the user, showing both the Celsius and Fahrenheit values.
                        
let celsius = 30
let fahrenheit = (celsius * 9 / 5) + 32
print("The temperature is \(celsius) degrees Celsius, which is \(fahrenheit) degrees Fahrenheit.")

