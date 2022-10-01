//
//  logInPageViewController.swift
//  Odev4
//
//  Created by Macbook Pro on 1.10.2022.
//

import UIKit

class homePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let rootVC = navigationController?.viewControllers.first {
                        navigationController?.viewControllers = [rootVC, self]
                    }
    }
    
    @IBAction func goToHomePageButton(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
