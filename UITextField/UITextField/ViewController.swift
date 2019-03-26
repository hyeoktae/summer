//
//  ViewController.swift
//  UITextField
//
//  Created by hyeoktae kwon on 26/03/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit

var check = 0

class ViewController: UIViewController {
    
    
    @IBOutlet weak var firstTextField: UITextField!
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        firstTextField.becomeFirstResponder() // 이거하면 처음 textfield에 커서 움직이면서 바로 키입력 가능 상태로 만들어준다.
    }
    
    @IBAction func sign(_ sender: UIButton){
//        firstTextField.resignFirstResponder()
        view.endEditing(true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func didEndOnExit(_ sender: Any) {
        print("didEndOnExit")
    }
    
    
    
    
    @IBAction func editingDidBegin(_ sender: UITextField) {
        print("editingDidBegin")
        
        sender.font = UIFont.boldSystemFont(ofSize: 25)
        sender.textAlignment = .center
        
    }
    
//    var tf = ""
    @IBAction func editingChanged(_ sender: UITextField) {
        print("editingChanged")
//        if let abc = sender.text?.count{
//            if abc > 10 {
//
////                UIField.text?.removeLast()
//
//                sender.text = tf
//
//                sender.deleteBackward()
//            }else{
//                tf = sender.text!
//            }
//        }
        
        if sender.text!.contains("?") {
            sender.resignFirstResponder()
        }
        
        switch sender.tag {
        case 0:
            print(0)
        case 1:
            print(1)
        case 2:
            print(2)
        default:
            break
        }
       
        // 1단계: 10글자가 넘었는지 아닌지 판단
        // 2단계: 10글자가 넘으면 입력이 안되도록, 또는 입력이 안된거 처럼 보이도록 구현
    }
    

    
    
    @IBAction func editingDidEnd(_ sender: UITextField) {
        print("editingDidEnd")
        sender.font = UIFont.boldSystemFont(ofSize: 19)
        sender.textAlignment = .left
    }
    
    
    @IBAction func primaryActionTrigger(_ sender: UITextField) {
        print("primaryActionTrigger")
    }
    
    
    
    
    
}

