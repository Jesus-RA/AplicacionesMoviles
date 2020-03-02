//
//  ViewController.swift
//  Practica6
//
//  Created by Moviles on 22/01/20.
//  Copyright © 2020 Mary. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var cad : String = ""
    @IBOutlet weak var etiqueta : UILabel!
    @IBOutlet weak var cajatexto : UITextView!
    @IBOutlet weak var vistaImagen: UIImageView!
    
    var miGato: Gato?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func crearGato(_ sender: Any) {
        miGato = Gato()
        let r = Int.random(in: 1...6)
        switch r {
        case 1:
            cad = miGato!.crearGato(nombre: "Don Gato", color: "Amarillo", edad: 10)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "DonGato_abril15.jpg")
            etiqueta.text = miGato?.getNombre()
        case 2:
            cad = miGato!.crearGato(nombre: "Benito", color: "Azul", edad: 4)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "benito.jpg")
            etiqueta.text = miGato?.getNombre()
        case 3:
            cad = miGato!.crearGato(nombre: "Cucho", color: "Rosa", edad: 8)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "Cucho.jpg")
            etiqueta.text = miGato?.getNombre()
        case 4:
            cad = miGato!.crearGato(nombre: "Demostenes", color: "Naranja", edad: 7)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "demostenes.jpg")
            etiqueta.text = miGato?.getNombre()
        case 5:
            cad = miGato!.crearGato(nombre: "Panza", color: "Café", edad: 5)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "panza.jpg")
            etiqueta.text = miGato?.getNombre()
            
        default:
            cad = miGato!.crearGato(nombre: "Don Gato", color: "Amarillo", edad: 10)
            cajatexto?.text = cad
            vistaImagen.image = #imageLiteral(resourceName: "DonGato_abril15.jpg")
            etiqueta.text = miGato?.getNombre()
        }
        
    }
    
    @IBAction func jugar(_ sender: Any) {
        if miGato != nil{
            cajatexto?.text = miGato?.jugar()
            etiqueta.text = miGato?.getNombre()
        }
        else{
            cajatexto.text = "Tu gato no ha sido creado"
        }
        
    }
    
    @IBAction func comer(_ sender: Any) {
        if miGato != nil {
            cad = miGato!.comer()
            cajatexto?.text = cad
            etiqueta.text = miGato?.getNombre()
        }
        else{
            cajatexto.text = "Tu gato no ha sido creado"
        }
        
    }
    
    @IBAction func dormir(_ sender: Any) {
        if miGato != nil {
            cad = miGato!.dormir()
            cajatexto?.text = cad
            etiqueta.text = miGato?.getNombre()
        }
        else{
            cajatexto.text = "Tu gato no ha sido creado"
        }
        
    }
    
    @IBAction func despertar(_ sender: Any) {
        if miGato != nil {
            cad = miGato!.despertar()
            cajatexto?.text = cad
            etiqueta.text = miGato?.getNombre()
        }
        else{
            cajatexto.text = "Tu gato no ha sido creado"
        }
        
     
    }
    
    @IBAction func mostrarFicha(_ sender: Any) {
        if miGato != nil{
            cad = (miGato?.mostrarFicha())!
            cajatexto.text = cad
        }
        else{
            cajatexto.text = "Tu gato no ha sido creado"
        }
    }
}

