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
    
    let gameLibrary = Library()
    
    func go() {
        //This function is going to handle making the menu run. It will display the menu and take user input until the user wishes to quit the application.
        while !shouldQuit {
            printMenu()
            var input = getInput()
            while !validateInput(input) {
                //Display the menu again
                printMenu()
                //Get new input
                input = getInput()
            }
            handleInput(input)
        }
    }
    
    func validateInput(_ input: String) -> Bool {
        let validMenuOptions = Array(1...8)
        guard let number = Int(input) else {
            return false
        }
        return validMenuOptions.contains(number)
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
        7) Print Menu                        |
        8)  Quit                             |
        --------------------------------------

        Please enter a number between 1 and 8
        """)
    }
    
    //Make a function called handleInput that takes our user input as a parameter and depending on what they enter print out what we would do
    
    func handleInput(_ input: String) {
        switch input {
        case "1":
            //Call the library's add game function
            gameLibrary.addGame()
        case "2":
            //Call the library's remove game function
            gameLibrary.removeGame()
        case "3":
            //Call the library's list available options function
            gameLibrary.listAvailableGames()
        case "4":
            //Call the library's check out game function
            gameLibrary.checkOutGame()
        case "5":
            //Call the library's check in game function
            gameLibrary.checkInGame()
        case "6":
            //Call the library's list checked out games function
            gameLibrary.listUnavailableGames()
        case "7":
            //Call the print menu function
            printMenu()
        case "8":
            //Call the quit function
            quit()
        default:
            break
        }
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
        var userInput = readLine()
        
        while userInput == nil || userInput == "" {
            print("Error! Please print a valid option")
            userInput = readLine()
        }
        return userInput!
    }
    
}


