//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Oscar Veroneze Junior on 20/05/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

class ShoppingViewController: UIViewController {
    @IBOutlet weak var textFieldDolar: UITextField!
    @IBOutlet weak var labelRealDescription: UILabel!
    @IBOutlet weak var labelReal: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setAmount()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        textFieldDolar.resignFirstResponder()
        setAmount()
    }
    
    func setAmount() {
        taxesCalculator.dolar = Double(textFieldDolar.text!)!
    }

}

