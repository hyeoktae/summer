//
//  ThirdViewController.swift
//  UIViewController
//
//  Created by hyeoktae kwon on 26/03/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var name = "Third ViewController"
    var from = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        button.addTarget(self, action: #selector(dismissFirstVC), for: .touchUpInside)
        button.setTitle("1", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(button)
        
        let buttonTo2 = UIButton(type: .system)
        buttonTo2.frame = CGRect(x: 100, y: 200, width: 80, height: 40)
        buttonTo2.addTarget(self, action: #selector(dismissSecondVC), for: .touchUpInside)
        buttonTo2.setTitle("2", for: .normal)
        buttonTo2.setTitleColor(.red, for: .normal)
        buttonTo2.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(buttonTo2)
        
        let buttonToDismiss = UIButton(type: .system)
        buttonToDismiss.frame = CGRect(x: 100, y: 300, width: 80, height: 40)
        buttonToDismiss.addTarget(self, action: #selector(forDismiss), for: .touchUpInside)
        buttonToDismiss.setTitle("dismiss", for: .normal)
        buttonToDismiss.setTitleColor(.red, for: .normal)
        buttonToDismiss.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(buttonToDismiss)
        
        print("this VC from: \(from)")
        
        // Do any additional setup after loading the view.
    }
    
    @objc func forDismiss(){
        presentingViewController?.dismiss(animated: true)
    }
    
    @objc func dismissFirstVC() {
        let firstVC = ViewController()
        firstVC.from = name
        present(firstVC, animated: true)
    }
    
    @objc func dismissSecondVC() {
        let secondVC = SecondViewController()
        secondVC.from = name
        present(secondVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool)    {
        super.viewWillAppear(animated)
        print("---- 3 viewWillAppear ----\n")
        print("this VC from: \(from)")
    }
    override func viewDidAppear(_ animated: Bool)    {
        super.viewDidAppear(animated)
        print("---- 3 viewDidAppear ----\n")
    }
    override func viewDidDisappear(_ animated: Bool)    {
        super.viewDidDisappear(animated)
        print("---- 3 viewDidDisappear ----\n")
    }
    override func viewWillDisappear(_ animated: Bool)    {
        super.viewWillDisappear(animated)
        print("---- 3 viewWillDisappear ----\n")
    }
    
    deinit {
        print("3 Deinit")
    }
    
}


/*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


