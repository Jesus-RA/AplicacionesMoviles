import Foundation

class Taken{
    var tablero : [[String]] = [[]]
    var movimientos : Int
    
    init(){
        self.tablero = [ ["1", "2", "3", "4"],
                    ["5", "6", "7", "8"],
                    ["9", "10", "11", "12"],
                    ["13", "14", "15", " "] ]
        /*self.tablero = [["1","5","9","13"],["2","6","10","14"],["3","7","11","15"],["4","8"," ","12"]]*/
        
        self.movimientos = 0
    }
    
    func verificarTablero()->Bool{
        if(self.tablero == [["1","5","9","13"],["2","6","10","14"],["3","7","11","15"],["4","8","12"," "]] || self.tablero == [["7","8","9","10"],["6","1","2","11"],["5","4","3","12"],[" ","15","14","13"]] || self.tablero == [["1","2","3","4"],["12","13","14","5"],["11"," ","15","6"],["10","9","8","7"]] || self.tablero == [["15","14","13","12"],["11","10","9","8"],["7","6","5","4"],["3","2","1"," "]]){
            return true
        }
        return false
    }
    
    func change(x: Int, y: Int, xPassed: Int, yPassed: Int){
        self.tablero[xPassed][yPassed] = self.tablero[x][y]
        self.tablero[x][y] = " "
    }
    
    func reiniciar(){
        self.tablero = [ ["1", "2", "3", "4"],
               ["5", "6", "7", "8"],
               ["9", "10", "11", "12"],
               ["13", "14", "15", " "] ]
    }
    
    
    func moverTecla(x: Int, y : Int)->(a : Int, b : Int){
            var yPassed = y
            var xPassed = x
            var a : Int = -1
            var b : Int = -1
            //checar arriba
            if(x != 0){
                xPassed = x - 1
                if (self.tablero[xPassed][yPassed] == " "){
                    print("cambio hacia arriba en \(xPassed) y \(yPassed)")
                     //change(x:x,y:y,xPassed:xPassed,yPassed:yPassed)
                    self.tablero[xPassed][yPassed] = self.tablero[x][y]
                    self.tablero[x][y] = " "
                    a = xPassed
                    b = yPassed
                }
                xPassed += 1
               
                //return (self.tablero[x][y],"0")
            }
            //checar abajo
            if(x != 3){
                xPassed = x + 1
                if (self.tablero[xPassed][yPassed] == " "){
                    print("cambio")
                        print("cambio hacia abajo en \(xPassed) y \(yPassed)")
                   //change(x:x,y:y,xPassed:xPassed,yPassed:yPassed)
                    self.tablero[xPassed][yPassed] = self.tablero[x][y]
                    self.tablero[x][y] = " "
                    a = xPassed
                    b = yPassed
                }
                xPassed -= 1
                
                //return (self.tablero[x][y],"0")
            }
            //checar izquierda
            if(y != 0){
                yPassed = y - 1
                if (self.tablero[xPassed][yPassed] == " "){
                    print("cambio hacia la izquierda en \(xPassed) y \(yPassed)")
                     //change(x:x,y:y,xPassed:xPassed,yPassed:yPassed)
                    self.tablero[xPassed][yPassed] = self.tablero[x][y]
                    self.tablero[x][y] = " "
                    a = xPassed
                    b = yPassed
                }
                yPassed += 1
                
                //return (self.tablero[x][y],"0")
            }
            //checar derecha
            if(y != 3){
                yPassed = y + 1
                if (self.tablero[xPassed][yPassed] == " "){
                    print("cambio")
                        print("cambio hacia la derecha en \(xPassed) y \(yPassed)")
                    //change(x:x,y:y,xPassed:xPassed,yPassed:yPassed)
                    self.tablero[xPassed][yPassed] = self.tablero[x][y]
                    self.tablero[x][y] = " "
                    a = xPassed
                    b = yPassed
                }
                 yPassed -= 1
                //return (self.tablero[x][y],"0")
            }
            //checarVictoria()
        print(a,b)
        return (a,b)
    }
    
    func incMov(){
        self.movimientos = self.movimientos + 1
    }
    
    func getMovimientos()->Int{
        return self.movimientos
    }
    
    func setMovimientos(mov : Int){
        self.movimientos = mov
    }
    
    func getTablero()->[[String]]{
        return self.tablero
    }
    
    func setTablero(tablero : [[String]]){
        self.tablero = tablero
    }
}
