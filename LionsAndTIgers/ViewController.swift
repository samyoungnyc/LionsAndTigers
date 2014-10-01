//
//  ViewController.swift
//  LionsAndTIgers
//
//  Created by Computer on 10/1/14.
//  Copyright (c) 2014 Computer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Shere Khan"
        myTiger.breed = "Siberian Tiger"
        myTiger.age = 17
        myTiger.image = UIImage(named:"SiberianTiger.jpg")
        
        myTigers.append(myTiger)
        
        println("My tiger's name is \(myTiger.name). His breed is \(myTiger.breed), and his image is \(myTiger.image).")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigris"
        secondTiger.breed = "Bengal Tiger"
        secondTiger.age = 5
        secondTiger.image = UIImage(named: "BengalTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Killa"
        thirdTiger.breed = "Indochinese Tiger"
        thirdTiger.age = 9
        thirdTiger.image = UIImage(named:"IndochineseTiger.jpg")
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Mali"
        fourthTiger.breed = "Malay Tiger"
        fourthTiger.age = 4
        fourthTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        println("\(myTigers)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
    }
}

