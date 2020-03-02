//
//  ViewController.swift
//  practica4
//
//  Created by Moviles on 15/01/20.
//  Copyright © 2020 Moviles. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var nombre: UILabel!
    @IBOutlet weak var nameTxt: UITextField!
    
    var player = AVAudioPlayer()
    
    @IBAction func maullar(_ sender: Any) {
        if nameTxt.text == "" {
            let alert = UIAlertController(title: "Alerta", message: "No tengo nombre", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Aceptar", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            let audioFileURL = Bundle.main.url(forResource: "cat", withExtension: "mp3")
            do{
                try player = AVAudioPlayer(contentsOf: audioFileURL!)
            }
            catch let error{
                print(error.localizedDescription)
            }
            player.play()
        }
       
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

