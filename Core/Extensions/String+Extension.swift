//
//  String+Extension.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

extension String {
    
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
    
    func localizeWithFormat(arguments: CVarArg...) -> String {
        return String(format: self.localized, arguments: arguments)
    }
}
