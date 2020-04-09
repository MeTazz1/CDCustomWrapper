//
//  ContentView.swift
//  CDCustomWrapper
//
//  Created by Christophe Dellac on 4/9/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var user = User(age: 20)
    
    var body: some View {
        VStack(alignment: .center) {
            Text("\(self.user.age)")
            Stepper("", onIncrement: {
                self.user.age += 1
            }, onDecrement: {
                self.user.age -= 1
            })
            .frame(width: 0)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
