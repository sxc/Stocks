//
//  DownloadManager.swift
//  Stocks
//
//  Created by Xiaochun Shen on 2021/4/8.
//

import Foundation

import SwiftUI

class DownloadManager: ObservableObject {
    
    var dataEntries = [DataEntry]()
    
    @Published var dataFetched = false
    
    
}
