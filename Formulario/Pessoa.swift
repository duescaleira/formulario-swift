//
//  Pessoa.swift
//  Formulario
//
//  Created by Eduardo Escaleira on 09/08/21.
//

import Foundation

class Pessoa {
    var nome: String
    var cpf: String
    var telefone: String
    var email: String
    
    init(nome: String, cpf: String, telefone: String, email: String) {
        self.nome = nome
        self.cpf = cpf
        self.telefone = telefone
        self.email = email
    }
    
    func imprimeDados() {
        
        print("Nome: \(nome)")
        print("Nome: \(cpf)")
        print("Nome: \(telefone)")
        print("Nome: \(email)")
    }
    
    
}

