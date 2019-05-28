//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Oscar Veroneze Junior on 20/05/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var textFieldDolar: UITextField!
    @IBOutlet weak var textFieldIOF: UITextField!
    @IBOutlet weak var textFieldStateTaxes: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textFieldDolar.text = taxesCalculator.getFormatedValue(of: taxesCalculator.dolar, withCurrency: "")
        textFieldIOF.text = taxesCalculator.getFormatedValue(of: taxesCalculator.iof, withCurrency: "")
        textFieldStateTaxes.text = taxesCalculator.getFormatedValue(of: taxesCalculator.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        taxesCalculator.dolar = taxesCalculator.convertToDouble(textFieldDolar.text!)
        taxesCalculator.iof = taxesCalculator.convertToDouble(textFieldIOF.text!)
        taxesCalculator.stateTax = taxesCalculator.convertToDouble(textFieldStateTaxes.text!)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        setValues()
    }
}
