//
//  CalculatorBrain.swift
//  IMC Saude
//
//  Created by Vinicius Pinheiro de Oliveira on 10/10/22.
//

import UIKit

struct CalculatorBrain{
    
    var imc: IMC?
    
    func getIMCValue() -> String{
        let imcTo1DecimalPlace = String(format: "%.1f", imc?.value ?? 0.0)
        return imcTo1DecimalPlace
    }
    
    func getAdvice() -> String {
        return imc?.advice ?? "Sem Conselho"
    }
    
    func getColor() -> UIColor {
        return imc?.color ?? #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    }
    
    mutating func calculateIMC(altura: Float, peso: Float){
        let imcValue = peso / (altura * altura)
        
        if imcValue < 18.5{
            imc = IMC(value: imcValue, advice: "Você precisa se alimentar melhor", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
                
        } else if imcValue < 24.9 {
            imc = IMC(value: imcValue, advice: "Você está parecendo Cristiano Ronaldo! Em Forma!", color: #colorLiteral(red: 0, green: 0.4588235294, blue: 0.8901960784, alpha: 1))
            
        } else {
            imc = IMC(value: imcValue, advice: "Você precisa comer um pouco menos de besteira. Força!", color: #colorLiteral(red: 0.521568656, green: 0.1098039225, blue: 0.05098039284, alpha: 1))
        }
        
    }
}
