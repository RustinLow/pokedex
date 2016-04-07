//
//  Pokemon.swift
//  pokedex
//
//  Created by Rustin Low on 3/29/16.
//  Copyright © 2016 Rustin Low. All rights reserved.
//

import Foundation
import Alamofire


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
    private var _pokemonURL: String!
    
    
//    var nextEvoTxt: String {
//        return _nextEvoTxt
//    }
//    
//    var attack: String {
//        return _attack
//    }
//    
//    var weight: String {
//        return _weight
//    }
//    
//    var height: String {
//        return _height
//    }
//    
//    var defense: String {
//        return _defense
//    }
//    
//    var type: String {
//        return _type
//    }
//    
//    var description: String {
//        return _description
//    }
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    
    init(name: String, pokedexId: Int){
        self._name = name
        self._pokedexId = pokedexId
        
        _pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexId)/"
    }
    
    func downloadPokemonDetails(completed: DownloadComplete) {
        
        let url = NSURL(string: _pokemonURL)!
        Alamofire.request(.GET, url).responseJSON { (response) -> Void in
            
            if let dict = response.result.value as? Dictionary<String, AnyObject> {
                if let weight = dict["weight"] as? String {
                    self._weight = weight
                }
                if let height = dict["height"] as? String {
                    self._height = height
                }
                if let attack = dict["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                if let defense = dict["defense"] as? Int {
                    self._defense = "\(defense)"
                }
                
                if let types = dict["types"] as? [Dictionary<String, String>] where types.count > 0 {
                    if let name = types[0] ["name"] {
                        self._type = name.capitalizedString
                    }
                    
                    if types.count > 1 {
                        for x in 1 ..< types.count {
                            if let name = types[x] ["name"] {
                                self._type! += "/\(name.capitalizedString)"
                            }
                        }
                    }
                } else {
                    self._type = ""
                }
                if let descArr = dict["description"] as? Dictionary<String, String> where descArr.count > 0 {
                    
                    if let url = descArr[0]["resource_uri"]{
                        
                    }
                } else {
                    self._description = ""
                }
            }
        }
    }
}