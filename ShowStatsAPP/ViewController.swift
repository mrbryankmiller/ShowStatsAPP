//
//  ViewController.swift
//  ShowStatsAPP
//
//  Created by Bryan  Miller on 7/31/16.
//  Copyright © 2016 Bryan  Miller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    

    
    @IBOutlet weak var characterLabel: UILabel!
    
    
    
    @IBOutlet weak var vowelsLabel: UILabel!
    

    
    
    @IBOutlet weak var wordsLabel: UILabel!
    
    
    @IBAction func showStatsPressed(sender: UIButton) {
        
        let numberOfCharacters = Int ((characterLabel.text?.characters.count)!)
        
        var numberOfWords: Int = 0
        
        var numberOFVowels: Int = 0
        
        
        print(numberOfCharacters)
        
        //assign to string
        
        characterLabel.text = String (nameTextField.text!.characters.count)
        
        
        
        for character in (nameTextField.text?.characters)! {
            print (character)
            
            if character == " " {
             numberOfWords += 1
            }
    
            
            wordsLabel.text = String (numberOfWords)
            
        }
    
        for vowel in (nameTextField.text?.characters)!{
            print (vowel)
            
            if vowel == "a" || vowel == "e" || vowel == "i" || vowel == "o" || vowel == "u" {
                
                numberOFVowels+=1
                
                
            }
            
            vowelsLabel.text = String (numberOFVowels)
            
        }
        
        
     
        
    
        
    
        
        
    
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

