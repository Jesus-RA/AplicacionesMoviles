
import Foundation

class Gato{
    //Atributos
    var nombre = ""
    var color = ""
    var edad = 0
    var estado = false
    var vida = 7
    
    func crearGato(nombre: String, color: String, edad: Int) -> String{
        self.nombre = nombre
        self.color = color
        self.edad = edad
        estado = true
        return "El gato \(getNombre()) ha sido creado..."
    }
    
    //Metodos set y get
    func setNombre(nombre: String){
        self.nombre = nombre
    }
    
    func getNombre() -> String{
        return nombre
    }
    
    func setColor(color: String){
        self.color = color
    }
    
    func getColor() -> String{
        return color
    }
        
    func setEdad(edad: Int){
        self.edad = edad
    }
    
    func getEdad() -> Int{
        return edad
    }
    
    func setEstado(estado: Bool){
        self.estado = estado
    }
    
    func getEstado() -> Bool{
        return estado
    }
    
    func setVida(vida: Int){
        self.vida = vida
    }
    
    func getVida() -> Int{
        return vida
    }
    
    
    //Metodos
    func mostrarFicha() -> String{
        var cadena = "Nombre: \(getNombre()) \nColor: \(self.color)..."
        if self.getVida() > 0{
            if estado == true{
                cadena = cadena + "\nEstado: Despierto"
            }
            else{
                cadena = cadena + "\nEstado: Dormido"
            }
            
        }
        else{
            cadena = cadena + "\nEstado: Muerto"
        }
        return cadena
    }
    
    func jugar() -> String{
        if estado == true{
            if self.getVida() > 0{
                let n = Int.random(in: 1...10)
                if (n % 2 == 0){
                    self.vida = self.vida - 1
                }
            }
            else{
                return "\(self.getNombre()) está muerto"
            }
            
            return "Vida restante = \(self.vida)"
        }
        else{
            return ("\(getNombre()) está dormido")
        }
            
    }
    
    func comer() -> String{
        if self.getVida() > 0{
            if self.estado == true {
                return "\(getNombre()) está comiendo..."
            }
            return "\(getNombre()) está dormido..."
        }
        else{
            return "\(getNombre()) está muerto"
        }
        
    }
    
    func dormir() -> String{
        if self.getVida() > 0{
            if estado == true{
                estado = false
                return "\(getNombre()) ahora está durmiendo..."
            }
            else{
                return "\(getNombre()) ya está durmiendo..."
            }
        }
        else{
            return "\(getNombre()) está muerto"
        }
        
        
    }
    
    func despertar() -> String{
        if self.getVida() > 0{
            if estado != true{
                estado = true
                return "\(getNombre()) se ha despertado.."
            }
            else{
                return "\(getNombre()) ya está despierto..."
            }
        }
        else{
            return "\(getNombre()) está muertado"
        }
        
    }
}
