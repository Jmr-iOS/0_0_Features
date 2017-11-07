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

    
    func optDemo_addButton(view:UIView) {
        
        let button   = UIButton(type: UIButtonType.System) as UIButton;

        button.frame = CGRectMake(100, 100, 100, 50);
        
        button.backgroundColor = UIColor.greenColor()
        
        button.translatesAutoresizingMaskIntoConstraints = false;
        
        button.setTitle("Test Button", forState: UIControlState.Normal);
  
        button.addTarget(self, action: "myButton_response:", forControlEvents:  .TouchUpInside);

        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): Button added");
        
        return;
    }
    

    func makeAMonsterousLabel(view:UIView) {
        
        let myFirstLabel = UILabel();
        let myFirstButton = UIButton();
        
        myFirstLabel.text = "I made a label on the screen #toogood4you";
        myFirstLabel.font = UIFont(name: "MarkerFelt-Thin", size: 45);
        myFirstLabel.textColor = UIColor.redColor();
        myFirstLabel.textAlignment = .Center;
        myFirstLabel.numberOfLines = 5;
        
        myFirstLabel.frame = CGRectMake(15, 54, 300, 500);
        myFirstButton.setTitle("✸", forState: .Normal);
        myFirstButton.setTitleColor(UIColor.blueColor(), forState: .Normal);
        myFirstButton.frame = CGRectMake(15, 200, 300, 500);
        
        myFirstButton.addTarget(self, action: "pressed:", forControlEvents: .TouchUpInside);

        myFirstLabel.translatesAutoresizingMaskIntoConstraints  = false;
        myFirstButton.translatesAutoresizingMaskIntoConstraints = false;
        
        view.addSubview(myFirstLabel);
        view.addSubview(myFirstButton);

        return;
    }
    
    
    func pressed(sender: UIButton!) {
        let alertView = UIAlertView();
        alertView.addButtonWithTitle("Ok");
        alertView.title = "title";
        alertView.message = "message";
        alertView.show();
        
        return;
    }
    
    
    func myButton_response(sender: UIButton!) {

        print("Button Response fired. Game on!");
        
        return;
    }
}



