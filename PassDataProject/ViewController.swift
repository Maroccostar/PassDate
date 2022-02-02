//
//  ViewController.swift
//  PassDataProject
//
//  Created by user on 30.01.2022.
//
// проверка git
import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var LoginTF: UITextField!
    
    @IBOutlet weak var passwordTF: UITextField!
    
    
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    @IBAction func loginTapped(_ sender: UIButton) {
        
            performSegue(withIdentifier: "detailSegue", sender: nil)
    }
    
    @IBAction func unwindSegueToMainScreen (segue: UIStoryboardSegue) {
        guard segue.identifier == "unwingSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return  }
        self.resultLabel.text =  svc.label.text
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)// сворачивание клавиатуры
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SecondViewController else { return }
        dvc.login = LoginTF.text
    }
    
}

// 2 view controller +
