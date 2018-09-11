//
//  Menu.swift
//  VideoGameLibrary
//
//  Created by Caleb Ogles on 9/11/18.
//  Copyright © 2018 Caleb Ogles. All rights reserved.
//

import Foundation

var shouldQuit = false //When this is true, we should quit running the Video Game Library

class Menu {
    func go() {
        //This function is going to handle making the menu run. It will display the menu and take user input until the user wishes to quit the application.
        while !shouldQuit {
            printMenu()
            quit()
        }
    }
    func printMenu() {
        //This should contain a print statement that prints out a formatted list of options.
        //Options: Add Game, Remove Game, List Available Games, Check Out Game, Check In Game, List Checked Out Games, Quit.
        print("""

             Video Game Library Menu
        --------------------------------------
        1) Add Game                          |
        2)  Remove Game                      |
        3) List Available Games              |
        4)  Check Out Game                   |
        5) Check In Game                     |
        6)  List Checked Out Games           |
        7) Quit                              |
        --------------------------------------

        """)
    }
    
    func quit() {
        //This function will be called when the user is ready to quit the application.
        //Since the user is ready to quit, set shouldQuit = true
        shouldQuit = true
        //Show the user a message
        print("Thanks for using the application!")
    }
    
    func getInput() -> String {
        //Take user input using readLine. Check to make sure that the input isn't nil or it's not an empty String. If it's valid input, return the input. Otherwise, make the user enter input again.
        var userInput = String(readLine()!)
        
        while userInput == nil || userInput == "" {
            print("Error! Please print a valid option")
            userInput = String(readLine()!)
        }
        return userInput
    }
    
}


