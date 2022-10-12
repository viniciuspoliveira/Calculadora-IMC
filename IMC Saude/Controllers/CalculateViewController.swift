//
//  ViewController.swift
//  IMC Saude
//
//  Created by Vinicius Pinheiro de Oliveira on 10/10/22.
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
    
    
    @IBAction func alturaSliderChange(_ sender: UISlider) {
        let altura = String(format: "%.2f", sender.value)
        alturaLabel.text = "\(altura)m"
        
    }
    
    
    @IBAction func pesoSliderChange(_ sender: UISlider) {
        let peso = String(format: "%.0f", sender.value)
        pesoLabel.text = "\(peso)kg"
    }
    
    
    @IBAction func calcularPressed(_ sender: UIButton) {
        let altura = alturaSlider.value
        let peso = pesoSlider.value
        
        calculatorBrain.calculateIMC(altura: altura, peso: peso)
        performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult"{
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.imcValue = calculatorBrain.getIMCValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
    

}

