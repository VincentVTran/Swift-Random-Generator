//
//  ViewController.swift
//  Application
//
//  Created by Vincent Tran on 11/9/18.
//  Copyright © 2018 Vincent Tran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Image1: UIImageView!
    @IBOutlet weak var ranNum: UILabel!
    @IBOutlet weak var Input1: UITextField!
    @IBOutlet weak var Input2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Input1.keyboardType = UIKeyboardType.numberPad
        Input2.keyboardType = UIKeyboardType.numberPad
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:))))
        prints()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func prints() {
        print("Hello")
    }
    @IBAction func Button(_ sender: Any) {
        //:Image1.image = UIImage(named: "IMG_0093"
        let Upper = UInt32(Input1.text!)
        let Lower = UInt32(Input2.text!)
        let randomNum = arc4random_uniform(Upper!)+Lower!
        ranNum.text = "\(randomNum)"
        
    }
    
}

