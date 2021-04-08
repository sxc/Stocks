//
//  DownloadHelper.swift
//  Stocks
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import Foundation

let apiKey = "UNHT8S40KCTQ0AOH"

//func generateRequestURL(stockSymbol: String) -> String {
//    return "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=\(stockSymbol)&interval=15min&outputsize=full&apikey=\(apiKey)"
//}


func generateRequestURL(stockSymbol: String) -> String {
    return "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=\(stockSymbol)&interval=15min&outputsize=full&apikey=\(apiKey)"
}
