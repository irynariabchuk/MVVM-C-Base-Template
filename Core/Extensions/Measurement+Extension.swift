//
//  Measurement+Extension.swift
//  ___PACKAGENAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

extension Measurement where UnitType == UnitTemperature {
    
    func formatted() -> String {
        let formatter = MeasurementFormatter()
        formatter.unitStyle = .medium
        formatter.unitOptions = .providedUnit
        formatter.numberFormatter = NumberFormatter()
        formatter.numberFormatter.maximumFractionDigits = 0
        
        return formatter.string(from: self)
    }
}
