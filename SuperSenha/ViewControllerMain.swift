//
//  ViewControllerMain.swift
//  SuperSenha
//
//  Created by aluno on 09/11/19.
//  Copyright © 2019 CESAR School. All rights reserved.
//

import UIKit

class ViewControllerMain: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    @IBOutlet weak var swCaptitalLetters: UISwitch!
    
    
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! ViewControllerPasswordTela
        
        // forma mais segura (usar if let)
        if let numberOfPasswords = Int(tfTotalPasswords.text!) {
            // se conseguir obter o valor do campo e converter para inteiro
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
        }
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCaptitalLetters.isOn
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useSpecialCharacters = swSpecialCharacters.isOn
        
        // forcar encerrar o modo de edicao // remove o foco e libera teclado
        view.endEditing(true)
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
