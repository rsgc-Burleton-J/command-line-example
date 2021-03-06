//
//  main.swift
//  basic-command-line
//
//  Created by Russell Gordon on 2015-12-16.
//  Copyright © 2015 Royal St. George's College. All rights reserved.
//

import Foundation

// Print welcome message on it's own line
print("Welcome.")


// Print prompt (but don't go to new line)
print("What is your name? ", terminator: "")

// Get the user's name
var givenName = readLine(stripNewline: true)

// Say hello, so long as some input was provided
// Add an extra newline at the start     \n
if let name = givenName {
    print("\nNice to meet you, \(name)!")
}


// Ask about food preferences
var validInput : Bool          // Status of input
repeat {
    
    // Show prompts
    print("\nWhat is your favourite food category?")
    print("A - Cereal")
    print("B - Fruit")
    print("C - Vegetables")
    print("Select your favourite (A/B/C/Quit): ", terminator: "")
    
    // Get the user's input
    var givenFoodPreference = readLine(stripNewline: true)
    
    // Assume valid input
    validInput = true
    
    // Interpret the result, if one was given
    if let foodPreference = givenFoodPreference {
        
        // Add a blank line to separate response from input block
        print("")
        
        switch foodPreference {
            
        case "A", "a":
            print("Awesome, I love Cheerios!")
            
        case "B", "b":
            print("My favourite it mango.")
            
        case "C", "c":
            print("Have you tried baked eggplant? Delectable!")
            
        case "Quit", "QUIT", "quit":
            print("Bye.")
            
        default:
            print("Sorry, I didn't get that.")
            validInput = false
        }
        
    }
    
} while validInput == false

// Print one additional blank line to separate from exit code message that is automatically displayed
print("")
