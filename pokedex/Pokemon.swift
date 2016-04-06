//
//  Pokemon.swift
//  pokedex
//
//  Created by Rustin Low on 3/29/16.
//  Copyright © 2016 Rustin Low. All rights reserved.
//

import Foundation

class Pokemon {
    private var _name: String!
    private var _pokedexId: Int!
    private var _description: String!
    private var _type: String!
    private var _defense: String!
    private var _height: String!
    private var _weight: String!
    private var _attack: String!
    private var _nextEvoTxt: String!
    
    var nextEvoTxt: String {
        return _nextEvoTxt
    }
    
    var attack: String {
        return _attack
    }
    
    var weight: String {
        return _weight
    }
    
    var height: String {
        return _height
    }
    
    var defense: String {
        return _defense
    }
    
    var type: String {
        return _type
    }
    
    var description: String {
        return _description
    }
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
    }
}