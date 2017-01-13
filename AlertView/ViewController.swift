//
//  ViewController.swift
//  AlertView
//
//  Created by Shrawan Shinde on 13/01/17.
//  Copyright © 2017 Shrawan Shinde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var firstButton = UIButton()
     var secondButton = UIButton()
     var thirdButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //simple UIButton in swift
        firstButton.setTitle("Alert With One Button", for: .normal)
        firstButton.backgroundColor = .clear
        firstButton.layer.cornerRadius = 5
        firstButton.layer.borderWidth = 1
        firstButton.layer.borderColor = UIColor.black.cgColor
        firstButton.setTitleColor(UIColor.black, for: .normal)
        firstButton.frame = CGRect(x: 10, y: 50, width: 200, height: 50)
        firstButton.addTarget(self, action: #selector(self.firstButtonTapped), for: .touchUpInside)
        
        
        secondButton.setTitle("Alert With two Button", for: .normal)
        secondButton.backgroundColor = .clear
        secondButton.layer.cornerRadius = 5
        secondButton.layer.borderWidth = 1
        secondButton.layer.borderColor = UIColor.black.cgColor
        secondButton.setTitleColor(UIColor.black, for: .normal)
        secondButton.frame = CGRect(x: 10, y: 110, width: 200, height: 50)
        secondButton.addTarget(self, action: #selector(self.secondButtonTapped), for: .touchUpInside)
        
        
        thirdButton.setTitle("Alert With three Button", for: .normal)
        thirdButton.backgroundColor = .clear
        thirdButton.layer.cornerRadius = 5
        thirdButton.layer.borderWidth = 1
        thirdButton.layer.borderColor = UIColor.black.cgColor
        thirdButton.setTitleColor(UIColor.black, for: .normal)
        thirdButton.frame = CGRect(x: 10, y: 170, width: 200, height: 50)
        thirdButton.addTarget(self, action: #selector(self.thirdButtonTapped), for: .touchUpInside)
        
        
        self.view.addSubview(firstButton)
        self.view.addSubview(secondButton)
        self.view.addSubview(thirdButton)
    }
    
    
    func firstButtonTapped(sender : UIButton) {
        //Alertview code here
        var alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "Alert";
        alertView.message = "Alert with One button";
        alertView.show();
    }
    
    
    func secondButtonTapped(sender : UIButton) {
        //Write button action here
        // create the alert
        let alert = UIAlertController(title: "Alert With two button", message: "Your custom message here....", preferredStyle: UIAlertControllerStyle.alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "CANCEL", style: UIAlertActionStyle.cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func thirdButtonTapped(sender : UIButton) {
        //Alertview code here
        // create the alert
        let alert = UIAlertController(title: "Alert Title", message: "Custom message here", preferredStyle: UIAlertControllerStyle.alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Share on Facebook", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Share on WhatsApp", style: UIAlertActionStyle.cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Share on twitter", style: UIAlertActionStyle.destructive, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

