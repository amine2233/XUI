//
//  WithViewStore.swift
//
//
//  Created by Amine Bensalah on 21/02/2024.
//

import SwiftUI

public struct WithViewStore<ViewStore: ViewModel, Content: View>: View {
    @Store private var store: ViewStore
    @ViewBuilder private let content: (ViewStore) -> Content
    
    public init(
        viewModel: ViewStore,
        @ViewBuilder content: @escaping (ViewStore) -> Content
    ) {
        self._store = Store(wrappedValue: viewModel)
        self.content = content
    }
    
    public var body: some View {
        content(store)
    }
}
