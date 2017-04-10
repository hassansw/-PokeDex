//
//  PokeCell.swift
//  PokeDex
//
//  Created by macbook on 03/04/2017.
//  Copyright © 2017 TheWolves. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var thumbImage : UIImageView!
    @IBOutlet weak var nameLabel : UILabel!
    
    var pokemon : Pokemon!
    
    func configureCell( pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLabel.text = self.pokemon.name.capitalized
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId )")
        
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
}
