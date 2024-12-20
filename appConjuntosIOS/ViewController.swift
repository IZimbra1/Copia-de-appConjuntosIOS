//
//  ViewController.swift
//  appConjuntosIOS
//
//  Created by Guest User on 11/11/24.
//

import UIKit

class ViewController: UIViewController {

    
    var setA = Set<String>()
    var setB = Set<String>()
    
    @IBOutlet weak var textFieldA: UITextField!
    
    @IBOutlet weak var textFieldB: UITextField!
    
    
    
    @IBOutlet weak var labelResultado: UILabel!
    
    
    @IBOutlet weak var botonAsignarSetA: UIButton!
    
    @IBOutlet weak var botonAsignarSetB: UIButton!
    
    
    
    @IBOutlet weak var botonUnion: UIButton!
    
    
    @IBOutlet weak var botonInterseccion: UIButton!
    
    
    
    @IBOutlet weak var botonSimetrica: UIButton!
    
    
    //agregar widgets para los demas metodos
    
    
    @IBAction func textoSetAChanged(_ sender: UITextField) {
        if !textFieldA.text!.isEmpty{
            botonAsignarSetA.isEnabled = true
        }
    }
    
    @IBAction func botonAsignarSetA(_ sender: UIButton) {
        
        
        if !textFieldA.text!.isEmpty{
            let conjunto:[String]=textFieldA.text!.components(separatedBy: ",")
            setA = Set<String>()
            for valor in conjunto{
                setA.insert(valor)
            }
            textFieldB.isEnabled = true
        }
        
    }
    
    @IBAction func textoSetBChanged(_ sender: UITextField) {
        if !textFieldB.text!.isEmpty{
            botonAsignarSetB.isEnabled = true
        }
    }
    
    
    
    @IBAction func botonAsignarB(_ sender: UIButton) {
        
        if !textFieldB.text!.isEmpty{
            let conjunto:[String]=textFieldB.text!.components(separatedBy: ",")
            setB = Set<String>()
            for valor in conjunto{
                setB.insert(valor)
            }
            botonUnion.isEnabled = true
            botonInterseccion.isEnabled = true
            botonSimetrica.isEnabled = true
        }
    }
    
    //agregar los diferentes metodos para operaciones
    @IBAction func botonUnion(_ sender: Any) {
        
        let unionAB = setA.union(setB).sorted()
        
        labelResultado.text = unionAB.joined(separator: " | ")
    }
    
    
    @IBAction func botonInterseccion(_ sender: Any) {
        let InterseccionAB = setA.intersection(setB).sorted()
        
        labelResultado.text = InterseccionAB.joined(separator: " | ")
        
    }
    
    @IBAction func botonSimetrica(_ sender: Any) {
        
        let SimetricaAB = setA.symmetricDifference(setB).sorted()
        
        labelResultado.text = SimetricaAB.joined(separator: " | ")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

