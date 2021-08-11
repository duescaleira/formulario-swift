//
//  ViewController.swift
//  Formulario
//
//  Created by Eduardo Escaleira on 09/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var nome: UITextField!
    @IBOutlet var telefone: UITextField!
    @IBOutlet var cpf: UITextField!
    @IBOutlet var email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    func isValidName() -> Bool {
        if nome.text == "" {
            return true
        }
        return false
    }
    
    func isValidCPF() -> Bool {
      
        if cpf.text?.count != 11 {
            return false
        }
        
        let numericCPF = Int(cpf.text!)
        if numericCPF == nil {
            return false
        }
        return true
    }
    
    func isValidEmail () -> Bool {
        
        if email.text == "" {
            return true
        }
        return false
    }
    
    func isValidTelefone() -> Bool {
        if telefone.text?.count == 9 || telefone.text?.count == 11 {
            return true
        }
        return false
    }
    
    @IBAction func SalveButton(_ sender: Any) {
        
        if let nome = nome.text, let telefone = telefone.text, let cpf = cpf.text, let email = email.text {
            
     //       let valorNumero = Int(telefone) ?? 999999999
            
            let pessoa = Pessoa(nome: nome, cpf: cpf, telefone: telefone, email: email)
            pessoa.imprimeDados() }
        
        if isValidEmail() {
            email.layer.borderWidth = 1
            email.layer.borderColor = UIColor.red.cgColor
        }
        else {
            email.layer.borderWidth = 1
            email.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidCPF() {
            cpf.layer.borderWidth = 1
            cpf.layer.borderColor = UIColor.red.cgColor
        }
        else {
            cpf.layer.borderWidth = 1
            cpf.layer.borderColor = UIColor.clear.cgColor
        }
        
        if isValidName() {
            nome.layer.borderWidth = 1
            nome.layer.borderColor = UIColor.red.cgColor
        }
        else {
            nome.layer.borderWidth = 1
            nome.layer.borderColor = UIColor.clear.cgColor
        }
        
        if !isValidTelefone() {
            telefone.layer.borderWidth = 1
            telefone.layer.borderColor = UIColor.red.cgColor
        }
        else {
            telefone.layer.borderWidth = 1
            telefone.layer.borderColor = UIColor.clear.cgColor
            }
        }
}
        


