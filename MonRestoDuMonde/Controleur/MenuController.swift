//
//  MenuController.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 10/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit                // UICollectionViewDelegateFlowLayout -> permet la mise en forme automatique des cell de la collection

class MenuController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    let cellId = "MenuCell"
    
    var menus = [Menu]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Les menus du monde"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        menus = LesPlats.obtenir.lesMenus()
        collectionView.reloadData()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return menus.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as? MenuCell {
            cell.backgroundColor = GRIS_TRES_FONCE
            return cell
        }
        return UICollectionViewCell()
    }
    
    // Taille des items de la collectionItem
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largeur = collectionView.frame.width / 2 - 10
        return CGSize(width: largeur, height: 200)  // CGSize -> auteur / largeur
    }
    // Espace en hauteur entre les lignes
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 25
    }
    // Espace en largeur entre les items
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}
