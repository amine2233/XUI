//
//  NavigationLink.swift
//  XUI
//
//  Created by Paul Kraft on 01.03.21.
//  Copyright © 2021 QuickBird Studios. All rights reserved.
//

extension NavigationLink {

    public init<Model, _Destination: View>(
        model: Binding<Model?>,
        @ViewBuilder destination: (Model) -> _Destination,
        @ViewBuilder label: () -> Label
    ) where Destination == _Destination? {
        self.init(
            destination: model.wrappedValue.map(destination),
            isActive: model.isActive(),
            label: label
        )
    }
}
