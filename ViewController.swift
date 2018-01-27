/************************************************************************************************************************************/
/** @file       ViewController.swift
 *  @project    0_0 - Features
 *  @brief      x
 *  @details    x
 *
 *  @author     Justin Reina, Firmware Engineer, Jaostech
 *  @created    1/27/18
 *  @last rev   1/27/18
 *
 *
 *  @notes        x
 *
 *  @section    Opens
 *      none current
 *
 *  @section    Legal Disclaimer
 *      All contents of this source file and/or any other Jaostech related source files are the explicit property of Jaostech
 *      Corporation. Do not distribute. Do not copy.
 */
/************************************************************************************************************************************/
import UIKit


class ViewController: UIViewController {

    
    /********************************************************************************************************************************/
    /** @fcn        override viewDidLoad()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func viewDidLoad() {
        super.viewDidLoad();
        
        self.view.translatesAutoresizingMaskIntoConstraints = false;
        

        self.navigationItem.title = "test";
        self.navigationController?.setNavigationBarHidden(false, animated: true);
        
        print("ViewController.viewDidLoad():       viewDidLoad() complete");
        
        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        override didReceiveMemoryWarning()
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning();

        return;
    }

    
    /********************************************************************************************************************************/
    /** @fcn        optDemo_addButton(_ view:UIView)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    func optDemo_addButton(_ view:UIView) {
        
        let button   = UIButton(type: UIButtonType.system) as UIButton;

        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50);
        
        button.backgroundColor = UIColor.green
        
        button.translatesAutoresizingMaskIntoConstraints = false;
        
        button.setTitle("Test Button", for: UIControlState());
  
        button.addTarget(self, action: #selector(ViewController.myButton_response(_:)), for:  .touchUpInside);

        view.addSubview(button);
        
        print("ViewController.optDemo_addButton(): button added");
        
        return;
    }
    

    /********************************************************************************************************************************/
    /** @fcn        makeAMonsterousLabel(_ view:UIView)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
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
    
    
    /********************************************************************************************************************************/
    /** @fcn        @objc pressed(_ sender: UIButton!)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    @objc func pressed(_ sender: UIButton!) {
        print("ViewController.pressed():           myFirstButton was pressed");
        return;
    }
    
    
    /********************************************************************************************************************************/
    /** @fcn        @objc myButton_response(_ sender: UIButton!)
     *  @brief      x
     *  @details    x
     */
    /********************************************************************************************************************************/
    @objc func myButton_response(_ sender: UIButton!) {
        print("ViewController.myButton_response(): button Response fired. Game on!");
        return;
    }
}



