//
//  MenuCell.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 10/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class MenuCell: UICollectionViewCell {
    @IBOutlet weak var vue: UIView!
    @IBOutlet weak var nomDuMenu: UILabel!
    @IBOutlet weak var imageDuMenu: UIImageView!
    
    var menu: Menu!
    
    func miseEnPlace(menu: Menu){
        self.menu = menu
        
        vue.layer.cornerRadius = 10 // Bords arrondis
        vue.layer.borderColor = NOIR.cgColor
        vue.layer.borderWidth = 1
        
        imageDuMenu.image = self.menu.image
        imageDuMenu.contentMode = .scaleAspectFit
        imageDuMenu.clipsToBounds = true                // On garde la taille sans que ca déborde
        imageDuMenu.layer.cornerRadius = imageDuMenu.frame.width / 2
        imageDuMenu.layer.borderWidth = 2
        imageDuMenu.layer.borderColor = GRIS_TRES_CLAIR.cgColor
        
        nomDuMenu.text = "Menu " + self.menu.pays
        nomDuMenu.textColor = GRIS_TRES_FONCE
        nomDuMenu.font = FONT_DE_BASE
        nomDuMenu.adjustsFontSizeToFitWidth = true        // Ajuster la taille de la font
        nomDuMenu.textAlignment = .center
        
        
    }
    
    
}
