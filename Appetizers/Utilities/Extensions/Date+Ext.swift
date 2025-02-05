//
//  Date+Ext.swift
//  Appetizers
//
//  Created by Maria Mayorova on 06.02.2025.
//

import SwiftUI

extension Date {
    var eighteenYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -18, to: Date())!
    }
    
    var oneHundredYearsAgo: Date {
        Calendar.current.date(byAdding: .year, value: -110, to: Date())!
    }
}
