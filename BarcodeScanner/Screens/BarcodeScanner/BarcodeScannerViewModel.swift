//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by İsmail Kocaoglu on 25.11.2023.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var  scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText : String {
         scannedCode.isEmpty ? "Not Yet Scanned " : scannedCode
    }
    var statusTextColor : Color {
        scannedCode.isEmpty ? .red : .green
    }
}
