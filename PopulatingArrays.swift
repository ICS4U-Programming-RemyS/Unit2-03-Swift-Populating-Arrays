//
// PopulatingArrays.swift
//
// Created by Remy Skelton
// Created on 2025-03-19
// Version 1.0
// Copyright (c) 2025 Remy Skelton. All rights reserved.
//
// This program will generate 50 random integers
// between 1 and 100 on 5 different lines
// and then sort the integers from lowest to highest as well as the average

// Import foundation library
import Foundation

// MAX_ARRAY size constant
let MAX_ARRAY = 10

// FOR loop to create 5 line of random integers'
for _ in 0..<5 {
    // Create an array to hold the random integers
    var arrayRandomInts: [Int] = []

    // Call populating array function and set the array
    arrayRandomInts = populatingArray()

    // Set sum
    var sum = 0

    // sort the array
    arrayRandomInts.sort()

    // FOR loop to find the sum of the integers
    for index in 0 ..< MAX_ARRAY {
        // Add the integers to the sum
        sum += arrayRandomInts[index]
    }
    // Calculate the average
    let average: Double = Double(sum) / Double(MAX_ARRAY)

    // Print the sorted array and the average in for loop
    for index in 0 ..< MAX_ARRAY {
        // Print the sorted array with terminator to not go to the next line
        // https://www.programiz.com/swift-programming/basic-input-output
        print("\(arrayRandomInts[index]) ", terminator: "")
    }

    // Print the average
    print("The average is \(average)")
}

func populatingArray() -> [Int] { 
    // Create an array to hold the random integers
    var arrayRandomInts: [Int] = []

    // FOR loop to generate 50 random integers
    for _ in 0 ..< MAX_ARRAY{
        // Generate a random integer between 1 and 100
        let randomInt = Int.random(in: 1...100)

        // Add the random integer to the array
        arrayRandomInts.append(randomInt)
    }

    // Return the populated array
    return arrayRandomInts
}
