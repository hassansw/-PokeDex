//
//  Pokemon.swift
//  PokeDex
//
//  Created by macbook on 02/04/2017.
//  Copyright © 2017 TheWolves. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    
    private var _name :String!
    private var _pokedexId : Int!
    private var _description : String!
    private var _type : String!
    private var _defense : String!
    private var _height : String!
    private var _weight : String!
    private var _attack : String!
    private var _evoNextEvolutionText : String!
    private var _pokemonURL : String!
    
    var evoNextEvolutionText : String {
        if _evoNextEvolutionText == nil {
            _evoNextEvolutionText = ""
        } else {
            return _evoNextEvolutionText
        }
    }
    
    
    var name :String {

        return _name
    }
    
    var pokedexId : Int {
        
        return _pokedexId
    }
    
    init(name : String, pokedexId : Int) {
        self._name = name
        self._pokedexId = pokedexId
        
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self.pokedexId)"
    }
    
    func downloadPokemonDetails(completed : DownloadComplete) {
        Alamofire.request(self._pokemonURL, method: .get).responseJSON { (resp) in
            if let dict = resp.result.value as? Dictionary<String,AnyObject> {
                
                if let weight = dict["weight"] as? String  {
                    self._weight = weight as String
                }
                
                if let height = dict["height"] as? String {
                    self._height = height as String
                }
                
                if let attack = dict["attack"] as? Int {
                    self._attack = "\(attack)"
                }
                
                if let defense = dict["defense"] as? Int {
                    self._defense = "\(defense)"
                }
                
                print(self._weight)
                print(self._height)
                print(self._attack)
                print(self._defense)
            }
        }
    }
    
}
