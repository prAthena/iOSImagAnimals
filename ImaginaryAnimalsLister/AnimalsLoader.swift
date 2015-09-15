//
//  AnimalsLoader.swift
//  ImaginaryAnimalsLister
//
//  Created by Alex Garbowitz on 9/14/15.
//  Copyright © 2015 Alex Garbowitz. All rights reserved.
//

import Foundation

//abstract out the loading behavior from our table view
struct AnimalsLoader {
    
    func loadAnimals() ->[ImaginaryAnimal] {
        
        let oscar = ImaginaryAnimal(name:"Oscar",
            height: "1.5",
            location: "Trashcan",
            dateLastSeen: "1992",
            imageURL:NSURL(string:"https://upload.wikimedia.org/wikipedia/en/7/7e/AEOrangeOscar.jpg"))
        
        let kermit = ImaginaryAnimal(name:"Kermit the Frog",
            height: "1.5",
            location: "Swamp",
            dateLastSeen: "2014",
            imageURL:NSURL(string:"https://upload.wikimedia.org/wikipedia/en/6/62/Kermit_the_Frog.jpg"))
        
        let theCount = ImaginaryAnimal(name:"The Count",
            height: "3.5",
            location: "Sesame Steet",
            dateLastSeen: "1995",
            imageURL:NSURL(string:"https://upload.wikimedia.org/wikipedia/en/2/29/Count_von_Count_kneeling.png"))
        
        let bigBird = ImaginaryAnimal(name:"Big Bird",
            height: "6.5",
            location: "Sesame Steet",
            dateLastSeen: "2013",
            imageURL:NSURL(string:"https://upload.wikimedia.org/wikipedia/commons/7/73/KUHT_Big_Bird.jpg"))
        
       return [oscar, kermit, theCount, bigBird]
        
    }
    
}