//
//  ViewController.swift
//  lampara
//
//  Created by Brayan Quirino on 20/03/21.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usuario: UITextField!
    
    @IBOutlet weak var contrasena: UITextField!
    
    let u = "admin"
    let c = "admin"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: UIButton) {
        if (u == usuario.text && c == contrasena.text){
            UserDefaults.standard.set(true, forKey: "isLogged")
            performSegue(withIdentifier: "oneS", sender: nil)
        }else{
            let alert = UIAlertController(title: "Credenciales Incorrectas", message: "Usuario o password incorecto.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
}

