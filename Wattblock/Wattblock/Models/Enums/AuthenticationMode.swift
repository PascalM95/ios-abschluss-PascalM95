//
//  AuthenticationMode.swift
//  Wattblock
//
//  Created by Pascal Mönch on 30.08.23.
//

import Foundation

enum AuthenticationMode {
    case login, register
    
    var title: String {
        switch self {
        case .login: return "Anmelden"
        case .register: return "Registrieren"
        }
    }
    
    var alternativeTitle: String {
        switch self {
        case .login: return "Noch kein Konto? Jetzt registrieren →"
        case .register: return "Schon registriert? Jetzt Anmelden →"
        }
    }
}
