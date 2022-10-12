//
//  ResultViewController.swift
//  IMC Saude
//
//  Created by Vinicius Pinheiro de Oliveira on 10/10/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    
    var imcValue: String?
    var advice: String?
    var color: UIColor?
    
    @IBOutlet weak var imcLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imcLabel.text = imcValue
        adviceLabel.text = advice
        view.backgroundColor = color
    }
    
    
    @IBAction func recalcularButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
}
