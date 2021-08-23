//
//  ViewController.swift
//  Part12
//
//  Created by 葡萄酒 on 2021/08/17.
//

import UIKit

class ViewController: UIViewController {

    private let taxKey = "tax"

    @IBOutlet private weak var moneyTextField: UITextField!
    @IBOutlet private weak var taxTextField: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!

    @IBAction func calculationButton(_ sender: UIButton) {
        guard let money = Int(moneyTextField.text!) else { return }
        guard let tax = Int(taxTextField.text!) else { return }

        let result = money + (money * tax / 100)

        resultLabel.text = String(result)
    }

    @IBAction func changeTaxTextField(_ sender: UITextField) {

        UserDefaults.standard.set(taxTextField.text, forKey: taxKey)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        taxTextField.text = UserDefaults.standard.string(forKey: taxKey)
    }
}
