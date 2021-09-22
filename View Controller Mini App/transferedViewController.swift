//
//  transferedViewController.swift
//  View Controller Mini App
//
//  Created by DANIEL VEGA on 9/22/21.
//

import UIKit

class transferedViewController: UIViewController {

var song = ""
var artist = ""
    
@IBOutlet weak var songOutlet: UILabel!
@IBOutlet weak var artistOutlet: UILabel!
    
@IBOutlet weak var wordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        songOutlet.text = "Song: \(song)"
        artistOutlet.text = "Artist: \(artist)"
        
    }

   
}
