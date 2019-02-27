//
//  TrainerPageViewController.swift
//  PokemonApp
//
//  Created by MAC Consultant on 2/27/19.
//  Copyright © 2019 William Benfer. All rights reserved.
//


//Assignment: Create 100 page book
//Think about how to not create 100 view controllers

/*
 
 Github Steps:
 
    Create new remote repo in Github
    Locate project in finder
    Copy project to get path
 
 Terminal:
    cd CMD-V
    git init (if needed)
    git add *
    git commit -m "Type your message here"
    git remote add origin PASTE_URL_HERE
    git push -u origin master
 
 GUI:
    SourceTree
 
 */

import UIKit

class TrainerPageViewController: UIPageViewController {

    var trainerNames = ["Will Smith", "Person 1", "Red", "Blue"]
   // var pages = [TrainerSelectViewController]()
    
    var pages = [BookPageViewController]()
    
    let numPages = 100
    
    //var currentIndex = 0
    //TODO: Use tag instead of currentIndex
    
    override func viewDidLoad() {
        super.viewDidLoad()

       // let storyboard = self.storyboard ?? UIStoryboard(name: "Main", bundle: nil)
        
        for i in 0..<3 {
            
            //let vc = storyboard.instantiateViewController(withIdentifier: "TrainerSelectViewController") as! TrainerSelectViewController
            
            //vc.imageView.image = UIImage()//TODO get it from trainer names
       
          //  let vc = UIViewController(nibName: "BookPageViewController", bundle: nil) as! BookPageViewController
            let vc = BookPageViewController(nibName: "BookPageViewController", bundle: nil)
            vc.view.tag = i
            
            vc.pageNumberLabel.text = String(i)
            
            
            
            pages.append(vc)
        }
        self.delegate = self
        self.dataSource = self
        
        self.setViewControllers([pages[1 % 3]], direction: .forward, animated: false, completion: nil)
    }
    
}

extension TrainerPageViewController: UIPageViewControllerDelegate{
    
}

extension TrainerPageViewController: UIPageViewControllerDataSource{
 
   
    func getPage(_ page: Int) -> BookPageViewController?{
        
        
        if page < 1 || page > numPages{
            return nil
        }
        
        let i = page % 3
        
        pages[i].pageNumberLabel.text = String(page)
        pages[i].view.tag = page
        return pages[i]
        
    }
    
    
    //Mandatory Functions
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        
        let page = viewController.view.tag-1
        
        
        return getPage(page)
        
    }
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        
        let page = viewController.view.tag+1
        
        return getPage(page)
    }
    
    //PageControl functionality
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int{
        return 1
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int{
        return 2
    }
}
