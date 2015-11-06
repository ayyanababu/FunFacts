//
//  ViewController.swift
//  FunFacts
//
//  Created by Raja Ayyan on 06/10/15.
//  Copyright © 2015 metricstream. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactLabel: UILabel!
    @IBOutlet weak var showFactButton: UIButton!
    
    let funFact = FactBook()
    let colorWheel = ColorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func showFunFact() {
        
        let randomColor = colorWheel.getRandomColor()
        self.view.backgroundColor = randomColor
        self.showFactButton.tintColor = randomColor
        funFactLabel.text = funFact.showRandomFact()
        print(funFact.showRandomFact())
        
        
        
    }

}

