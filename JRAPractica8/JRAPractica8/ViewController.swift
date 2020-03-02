//
//  ViewController.swift
//  JRAPractica8
//
//  Created by Moviles on 19/02/20.
//  Copyright © 2020 Pistaches. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    var arreglo : [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        arreglo = ["P1", "Practica 2", "Práctica 3", "Practica 4", "Practica 5", "Practica 6", "Práctica 7", "Práctica 8"]
        //arreglo = ["A","B","C"]
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
            return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arreglo.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
        cell.textLabel!.text = self.arreglo[indexPath.row]
        cell.imageView!.image = UIImage(named: "ipdf.png")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let pdfSeleccionado = indexPath.row
        self.performSegue(withIdentifier: "visorPDF", sender: pdfSeleccionado)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        let selection = sender as! Int
        let webViewObjeto: VisorWeb = segue.destination as! VisorWeb
        webViewObjeto.nombreArchivo = self.arreglo[selection]
    }

}

