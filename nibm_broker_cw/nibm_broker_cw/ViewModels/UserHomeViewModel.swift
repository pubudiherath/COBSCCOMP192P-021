//
//  UserHomeViewModel.swift
//  nibm_broker_cw
//
//  Created by pubudiHerath on 4/17/22.
//

import Foundation

class UserHomeViewModel : ObservableObject{
    @Published var sellItems = [SellItem]()
    
    let sellItemService = SellItemService()
    
    init(){
        fetchSlItems()
    }
    
    func fetchSlItems(){
        sellItemService.fetchSellItems { sellItems in
            self.sellItems = sellItems
            print("DEBUG : Fetched Sell Items \(sellItems)")
        }
    }
}

