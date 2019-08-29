//
//  Planets.swift
//  UnitTestingJSON
//
//  Created by Pursuit on 8/29/19.
//  Copyright © 2019 Nphilippe. All rights reserved.
//

import Foundation

struct Planets : Codable {
    var message : String
    
    static func getPlanets(from data: Data) -> Planets {
        do {
            let newPlanet = try JSONDecoder().decode(Planets.self, from: data)
            return newPlanet
        } catch let decodeError {
            fatalError("error: \(decodeError)")
            
        }
        
    }
}
