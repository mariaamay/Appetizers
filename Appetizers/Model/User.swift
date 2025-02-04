//
//  User.swift
//  Appetizers
//
//  Created by Maria Mayorova on 03.02.2025.
//

import SwiftUI

struct User: Codable {
    
    var firstName       = ""
    var lastName        = ""
    var email           = ""
    var birthdate       = Date()
    var extraNapkins    = false
    var frequentRefills = false
    
}
