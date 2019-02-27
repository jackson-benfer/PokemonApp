//
//  BookPageViewController.swift
//  PokemonApp
//
//  Created by MAC Consultant on 2/27/19.
//  Copyright © 2019 William Benfer. All rights reserved.
//

import UIKit

class BookPageViewController: UIViewController {

    
    @IBOutlet weak var pageNumberLabel: UILabel!
   
    override func viewDidLoad() {
       // print("Loaded")
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
     //   print("view will appear")
      //  pageNumberLabel.text = String(view.tag)
    }
}
