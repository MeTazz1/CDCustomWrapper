//
//  Tracked.swift
//  CDCustomWrapper
//
//  Created by Christophe Dellac on 4/9/20.
//  Copyright © 2020 Christophe Dellac. All rights reserved.
//

@propertyWrapper
struct Tracked<Value> {
    private var value: Value
    
    public init(wrappedValue: Value) {
        self.value = wrappedValue
        print("[Tracked] Creating tracked property of type: [\(type(of: self.value))] with default value: [\(self.value)]")
    }
    
    var wrappedValue: Value {
        get {
            print("[Tracked] Getting Property")
            return self.value
        }
        set {
            print("[Tracked] Value before changes: \(self.value)")
            self.value = newValue
            print("[Tracked] Value after changes: \(self.value)")
        }
    }
}
