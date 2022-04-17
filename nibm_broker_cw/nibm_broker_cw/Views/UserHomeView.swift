//
//  UserHomeView.swift
//  nibm_broker_cw
//
//  Created by pubudiHerath on 4/17/22.
//

import SwiftUI

struct UserHomeView: View {
    private var district = ["Colombo","Kurunegala","Kandy","Galle"]
    private var itemType = ["House", "Land"]
    
    @ObservedObject var userhomeViewModel  = UserHomeViewModel()
    
    var body: some View {
        VStack{
            HeaderBarView()
            HStack{
                MenuPickerView(typeText:"House/Land", options: itemType)
                MenuPickerView(typeText:"District",options: district)
            }
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self){ _ in
                        AddRowView()
                    }
                }
            }.navigationBarHidden(true)
        }
    }
}

struct UserHome_Previews: PreviewProvider {
    static var previews: some View {
        UserHomeView()
    }
}
