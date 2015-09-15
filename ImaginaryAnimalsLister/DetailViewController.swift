//
//  DetailViewController.swift
//  ImaginaryAnimalsLister
//
//  Created by Alex Garbowitz on 9/14/15.
//  Copyright © 2015 Alex Garbowitz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var animal : ImaginaryAnimal?
    
    @IBOutlet weak var speciesNameLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var dateLastSeenLabel: UILabel!
    @IBOutlet weak var speciesImageView: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let myAnimal = animal
        {
            speciesNameLabel.text = myAnimal.name
            heightLabel.text = myAnimal.height
            locationLabel.text = myAnimal.location
            dateLastSeenLabel.text = myAnimal.dateLastSeen
            
        }

        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(animated: Bool) {
        if let url = animal?.imageURL,
            let imageData = NSData(contentsOfURL: url) {
                self.speciesImageView.image = UIImage(data: imageData)
        }
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
