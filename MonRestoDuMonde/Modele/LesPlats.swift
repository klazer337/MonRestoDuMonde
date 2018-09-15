//
//  LesPlats.swift
//  MonRestoDuMonde
//
//  Created by Kevin Trebossen on 12/09/18.
//  Copyright © 2018 KTD. All rights reserved.
//

import UIKit

class LesPlats {
    static let obtenir = LesPlats()
    
    func lesMenus() -> [Menu] {
        var menus = [Menu]()
        let it = Menu(pays: ITALIE, image: #imageLiteral(resourceName: "pizza"))
        let jap = Menu(pays: JAPON, image: #imageLiteral(resourceName: "sushis"))
        let chi = Menu(pays: CHINE, image: #imageLiteral(resourceName: "crevette aigre doux"))
        let usa = Menu(pays: USA, image: #imageLiteral(resourceName: "burger"))
        let mex = Menu(pays: MEXIQUE, image: #imageLiteral(resourceName: "fajitas"))
        let esp = Menu(pays: ESPAGNE, image: #imageLiteral(resourceName: "paella"))
        let sui = Menu(pays: SUISSE, image: #imageLiteral(resourceName: "fondue"))
        menus.append(contentsOf: [it, jap, chi, usa,mex, esp, sui])
        
        return menus
    }
    
    func carteComplete() -> [ALaCarte] {
        let entree = ALaCarte(type: .entree)
        let plat = ALaCarte(type: .platPrincipal)
        let desert = ALaCarte(type: .dessert)
        return [entree, plat, desert]
    }
    
    func aLaCarte(type: Type) -> [Plat] {
        var plats = [Plat]()
        for plat in tousLesPlats() {
            if plat.type == type {
                plats.append(plat)
            }
        }
        return plats
    }
    
    func ajouterPlatAuMenu(pays: String) -> [Plat] {
        var plats = [Plat]()
        
        for plat in tousLesPlats() {
            if plat.pays == pays{
                plats.append(plat)
            }
        }
        
        return plats
    }
    
    func tousLesPlats() -> [Plat] {
        var lesPlats = [Plat]()
        
        let tomate = Plat(type: .entree, pays: ITALIE, desc: "Salade de tomates et Mozzarella", image: #imageLiteral(resourceName: "mozza"))
        lesPlats.append(tomate)
        let pizza = Plat(type: .platPrincipal, pays: ITALIE, desc: "Pizza Royale (jambon, fromage et champignons)", image: #imageLiteral(resourceName: "pizza"))
        lesPlats.append(pizza)
        let tiramisu = Plat(type: .dessert, pays: ITALIE, desc: "Le fameux Tiramisu au café, un régal pour les papilles", image: #imageLiteral(resourceName: "tiramisu"))
        lesPlats.append(tiramisu)
        
        let nuggets = Plat(type: .entree, pays: USA, desc: "Nuggets de poulet", image: #imageLiteral(resourceName: "nuggets"))
        lesPlats.append(nuggets)
        let burg = Plat(type: .platPrincipal, pays: USA, desc: "Cheeseburger avec viande 100% charolaise", image: #imageLiteral(resourceName: "burger"))
        lesPlats.append(burg)
        let sundae = Plat(type: .dessert, pays: USA, desc: "Sundae nappage chocolat et éclat de noix de pécan", image: #imageLiteral(resourceName: "sundae"))
        lesPlats.append(sundae)
        
        let nems = Plat(type: .entree, pays: CHINE, desc: "4 nems frits au poulet", image: #imageLiteral(resourceName: "nem"))
        lesPlats.append(nems)
        let crevette = Plat(type: .platPrincipal, pays: CHINE, desc: "Crevettes sauce aigre douce, servie ave du riz cantonais", image: #imageLiteral(resourceName: "crevette aigre doux"))
        lesPlats.append(crevette)
        let litchi = Plat(type: .dessert, pays: CHINE, desc: "Cheesecake au litchi et citron yuzu", image: #imageLiteral(resourceName: "cheesecake citon litchi"))
        lesPlats.append(litchi)
        
        let gaz = Plat(type: .entree, pays: ESPAGNE, desc: "Gazpacho: la soupe froide qui vient d'Andalousie", image: #imageLiteral(resourceName: "gazpacho"))
        lesPlats.append(gaz)
        let paellas = Plat(type: .platPrincipal, pays: ESPAGNE, desc: "La véritable paêlla valencianne", image: #imageLiteral(resourceName: "paella"))
        lesPlats.append(paellas)
        let churro = Plat(type: .dessert, pays: ESPAGNE, desc: "Churros et crème de framboise", image: #imageLiteral(resourceName: "Churros et creme de framboise"))
        lesPlats.append(churro)
        
        let sushi = Plat(type: .entree, pays: JAPON, desc: "Plateau de sushis variés (8 pièces)", image: #imageLiteral(resourceName: "sushis"))
        lesPlats.append(sushi)
        let boeuf = Plat(type: .platPrincipal, pays: JAPON, desc: "Boeuf Teryiaki", image: #imageLiteral(resourceName: "teriyaki"))
        lesPlats.append(boeuf)
        let glace = Plat(type: .dessert, pays: JAPON, desc: "Glace au thé vert et Sésame", image: #imageLiteral(resourceName: "glace thé vert"))
        lesPlats.append(glace)
        
        let nacho = Plat(type: .entree, pays: MEXIQUE, desc: "Plat de nachos dorés au fromage fondu", image: #imageLiteral(resourceName: "nachos"))
        lesPlats.append(nacho)
        let fajitas = Plat(type: .platPrincipal, pays: MEXIQUE, desc: "Fajitas boeuf ou poulet", image: #imageLiteral(resourceName: "fajitas"))
        lesPlats.append(fajitas)
        let sop = Plat(type: .dessert, pays: MEXIQUE, desc: "Sopapilla, un amour de beignet tout droit venu du Yucatan", image: #imageLiteral(resourceName: "sopapilla"))
        lesPlats.append(sop)
        
        let char = Plat(type: .entree, pays: SUISSE, desc: "Plateau de charcuterie suisse", image: #imageLiteral(resourceName: "charcuterie"))
        lesPlats.append(char)
        let fond = Plat(type: .platPrincipal, pays: SUISSE, desc: "Fondue au fromage", image: #imageLiteral(resourceName: "fondue"))
        lesPlats.append(fond)
        let gateau = Plat(type: .dessert, pays: SUISSE, desc: "Gateau au véritable chocolat Suisse", image: #imageLiteral(resourceName: "geateau au chocolat suisse"))
        lesPlats.append(gateau)
        
        return lesPlats
    }
    
    
}
