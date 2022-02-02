//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by user on 30.01.2022.
//

import UIKit

class SecondViewController: UIViewController {

    var login: String?
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = self.login else { return }// важно где размещаешь методы
        label.text = "Hello, \(login)"
    }
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwingSegue", sender: nil)
    }
    
}
