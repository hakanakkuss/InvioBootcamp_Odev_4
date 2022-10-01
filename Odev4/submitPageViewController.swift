//
//  submitPageViewController.swift
//  Odev4
//
//  Created by Macbook Pro on 1.10.2022.
//

import UIKit

class submitPageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func goToHomePageButton(_ sender: Any) {
        performSegue(withIdentifier: "toHomePageViewController", sender: nil)
    }
    
}
