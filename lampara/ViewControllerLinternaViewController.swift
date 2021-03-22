//
//  ViewControllerLinternaViewController.swift
//  lampara
//
//  Created by Brayan Quirino on 20/03/21.
//

import UIKit

class ViewControllerLinternaViewController: UIViewController {
    
    @IBOutlet var vista: UIView!
    @IBOutlet weak var interruptor: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func interruptorAction(_ sender: Any) {
        if (interruptor.tintColor == UIColor.red){
            interruptor.tintColor = UIColor.green
            vista.backgroundColor = UIColor.white
        }else{
            interruptor.tintColor = UIColor.red
            vista.backgroundColor = UIColor.black
        }
    }
    @IBAction func loggout(_ sender: Any) {
    }
    /*

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
