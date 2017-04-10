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
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var dexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    @IBOutlet weak var backBtn: UIButton!
    
    var pokemon:Pokemon!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLbl.text = pokemon.name
        pokemon.downloadPokemonDetails {
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
