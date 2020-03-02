import UIKit

class ViewController: UIViewController {

    
    //Mis variables
    
    @IBOutlet weak var b1 :UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    @IBOutlet weak var b13: UIButton!
    @IBOutlet weak var b14: UIButton!
    @IBOutlet weak var b15: UIButton!
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var moves: UILabel!
    
    var matriz : [[String]] = [["1","2","3","4"],
                          ["5","6","7","8"],
                          ["9","10","11","12"],
                          ["13","14","15"," "]]
    var miTaken = Taken()
    
    //miTaken = Taken()

    override func viewDidLoad() {
        super.viewDidLoad()
        matriz = miTaken.getTablero()
       b1.setTitle(String(matriz[0][0]), for: UIControl.State.normal)
       b2.setTitle(String(matriz[0][1]), for: UIControl.State.normal)
       b3.setTitle(String(matriz[0][2]), for: UIControl.State.normal)
       b4.setTitle(String(matriz[0][3]), for: UIControl.State.normal)
       b5.setTitle(String(matriz[1][0]), for: UIControl.State.normal)
       b6.setTitle(String(matriz[1][1]), for: UIControl.State.normal)
       b7.setTitle(String(matriz[1][2]), for: UIControl.State.normal)
       b8.setTitle(String(matriz[1][3]), for: UIControl.State.normal)
       b9.setTitle(String(matriz[2][0]), for: UIControl.State.normal)
       b10.setTitle(String(matriz[2][1]), for: UIControl.State.normal)
       b11.setTitle(String(matriz[2][2]), for: UIControl.State.normal)
       b12.setTitle(String(matriz[2][3]), for: UIControl.State.normal)
       b13.setTitle(String(matriz[3][0]), for: UIControl.State.normal)
       b14.setTitle(String(matriz[3][1]), for: UIControl.State.normal)
       b15.setTitle(String(matriz[3][2]), for: UIControl.State.normal)
       b0.setTitle(String(matriz[3][3]), for: UIControl.State.normal)
        //miTaken = Taken()
        moves.text = "" + String(miTaken.getMovimientos())
        
        // Do any additional setup after loading the view.
    }
    
    func gane(){
        if(miTaken.verificarTablero()){
            showAlert()
            b1.isEnabled = false
            b2.isEnabled = false
            b3.isEnabled = false
            b4.isEnabled = false
            b5.isEnabled = false
            b6.isEnabled = false
            b7.isEnabled = false
            b8.isEnabled = false
            b9.isEnabled = false
            b10.isEnabled = false
            b11.isEnabled = false
            b12.isEnabled = false
            b13.isEnabled = false
            b14.isEnabled = false
            b15.isEnabled = false
            b0.isEnabled = false
           
        }

    }
  

    
    @IBAction func reiniciar(_ sender: UIButton) {
        miTaken.reiniciar()
        matriz = miTaken.getTablero()
        b1.setTitle(String(matriz[0][0]), for: UIControl.State.normal)
        b2.setTitle(String(matriz[0][1]), for: UIControl.State.normal)
        b3.setTitle(String(matriz[0][2]), for: UIControl.State.normal)
        b4.setTitle(String(matriz[0][3]), for: UIControl.State.normal)
        b5.setTitle(String(matriz[1][0]), for: UIControl.State.normal)
        b6.setTitle(String(matriz[1][1]), for: UIControl.State.normal)
        b7.setTitle(String(matriz[1][2]), for: UIControl.State.normal)
        b8.setTitle(String(matriz[1][3]), for: UIControl.State.normal)
        b9.setTitle(String(matriz[2][0]), for: UIControl.State.normal)
        b10.setTitle(String(matriz[2][1]), for: UIControl.State.normal)
        b11.setTitle(String(matriz[2][2]), for: UIControl.State.normal)
        b12.setTitle(String(matriz[2][3]), for: UIControl.State.normal)
        b13.setTitle(String(matriz[3][0]), for: UIControl.State.normal)
        b14.setTitle(String(matriz[3][1]), for: UIControl.State.normal)
        b15.setTitle(String(matriz[3][2]), for: UIControl.State.normal)
        b0.setTitle(String(matriz[3][3]), for: UIControl.State.normal)
        b1.isEnabled = true
      b2.isEnabled = true
      b3.isEnabled = true
      b4.isEnabled = true
      b5.isEnabled = true
      b6.isEnabled = true
      b7.isEnabled = true
      b8.isEnabled = true
      b9.isEnabled = true
      b10.isEnabled = true
      b11.isEnabled = true
      b12.isEnabled = true
      b13.isEnabled = true
      b14.isEnabled = true
      b15.isEnabled = true
      b0.isEnabled = true
        miTaken.setMovimientos(mov: 0)
        moves.text = "" + String(miTaken.getMovimientos())

    }
    
    func showAlert(){
        let alert = UIAlertController(title: nil, message: "Has ganado!", preferredStyle: .alert)
        let aceptar = UIAlertAction(title: "Aceptar", style: .default)
        alert.addAction(aceptar)
        self.present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func boton1(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 0, y: 0)
        if(c.a == 0 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b2.setTitle(cad, for: UIControl.State.normal)
            b1.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b5.setTitle(cad, for: UIControl.State.normal)
            b1.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton2(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 0, y: 1)
        if(c.a == 0 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b1.setTitle(cad, for: UIControl.State.normal)
            b2.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b6.setTitle(cad, for: UIControl.State.normal)
            b2.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 0 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b3.setTitle(cad, for: UIControl.State.normal)
            b2.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton3(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 0, y: 2)
        if(c.a == 0 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b2.setTitle(cad, for: UIControl.State.normal)
            b3.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b7.setTitle(cad, for: UIControl.State.normal)
            b3.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 0 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b4.setTitle(cad, for: UIControl.State.normal)
            b3.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton4(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 0, y: 3)
        if(c.a == 0 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b3.setTitle(cad, for: UIControl.State.normal)
            b4.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b8.setTitle(cad, for: UIControl.State.normal)
            b4.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton5(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 1, y: 0)
        if(c.a == 0 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b1.setTitle(cad, for: UIControl.State.normal)
            b5.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b6.setTitle(cad, for: UIControl.State.normal)
            b5.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b9.setTitle(cad, for: UIControl.State.normal)
            b5.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton6(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 1, y: 1)
        if(c.a == 0 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b2.setTitle(cad, for: UIControl.State.normal)
            b6.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b5.setTitle(cad, for: UIControl.State.normal)
            b6.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b10.setTitle(cad, for: UIControl.State.normal)
            b6.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b7.setTitle(cad, for: UIControl.State.normal)
            b6.setTitle(miTaken.tablero[1][1], for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton7(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 1, y: 2)
        if(c.a == 1 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b6.setTitle(cad, for: UIControl.State.normal)
            b7.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 0 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b3.setTitle(cad, for: UIControl.State.normal)
            b7.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b11.setTitle(cad, for: UIControl.State.normal)
            b7.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b8.setTitle(cad, for: UIControl.State.normal)
            b7.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton8(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 1, y: 3)
        if(c.a == 0 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b4.setTitle(cad, for: UIControl.State.normal)
            b8.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 1 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b7.setTitle(cad, for: UIControl.State.normal)
            b8.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b12.setTitle(cad, for: UIControl.State.normal)
            b8.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton9(_ sender: Any) {
        var cad : String
       let c = miTaken.moverTecla(x: 2, y: 0)
        if(c.a == 1 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b5.setTitle(cad, for: UIControl.State.normal)
            b9.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b10.setTitle(cad, for: UIControl.State.normal)
            b9.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b13.setTitle(cad, for: UIControl.State.normal)
            b9.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton10(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 2, y: 1)
        if(c.a == 1 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b6.setTitle(cad, for: UIControl.State.normal)
            b10.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b9.setTitle(cad, for: UIControl.State.normal)
            b10.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b14.setTitle(cad, for: UIControl.State.normal)
            b10.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b11.setTitle(cad, for: UIControl.State.normal)
            b10.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton11(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 2, y: 2)
        if(c.a == 1 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b7.setTitle(cad, for: UIControl.State.normal)
            b11.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b10.setTitle(cad, for: UIControl.State.normal)
            b11.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b15.setTitle(cad, for: UIControl.State.normal)
            b11.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b12.setTitle(cad, for: UIControl.State.normal)
            b11.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton12(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 2, y: 3)
        if(c.a == 1 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b8.setTitle(cad, for: UIControl.State.normal)
            b12.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b11.setTitle(cad, for: UIControl.State.normal)
            b12.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b0.setTitle(cad, for: UIControl.State.normal)
            b12.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton13(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 3, y: 0)
        if(c.a == 2 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b9.setTitle(cad, for: UIControl.State.normal)
            b13.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b14.setTitle(cad, for: UIControl.State.normal)
            b13.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton14(_ sender: Any) {
        var cad : String
        let c = miTaken.moverTecla(x: 3, y: 1)
        if(c.a == 3 && c.b == 0){
            cad = miTaken.tablero[c.a][c.b]
            b13.setTitle(cad, for: UIControl.State.normal)
            b14.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 2 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b10.setTitle(cad, for: UIControl.State.normal)
            b14.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        if(c.a == 3 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b15.setTitle(cad, for: UIControl.State.normal)
            b14.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
    
    @IBAction func boton15(_ sender: Any) {
        let c = miTaken.moverTecla(x: 3, y: 2)
        var cad : String
        if(c.a == 3 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b0.setTitle(cad, for: UIControl.State.normal)
            b15.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
            
        }
        if(c.a == 3 && c.b == 1){
            cad = miTaken.tablero[c.a][c.b]
            b14.setTitle(cad, for: UIControl.State.normal)
            b15.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
            
        }
        if(c.a == 2 && c.b == 2){
            cad = miTaken.tablero[c.a][c.b]
            b11.setTitle(cad, for: UIControl.State.normal)
            b15.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
            
        }
        gane()
        //Debemos de ver como cambiar al boton el texto
    }
    
    @IBAction func boton0(_ sender: Any) {
       let c = miTaken.moverTecla(x: 3, y: 3)
       var cad : String
       if(c.a == 2 && c.b == 3){
            cad = miTaken.tablero[c.a][c.b]
            b12.setTitle(cad, for: UIControl.State.normal)
            b0.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
       }
        if(c.a == 3 && c.b == 2){
             cad = miTaken.tablero[c.a][c.b]
             b15.setTitle(cad, for: UIControl.State.normal)
             b0.setTitle(" ", for: UIControl.State.normal)
            miTaken.incMov()
            moves.text = "" + String(miTaken.getMovimientos())
        }
        gane()
    }
 
}

