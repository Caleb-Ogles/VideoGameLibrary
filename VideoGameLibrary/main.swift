//
//  main.swift
//  VideoGameLibrary
//
//  Created by Caleb Ogles on 9/10/18.
//  Copyright © 2018 Caleb Ogles. All rights reserved.
//

import Foundation

print("Welcome to the Video Game Library!\n")
let libraryMenu = Menu() //Create an instance of our Menu class, which handles showing the menu, taking user input, and interacting with the rest of the application.
libraryMenu.go() //This handles running the logic loop for our video game library. Once we break out of this function, the library will close.
libraryMenu.getInput()
