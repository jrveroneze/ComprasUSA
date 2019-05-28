//
//  UIViewController+TaxesCalculator.swift
//  ComprasUSA
//
//  Created by Oscar Veroneze Junior on 28/05/19.
//  Copyright © 2019 Junior Veroneze. All rights reserved.
//

import UIKit

extension UIViewController {
    var taxesCalculator: TaxesCalculator {
        return TaxesCalculator.shared
    }
}
