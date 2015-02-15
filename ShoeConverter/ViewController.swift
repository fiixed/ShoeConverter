//
//  ViewController.swift
//  ShoeConverter
//
//  Created by Andrew Bell on 2/15/15.
//  Copyright (c) 2015 FiixedMobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    
    @IBOutlet weak var womens: UITextField!
  

    @IBOutlet weak var wLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButtonPressed(sender: UIButton) {

        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        
        mensConvertedShoeSizeLabel.hidden = false
        
        
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        
    }
    
    @IBAction func womensConvertButtonPressed(sender: UIButton) {
        
        let sizeFromTextField = Double((womens.text as NSString).doubleValue)
        let conversionConstant = 30.5
    
        wLabel.hidden = false
        
        wLabel.text = "\(sizeFromTextField + conversionConstant) in European Shoe Size"
    }
    

}

