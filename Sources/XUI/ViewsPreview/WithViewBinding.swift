//
//  WithViewBinding.swift
//  
//
//  Created by Amine Bensalah on 21/02/2024.
//

import Foundation

public struct WithViewBinding<Value, Content: View>: View {
    @State private var value: Value
    @ViewBuilder private let content: (Binding<Value>) -> Content
    
    public init(
        _ value: Value,
        @ViewBuilder content: @escaping (Binding<Value>) -> Content
    ) {
        self._value = State(wrappedValue: value)
        self.content = content
    }
    
    public var body: some View {
        content($value)
    }
}
