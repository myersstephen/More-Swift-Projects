//
//  Person.swift
//  MVC-test
//
//  Created by stephen myers on 11/15/16.
//  Copyright © 2016 Stephen Myers. All rights reserved.
//
//  Manipulates data, may capitalize, put two names together, formats data

import Foundation

class Person {
    private var _firstName: String!
    private var _lastName: String!
    
    var firstName: String {
        get {
           return _firstName
        }
        set {
            _firstName = newValue
        }
    }
    
    var lastName: String {
        return _lastName
    }
    
    
    //When you create a new person it must have these things
    init(first: String, last: String) {
        self._firstName = first
        self._lastName = last
    }
    
    //computed property, that manipulates data is in the model and exposed through this prop
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    
    
}
