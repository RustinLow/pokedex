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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var baseAttackLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var evoTxt: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pokemonNameLbL.text = pokemon.name.capitalizedString
        mainImg.image = UIImage(named: "\(pokemon.pokedexId)")
        
        pokemon.downloadPokemonDetails { 
            //this will be called after download is done
        }
       
    }

    
    @IBAction func backBtnPressed(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    

}
