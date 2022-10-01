//
//  ViewController.swift
//  Odev4
//
//  Created by Macbook Pro on 30.09.2022.
//

import UIKit
import Lottie


class ViewController: UIViewController {

    var animationView = AnimationView()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.navigationItem.title = "Binance"
        
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = UIColor(named: "AnaRenk")
        appearance.titleTextAttributes = [.foregroundColor:UIColor(named: "YaziRenk1")!,.font:UIFont(name: "Poppins-SemiBold", size: 22)!]
        navigationController?.navigationBar.barStyle = .black //wifi göstergesi pil göstergesi gibi sembollerin renklerini düzenler
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        animationView = .init(name: "crypto")
        animationView.frame = view.bounds
        animationView.frame = CGRect(x: -38, y: -28, width: 500, height: 500)
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.animationSpeed = 0.5
        view.addSubview(animationView)
        animationView.play()
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "VerifyNowViewController" {
//            print("VerifyNowViewController ekranına yapıldı")
//        }
    }
    @IBAction func verifyNowButton(_ sender: Any) {
        print("tıklandı")
    }
    
    @IBAction func skipButton(_ sender: Any) {
        print("skipButton tıklandı")
    }
    
}

