//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Maria Mayorova on 04.02.2025.
//

import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.bordered)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

