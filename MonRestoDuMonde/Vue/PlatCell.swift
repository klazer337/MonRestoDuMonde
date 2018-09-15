//
//  PlatCell.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 15/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class PlatCell: UITableViewCell {

    @IBOutlet weak var imageDuPlat: UIImageView!
    @IBOutlet weak var descDuPlar: UILabel!
    
    var plat: Plat!
    
    func miseEnPlace (plat: Plat){
        self.plat = plat
        
        imageDuPlat.image = self.plat.image
        imageDuPlat.contentMode = .scaleAspectFill
        imageDuPlat.clipsToBounds = true
        imageDuPlat.layer.cornerRadius = 20
        
        descDuPlar.text = self.plat.desc
        descDuPlar.textAlignment = .center
        descDuPlar.numberOfLines = 0
        descDuPlar.font = FONT_DE_BASE
        descDuPlar.textColor = GRIS_TRES_CLAIR
        
    }
    

}
