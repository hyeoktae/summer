//
//  ViewController.swift
//  UIViewController
//
//  Created by hyeoktae kwon on 26/03/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var data = 1
    
    var name = "First ViewController"
    var from = "basic"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("---- viewDidLoad ----\n")
        view.backgroundColor = .blue
        let buttonTo2 = UIButton(type: .system)
        buttonTo2.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        buttonTo2.addTarget(self, action: #selector(presentSecondVC), for: .touchUpInside)
        buttonTo2.setTitle("2", for: .normal)
        buttonTo2.setTitleColor(.red, for: .normal)
        buttonTo2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(buttonTo2)
        
        let buttonTo3 = UIButton(type: .system)
        buttonTo3.frame = CGRect(x: 100, y: 200, width: 80, height: 40)
        buttonTo3.addTarget(self, action: #selector(presentThirdVC), for: .touchUpInside)
        buttonTo3.setTitle("3", for: .normal)
        buttonTo3.setTitleColor(.red, for: .normal)
        buttonTo3.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(buttonTo3)
        
        let buttonToDismiss = UIButton(type: .system)
        buttonToDismiss.frame = CGRect(x: 100, y: 300, width: 80, height: 40)
        buttonToDismiss.addTarget(self, action: #selector(forDismiss), for: .touchUpInside)
        buttonToDismiss.setTitle("dismiss", for: .normal)
        buttonToDismiss.setTitleColor(.red, for: .normal)
        buttonToDismiss.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(buttonToDismiss)
        
        print("this VC from: \(from)")
        
    }
    
    @objc func forDismiss(){
        presentingViewController?.dismiss(animated: true)
    }
    
    @objc func presentSecondVC() {
        let secondVC = SecondViewController()
        secondVC.from = name
        present(secondVC, animated: true)
        
    }
    
    @objc func presentThirdVC() {
        let thirdVC = ThirdViewController()
        thirdVC.from = name
        present(thirdVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool)    {
        super.viewWillAppear(animated)
        print("---- viewWillAppear ----\n")
        print("this VC from: \(from)")
    }
    override func viewDidAppear(_ animated: Bool)    {
        super.viewDidAppear(animated)
        print("---- viewDidAppear ----\n")
        
    }
    override func viewDidDisappear(_ animated: Bool)    {
        super.viewDidDisappear(animated)
        print("---- viewDidDisappear ----\n")
        
    }
    override func viewWillDisappear(_ animated: Bool)    {
        super.viewWillDisappear(animated)
        print("---- viewWillDisappear ----\n")
    }
    
    deinit {
        print("First Deinit")
    }
    
}

