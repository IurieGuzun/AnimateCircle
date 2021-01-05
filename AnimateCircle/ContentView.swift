//
//  ContentView.swift
//  AnimateCircle
//
//  Created by Iurie Guzun on 2021-01-05.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

struct OriginView: View {
 @State private var animationAmount: CGFloat = 1
    var body: some View {
        Button("") {
        }
        .padding(5)
        .background(Color.red)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeOut(duration: 2)
                        .repeatForever(autoreverses: true)
                )
        )
        .onAppear {
            self.animationAmount = 2
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        OriginView()
    }
}
