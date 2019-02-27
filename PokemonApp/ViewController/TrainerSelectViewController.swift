//
//  TrainerSelectViewController.swift
//  PokemonApp
//
//  Created by MAC Consultant on 2/27/19.
//  Copyright © 2019 William Benfer. All rights reserved.
//

import UIKit

class TrainerSelectViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    weak var delegate: TrainerPageViewController?
    
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = image
        imageView.backgroundColor = UIColor.green//TODO: Temp

    }
    

    @IBAction func onSelectTrainer(_ sender: Any) {
    }
}
