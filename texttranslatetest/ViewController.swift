//
//  ViewController.swift
//  texttranslatetest
//
//  Created by gyakkun on 2020/10/20.
//  Copyright © 2020 gyakkun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textBeforetranslated: UITextField!
    
    @IBOutlet weak var textTranslated: UITextField!
    
    @IBAction func onTextEditChanged(_ sender: UITextField) {
        
        var tmpStr = sender.text
     
        tmpStr = tmpStr?.split(separator: " ")
            .map({$0.replacingOccurrences(of: "^.*$", with: "🍕",options: [.regularExpression])})
            .joined(separator: " ")
        
        textTranslated.text = tmpStr
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //textInput.addTarget(self, action: "textFieldDidChange:", forControlEvents: UIControl.Event.EditingChanged)
   
        // Do any additional setup after loading the view.
    }

}

