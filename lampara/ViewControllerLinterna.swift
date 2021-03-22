//
//  ViewControllerLinterna.swift
//  lampara
//
//  Created by Brayan Quirino on 20/03/21.
//

import UIKit

class ViewControllerLinterna: UIViewController {

    @IBOutlet weak var interruptor: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func interruptor(_ sender: Any) {
        //print(interruptor.tintColor as Any)
        if (self.view.backgroundColor == .black){
            interruptor.tintColor = .green
            self.view.backgroundColor = .white
        }else{
            interruptor.tintColor = .red
            self.view.backgroundColor = .black
        }
    }
    
    @IBAction func loggout(_ sender: Any) {
        UserDefaults.standard.set(false, forKey: "isLogged")
        goToLogin()
    }
    func goToLogin(){
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "login") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true, completion: nil)
    }
}
