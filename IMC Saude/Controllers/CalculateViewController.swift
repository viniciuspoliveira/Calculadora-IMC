//
//  ViewController.swift
//  IMC Saude
//
//  Created by Vinicius Pinheiro de Oliveira on 09/10/22.
//

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet weak var alturaLabel: UILabel!
    @IBOutlet weak var pesoLabel: UILabel!
    @IBOutlet weak var alturaSlider: UISlider!
    @IBOutlet weak var pesoSlider: UISlider!
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func alturaSliderMudar(_ sender: UISlider) {
        let altura = String(format: "%.2f", sender.value)
        alturaLabel.text = "\(altura)m"
        
    }
    
    
    
    @IBAction func pesoSliderMudar(_ sender: UISlider) {
        let peso = String(format: "%.0f", sender.value)
        pesoLabel.text = "\(peso)kg"
        
    }
    
    
    @IBAction func calcularBotao(_ sender: UIButton) {
        let alura = alturaSlider.value
        let peso = pesoSlider.value
        
        calculatorBrain.calculateICM(altura: altura, peso: peso)
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmivalue = calcul
        }
    }
    
    
}

