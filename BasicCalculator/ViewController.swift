//
//  ViewController.swift
//  BasicCalculator
//
//  Created by dios on 05/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNumber: UITextField!
    @IBOutlet weak var secondNumber: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sumClicked(_ sender: Any) {
        if let fNumb = Int(firstNumber.text ?? "") {
            if let sNumb = Int(secondNumber.text ?? "") {
                calculate(firstNumb: fNumb, secondNumb: sNumb, action: "+")
            } else {
                showToast(controller: self, message: "Wrong Input", second: 1)
                return
            }
        } else {
            showToast(controller: self, message: "Wrong Input", second: 1)
            return
        }
    }
    
    @IBAction func minusClicked(_ sender: Any) {
        if let fNumb = Int(firstNumber.text ?? "") {
            if let sNumb = Int(secondNumber.text ?? "") {
                calculate(firstNumb: fNumb, secondNumb: sNumb, action: "-")
            } else {
                showToast(controller: self, message: "Wrong Input", second: 1)
                return
            }
        } else {
            showToast(controller: self, message: "Wrong Input", second: 1)
            return
        }
    }
    
    @IBAction func multiplyClicked(_ sender: Any) {
        if let fNumb = Int(firstNumber.text ?? "") {
            if let sNumb = Int(secondNumber.text ?? "") {
                calculate(firstNumb: fNumb, secondNumb: sNumb, action: "*")
            } else {
                showToast(controller: self, message: "Wrong Input", second: 1)
                return
            }
        } else {
            showToast(controller: self, message: "Wrong Input", second: 1)
            return
        }
    }
    
    
    @IBAction func divideClicked(_ sender: Any) {
        if let fNumb = Int(firstNumber.text ?? "") {
            if let sNumb = Int(secondNumber.text ?? "") {
                calculate(firstNumb: fNumb, secondNumb: sNumb, action: "/")
            } else {
                showToast(controller: self, message: "Wrong Input", second: 1)
                return
            }
        } else {
            showToast(controller: self, message: "Wrong Input", second: 1)
            return
        }
    }
    
    private func showToast(controller: UIViewController, message: String, second: Double) {
        let alert = UIAlertController(title: nil, message: message, preferredStyle: .alert)
        alert.view.backgroundColor = .white
        alert.view.alpha = 0.5
        alert.view.layer.cornerRadius = 15
        
        controller.present(alert, animated: true)
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + second) {
            alert.dismiss(animated: true)
        }
    }
    
    private func calculate(firstNumb: Int, secondNumb: Int, action: String) {
        var result = 0
        switch action {
            case "+":
                result = firstNumb + secondNumb
            case "-":
                result = firstNumb - secondNumb
            case "*":
                result = firstNumb * secondNumb
            case "/":
                result = firstNumb / secondNumb
            default:
                showToast(controller: self, message: "Wrong Input", second: 1)
        }
        
        resultLable.text = "Result: \(result)"
    }
}

