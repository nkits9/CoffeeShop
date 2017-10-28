//
//  WelcomeVC.swift
//  CoffeeShop
//
//  Created by TuanVi Phan on 10/28/17.
//  Copyright © 2017 TuanVi Phan. All rights reserved.
//

import UIKit

class WelcomeVC: UIViewController {
    let welcomeView = WelcomeView()
    
    //MARK: Lifecycle
    override func loadView() {
        view = welcomeView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeView.signUpButton.tap(signUpTapped)
        welcomeView.skipButton.tap(skipTapped)
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    func signUpTapped(){
        print("signUpTapped")
        let signUpVC = SignUpVC()
        present(signUpVC, animated: true, completion: nil)
    }
    
    func skipTapped() {
        print("skipTapped")
        let signInVC = SignInVC()
        present(signInVC, animated: true, completion: nil)
    }
}