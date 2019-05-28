//
//  TaxesViewController.swift
//  ComprasUSA
//
//  Created by Oscar Veroneze Junior on 20/05/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

class TaxesViewController: UIViewController {
    @IBOutlet weak var labelDolar: UILabel!
    @IBOutlet weak var labelStateTaxDescription: UILabel!
    @IBOutlet weak var labelStateTax: UILabel!
    @IBOutlet weak var labelIOFDescription: UILabel!
    @IBOutlet weak var labelIOF: UILabel!
    @IBOutlet weak var switchCreditCard: UISwitch!
    @IBOutlet weak var labelReal: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        calculateTaxes()
    }
    
    @IBAction func changeIOF(_ sender: UISwitch) {
        calculateTaxes()
    }
    
    
    func calculateTaxes() {
        labelStateTaxDescription.text = "Imposto do Estado (\(taxesCalculator.getFormatedValue(of: taxesCalculator.stateTax, withCurrency: ""))%)"
        labelIOFDescription.text = "IOF (\(taxesCalculator.getFormatedValue(of: taxesCalculator.iof, withCurrency: ""))%)"
        
        labelDolar.text = taxesCalculator.getFormatedValue(of: taxesCalculator.shoppingValue, withCurrency: "US$ ")
        labelStateTax.text = taxesCalculator.getFormatedValue(of: taxesCalculator.stateTaxValue, withCurrency: "US$ ")
        labelIOF.text = taxesCalculator.getFormatedValue(of: taxesCalculator.iofValue, withCurrency: "US$ ")
        
        let real = taxesCalculator.calculate(usingCreditCard: switchCreditCard.isOn)
        labelReal.text = taxesCalculator.getFormatedValue(of: real, withCurrency: "R$ ")
    }
}
