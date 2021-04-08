//
//  ContentView.swift
//  Shared
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import SwiftUI

struct ContentView: View {
    
//    let stockData: [DataEntry]
    
    @ObservedObject var downloadManager: DownloadManager
    
    
    var body: some View {
        VStack {
            Header(stockData: downloadManager.dataEntries)
            Chart(dataSet: downloadManager.dataEntries)
                .frame(height: 300)
            Spacer()
            TransactionButtons()
            Spacer()
        }
        .navigationTitle("Stocks")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(downloadManager: DownloadManager())
    }
}

struct Header: View {
    
    let stockData: [DataEntry]
    
    var body: some View {
        HStack(alignment: .bottom) {
            Text("$" + String(format: "%.2f", stockData.last?.close ?? 0))
                .font(.custom("Avenir", size: 45))
            Text(String(format: "%.2f", 86.63) + "%")
//            Text(String(format: "%.2f", getPercentageChange(stockData: stockData)) + "%")
                
                .font(.custom("Avenir", size: 18))
                .fontWeight(.medium)
                .foregroundColor(.green)
        }
        .padding()
        .padding(.top, 30)
    }
}

struct TransactionButtons: View {
    var body: some View {
        HStack {
            Text("Sell Shares")
                .font(.custom("Avenir", size: 16))
                .foregroundColor(Color(red: 0.8, green: 0.8, blue: 0.8))
                .padding(20)
                .background(Color(red: 0.25, green: 0.27, blue: 0.3))
            Text("Buy Shares")
                .font(.custom("Avenir", size: 16))
                .foregroundColor(.white)
                .padding(20)
                .background(Color.blue)
        }
        .background(Color.blue)
        .cornerRadius(16)
    }
}
