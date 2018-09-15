//
//  Degrade.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 15/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class Degrade: CAGradientLayer {
    
    override init(layer: Any) {
        super.init(layer: layer)
        miseEnPlace()
    }
    
    override init() {
        super.init()
        miseEnPlace()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        miseEnPlace()
    }
    
    func miseEnPlace() {
        frame = UIScreen.main.bounds                            // taille du gradient
        //colors = [NOIR.cgColor, UIColor.white]        // Les 2 couleurs de base
        colors = [NOIR.cgColor, GRIS_TRES_FONCE.cgColor]        // Les 2 couleurs de base
        startPoint = CGPoint(x: 0, y: 0)                        // Point de départ
        endPoint = CGPoint(x: 1, y: 1)                          // Point de fin
        locations = [0,1]                                       // Position des couleurs
    }
}
