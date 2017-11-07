//
//  ViewController.swift
//  0_0 - Empty Template (Swift)
//
//  Created by Justin Reina on 11/12/15.
//  Copyright © 2015 Jaostech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        

        self.navigationItem.title = "test";
        self.navigationController?.setNavigationBarHidden(false, animated: true);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }

    
    func optDemo_addButton(_ view:UIView) {
        
        let button   = UIButton(type: UIButtonType.system) as UIButton;

        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50);
        
        button.backgroundColor = UIColor.green
        
        button.translatesAutoresizingMaskIntoConstraints = false;
        
        button.setTitle("Test Button", for: UIControlState());
  
        button.addTarget(self, action: #selector(ViewController.myButton_response(_:)), for:  .touchUpInside);

        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): Button added");
        
        return;
    }
    

    func makeAMonsterousLabel(_ view:UIView) {
        
        let myFirstLabel = UILabel();
        let myFirstButton = UIButton();
        
        myFirstLabel.text = "I made a label on the screen #toogood4you";
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor = UIColor.red;
        myFirstLabel.textAlignment = .center;
        myFirstLabel.numberOfLines = 5;
        
        myFirstLabel.frame = CGRect(x: 15, y: 54, width: 300, height: 500);
        myFirstButton.setTitle("✸", for: UIControlState());
        myFirstButton.setTitleColor(UIColor.blue, for: UIControlState());
        myFirstButton.frame = CGRect(x: 15, y: 200, width: 300, height: 500);
        
        myFirstButton.addTarget(self, action: #selector(ViewController.pressed(_:)), for: .touchUpInside);

        myFirstLabel.translatesAutoresizingMaskIntoConstraints  = false;
        myFirstButton.translatesAutoresizingMaskIntoConstraints = false;
        
        view.addSubview(myFirstLabel);
        view.addSubview(myFirstButton);

        return;
    }
    
    
    func pressed(_ sender: UIButton!) {
        let alertView = UIAlertView();
        alertView.addButton(withTitle: "Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
        
        return;
    }
    
    
    func myButton_response(_ sender: UIButton!) {

        print("Button Response fired. Game on!");
        
        return;
    }
}



