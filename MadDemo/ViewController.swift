//
//  ViewController.swift
//  MadDemo
//
//  Created by Gareth Waughan on 1/18/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var InnerView: UIView!
    
    var originOutBackgroundColor: UIColor!
    var originInBackgroundColor: UIColor!
    //var textColor: UIColor!
    
    func generateRandomColor() -> UIColor {
        let rValue = CGFloat.random(in: 0...1)
        let gValue = CGFloat.random(in: 0...1)
        let bValue = CGFloat.random(in: 0...1)
        
        let randomColor = UIColor(red: rValue, green: gValue, blue: bValue, alpha: 1.0)
        
        return randomColor
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        originOutBackgroundColor = view.backgroundColor
        
        originInBackgroundColor = InnerView.backgroundColor
    }

    @IBAction func DidTapTextColorButton(_ sender: Any) {
      //  print ("Hello")
        textLabel.textColor = generateRandomColor()
    }
    
    @IBAction func DidTapInViewButton(_ sender: Any) {
        InnerView.backgroundColor = generateRandomColor()
        
    }
    
    @IBAction func DidTapOutViewButton(_ sender: Any) {
        view.backgroundColor = generateRandomColor()
        
    }
    
    @IBAction func didTapTextButton(_ sender: Any) {
        //textLabel.text = "Goodbye!"
        textLabel.text = textField.text
        textField.text = ""
        view.endEditing(true)
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        
        textLabel.textColor = UIColor.blue
        view.backgroundColor = originOutBackgroundColor
        InnerView.backgroundColor = originInBackgroundColor
        textLabel.text = "Hello from Gareth!"
       // textField.text = " "
        
    }
    
}

