//
//  DetailController.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 15/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class DetailController: UIViewController {

    @IBOutlet weak var scroll: UIScrollView!
    
    var menu: Menu?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.layer.addSublayer(Degrade())   // Ajout du degradé
        view.bringSubview(toFront: scroll)  // ajouter la scroll view au premier plan
        guard menu != nil else { return }
        miseEnPlace(menu: menu!)
    }
    
    func miseEnPlace(menu: Menu){
        let imageDuMenu = UIImageView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 250))
        imageDuMenu.image = menu.image
        imageDuMenu.contentMode = .scaleAspectFill
        imageDuMenu.clipsToBounds = true
        scroll.addSubview(imageDuMenu)
        var maxY = imageDuMenu.frame.maxY
        let nomDuMenu = UILabel(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 100))
        nomDuMenu.text = "Menu " + menu.pays
        nomDuMenu.font = FONT_TITRE
        nomDuMenu.textColor = .red
        nomDuMenu.adjustsFontSizeToFitWidth = true
        nomDuMenu.textAlignment = .center
        scroll.addSubview(nomDuMenu)
        maxY = nomDuMenu.frame.maxY
        
        for plat in menu.plats {
            let vue = PlatVue(frame: CGRect(x: 0, y: maxY, width: view.frame.width, height: 375))
            vue.miseEnPlace(plat: plat)
            scroll.addSubview(vue)
            maxY = vue.frame.maxY
        }
        
        scroll.contentSize = CGSize(width: view.frame.width, height: maxY + 50)
        
        
    }

}
