//
//  Appetizer.swift
//  Appetizers
//
//  Created by Maria Mayorova on 26.01.2025.
//

import Foundation

struct Appetizer: Decodable, Identifiable, Hashable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let carbs: Int
    let calories: Int
    let protein: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is a description for my test appetizer. It's yummy!",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItemOne = Appetizer(id: 0001,
                                           name: "Test Appetizer One",
                                           description: "This is a description for my test appetizer. It's yummy!",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItemTwo = Appetizer(id: 0002,
                                           name: "Test Appetizer Two",
                                           description: "This is a description for my test appetizer. It's yummy!",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItemThree = Appetizer(id: 0003,
                                           name: "Test Appetizer Three",
                                           description: "This is a description for my test appetizer. It's yummy!",
                                           price: 9.99,
                                           imageURL: "asian-flank-steak",
                                           carbs: 99,
                                           calories: 99,
                                           protein: 99)
    
    static let orderItems = [orderItemOne, orderItemTwo, orderItemThree]
    
}
