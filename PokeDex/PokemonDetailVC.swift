//
//  PokemonDetailVC.swift
//  PokeDex
//
//  Created by macbook on 08/04/2017.
//  Copyright © 2017 TheWolves. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    @IBOutlet weak var nameLbl: UILabel!
    var pokemon:Pokemon!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
    }
    
}
