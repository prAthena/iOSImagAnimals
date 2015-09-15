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
        
        var animalsArray = [ImaginaryAnimal]()
        
        guard let url = NSBundle.mainBundle().URLForResource("Animals", withExtension: "json"),
            let data = NSData(contentsOfURL: url),
            //for productionj app, we would want to catch this error
            let jsonArray = try? NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0)) as? [AnyObject] else{
                //fatalError("Coun't load or parse file")
                print("there was a problem loading the json file")
                return animalsArray
        }
        if let jsonArray:[AnyObject] = jsonArray {
            for animalJson in jsonArray {
                if let animal = ImaginaryAnimal(fromJSON: animalJson)
                {
                    animalsArray.append(animal)
                }
            }
        }
        return animalsArray
    }
    
}