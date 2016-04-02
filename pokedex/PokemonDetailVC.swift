//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Rustin Low on 4/2/16.
//  Copyright © 2016 Rustin Low. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    //vars
    var pokemon: Pokemon!
    
    @IBOutlet weak var pokemonNameLbL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonNameLbL.text = pokemon.name
       
    }

    

}
