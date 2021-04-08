//
//  StockList.swift
//  Stocks
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import SwiftUI

struct StockList: View {
    var body: some View {
        NavigationView {
                    List {
                        HStack {
                            NavigationLink(destination: ContentView()) {
                                VStack(alignment: .leading) {
                                    Text("AAPL")
                                        .font(.custom("Avenir", size: 20))
                                        .fontWeight(.medium)
                                    Text("Apple Inc.")
                                        .font(.custom("Avenir", size: 16))
                                }
                                Spacer()
                                VStack(alignment: .trailing) {
                                    Text(String(format: "%.2f", 0.234) + "%")
                                        .font(.custom("Avenir", size: 14))
                                        .fontWeight(.medium)
                                        .foregroundColor(.green)
                                    Text("$" + String(format: "%.2f", 32.2832))
                                        .font(.custom("Avenir", size: 26))
                                }
                            }
                        }
                    }
                        .navigationTitle("Stocks")
                }
    }
}

struct StockList_Previews: PreviewProvider {
    static var previews: some View {
        StockList()
    }
}
