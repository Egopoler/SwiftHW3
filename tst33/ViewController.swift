//
//  ViewController.swift
//  tst33
//
//  Created by MacBook Pro on 26.06.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textInf2: UITextView!
    @IBOutlet weak var namedView: UIView!
    @IBOutlet weak var textInf1: UITextView!
    @IBOutlet weak var LineUnderName: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        namedView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        namedView.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.5).isActive = true
        namedView.layer.cornerRadius = view.frame.width / 4
        


        
    }
    
    @IBAction func but1Trapped(_ sender: UIButton) {
        showAlert(textInf: textInf1)
    }
    
    @IBAction func but2Trapped(_ sender: UIButton) {
        showAlert(textInf: textInf2)
    }
    private func showAlert(textInf: UITextView) {
            let alertController = UIAlertController(title: "Enter New Value", message: nil, preferredStyle: .alert)
            
            alertController.addTextField { textField in
                textField.placeholder = "New Value"
                textField.textColor = .darkGray
            }
            
            let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
            let saveAction = UIAlertAction(title: "Done", style: .default) { _ in
                guard let textField = alertController.textFields?.first,
                      let newValue = textField.text else { return }
                
                textInf.text = newValue
            }
            
            alertController.addAction(cancelAction)
            alertController.addAction(saveAction)
            
            present(alertController, animated: true, completion: nil)
        }
}
