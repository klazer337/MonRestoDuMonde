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
        guard menu != nil else {return miseEnPlace(menu: menu!)}
    }
    
    func miseEnPlace(menu: Menu){
        print("Ca marche on a le menu : \(menu.pays)")
    }

}
