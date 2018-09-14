//
//  Library.swift
//  VideoGameLibrary
//
//  Created by Caleb Ogles on 9/13/18.
//  Copyright © 2018 Caleb Ogles. All rights reserved.
//

import Foundation


class Library {
    var gameArray : [Game] = [Game(title: "Marvel's Spider Man"), Game(title: "2K19"), Game(title: "Fortnite"), Game(title: "Fortnite Too"), Game(title: "GTA: Skyrim Edition")]
    
    func addGame() {
        //Prompt user to enter the title for the new game to be added
        print("Please enter the title of the game you would like to add: ")
        
        //Get title input from user and store in a variable
        var newGameTitle = readLine()
        
        //Check and make sure the input isn't nil or an empty string
        while newGameTitle == nil || newGameTitle == "" {
            print("Invalid title. Please enter the game's title: ")
            newGameTitle = readLine()
        }
        //Instantiate a new game with the title from user input
        let newGame = Game(title: newGameTitle!)
        
        //Add new game object to our game array
        gameArray.append(newGame)
        
    }
    
    func listAvailableGames() {
        //We want to go through our array of games and print the games that are currently checked in
        for games in gameArray {
            if games.checkedIn {
                print(games.title)
            }
        }
    }
    
    func removeGame() {
        //List all of our games titles with a number for the user to select
        for index in 0..<gameArray.count {
            print("\(index). \(gameArray[index].title)")
        }
        
        print("Please enter the number of the game you want to remove: ")
        
        var userInput = Int(readLine()!)
        //Make a variable to hold all possible indices for our array
        let validGameIndex = Array(0..<gameArray.count)
        
        //Check to make sure input is not nil and the number entered is beyond the index of our array
        while userInput == nil || !validGameIndex.contains(userInput!) {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        //Remove the game at the user specified index after input validation
        gameArray.remove(at: userInput!)
        
    }
    
    func checkOutGame() {
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == true {
                print ("\(index). \(gameArray[index].title)")
            }
        }
        
        print("Please enter the index of the game you wish to check out: ")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        //Change the checkedIn value of our game element at the index provided by the user
        gameArray[userInput!].checkedIn = false
        
        //Use calendar to add time and establish due date
        let currentCalendar = Calendar.current
        let dueDate = currentCalendar.date(byAdding: .day, value: 14, to: Date())
        gameArray[userInput!].dueDate = dueDate
        
        //Use dateFormatter to print out date as a readable string for the user
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        print("The game is due on: \(dateFormatter.string(from: dueDate!))")
    }
    
    func checkInGame() {
        //Loop through our game array and print index and title if game is able to be checked in
        for index in 0..<gameArray.count {
            if gameArray[index].checkedIn == false {
                print("\(index). \(gameArray[index].title)")
            }
        }
        
        print("Please enter the index of the game you would like to check in: ")
        var userInput = Int(readLine()!)
        
        while userInput == nil {
            print("Invalid input. Please enter a usable index.")
            userInput = Int(readLine()!)
        }
        
        gameArray[userInput!].checkedIn = true
        
        //We need to remove the due date since the game has been returned
        gameArray[userInput!].dueDate = nil
        
    }
    
    func listUnavailableGames() {
        for games in gameArray {
            if !games.checkedIn {
                print(games.title)
                if let dueDate = games.dueDate {
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateFormat = "MM/dd/yyyy"
                    print("\(games.title) is due on: \(dateFormatter.string(from: dueDate)).")
                }
            }
        }
    }
    
}
