//
//  ViewController.swift
//  View Controller Mini App
//
//  Created by DANIEL VEGA on 9/22/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var songTextField: UITextField!
    @IBOutlet weak var artistTextField: UITextField!
    
    @IBOutlet var labelOutlet: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toTransfered"{
            let nvc = segue.destination as! transferedViewController
            nvc.song = songTextField.text ?? ""
            nvc.artist = artistTextField.text ?? ""
        }
    }
    @IBAction func transferButtonAction(_ sender: UIButton) {
        performSegue(withIdentifier: "toTransfered", sender: nil)
    }
    
    @IBAction func unwind(_seg: UIStoryboardSegue){
        print("unwinding to first view controller")
        
        if let svc = _seg.source as? transferedViewController {
            labelOutlet = svc.wordTextField.text!
        }
    
        
    }
    
    
}

