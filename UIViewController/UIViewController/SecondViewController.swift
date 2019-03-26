//
//  SecondViewController.swift
//  UIViewController
//
//  Created by hyeoktae kwon on 26/03/2019.
//  Copyright © 2019 hyeoktae kwon. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var name = "Second ViewController"
    var from = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        print("---- Second viewDidLoad ----\n")
        view.backgroundColor = .green
        
        let button = UIButton(type: .system)
        button.frame = CGRect(x: 100, y: 100, width: 80, height: 40)
        button.addTarget(self, action: #selector(dismissFirstVC), for: .touchUpInside)
        button.setTitle("1", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 20)
        view.addSubview(button)
        
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
        
        
        
    }
    
    @objc func forDismiss(){
        presentingViewController?.dismiss(animated: true)
    }
//    presentingViewController?.dismiss(animated: true)
    @objc func dismissFirstVC() {
        let VC = ViewController()
        VC.from = name
        present(VC, animated: true)
    }
    
    @objc func presentThirdVC() {
        let thirdVC = ThirdViewController()
        thirdVC.from = name
        present(thirdVC, animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool)    {
        super.viewWillAppear(animated)
        print("---- Second viewWillAppear ----\n")
        print("this VC from: \(from)")
    }
    override func viewDidAppear(_ animated: Bool)    {
        super.viewDidAppear(animated)
        print("---- Second viewDidAppear ----\n")
    }
    override func viewDidDisappear(_ animated: Bool)    {
        super.viewDidDisappear(animated)
        print("---- Second viewDidDisappear ----\n")
    }
    override func viewWillDisappear(_ animated: Bool)    {
        super.viewWillDisappear(animated)
        print("---- Second viewWillDisappear ----\n")
    }
    
    deinit {
        print("Second Deinit")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
