//
//  ContentView.swift
//  Barcode Scanner
//
//  Created by Глеб Капустин on 09.04.2024.
//

import SwiftUI

struct BarcodeScannerView: View {
    
    @State private var scannedCode = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                
                Spacer().frame(height: 60)
                
                Label("Scanned Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundStyle(scannedCode.isEmpty ? .red : .green)
                    .padding()
                
                Button {
                    
                } label: {
                    Text("Tap Me")
                }
            }
            .navigationTitle("Barcode Scanner")
            
        }
    }
}

#Preview {
    BarcodeScannerView()
}
