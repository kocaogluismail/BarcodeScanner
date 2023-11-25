//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by İsmail Kocaoglu on 24.11.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @StateObject var viewModel = BarcodeScannerViewModel()
    
    
    
    var body: some View {
        VStack {
            NavigationView {
                VStack{
                    ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                        .frame(maxWidth: .infinity, maxHeight: 300)
                    Spacer()
                        .frame(height: 60)
                    
                    Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                        .font(.title)
                    
                    Text(viewModel.statusText)
                        .bold()
                        .font(.largeTitle)
                        .foregroundColor(viewModel.statusTextColor)
                        .padding()
                    
                    Button {
                        
                    } label: {
                        Text("Tap me")
                    }
                    
                }
                .navigationTitle("Barcode Scanner")
                .alert(item: $viewModel.alertItem) { alertItem in
                    Alert(title: Text(alertItem.title), message: Text(alertItem.message), dismissButton: alertItem.dismissButton)
                    
                }
            
            }
        }
        .padding()
    }
}

#Preview {
    BarcodeScannerView()
}
