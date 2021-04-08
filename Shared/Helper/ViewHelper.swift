//
//  ViewHelper.swift
//  Stocks
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import Foundation

func getPercentageChange(stockData: [DataEntry]) -> Double {
    if let lastEntryClose = stockData.last?.close, let firstEntryClose = stockData.first?.close {
        return ((lastEntryClose-firstEntryClose)/lastEntryClose)*100
    } else {
        return 0
    }
}
