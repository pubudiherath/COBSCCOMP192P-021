//
//  AddRowView.swift
//  nibm_broker_cw
//
//  Created by pubudiHerath on 4/17/22.
//

import SwiftUI

struct AddRowView: View {
    @State private var price = ""
    @State private var landOrHouse = ""
    @State private var landSize = ""
    @State private var district = ""
    @State private var townOrVillage = ""
    
    let sellItem : SellItem
    // Envirenment objects can usen in whole applicaton
    // Initialized it when app start time.
    @EnvironmentObject var viewModel : SignInViewModel
    
    var body: some View {
        Group{
            addRowMainInterfaceView
        }
    }
}

/*
struct AddRowView_Previews: PreviewProvider {
    static var previews: some View {
        AddRowView(sellItem:[SellItem])
    }
}
 */

extension AddRowView {
    var addRowMainInterfaceView : some View{
        VStack(alignment: .leading){
            HStack(alignment: .top, spacing: 30){
                // Image
                Image("1")
                    .resizable()
                    .frame(width: 110, height: 110)
                    //.foregroundColor(Color(.systemBlue))
                // info
                VStack{
                    HStack{
                        Text(sellItem.price)
                            .font(.title3)
                            .bold()
                        
                        Text(" | ")
                            .font(.title3)
                            .bold()
                        
                        Text(sellItem.landOrHouse)
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    HStack{
                        Text(sellItem.district)
                            .font(.title3)
                            .bold()
                        
                        Text(" | ")
                            .font(.title3)
                            .bold()
                        
                        Text(sellItem.landSize)
                            .font(.title3)
                            .bold()
                    }
                    Spacer()
                    HStack{
                        Text(sellItem.townOrVilage)
                            .font(.title3)
                            .bold()
                        /*
                        NavigationLink{
                            if(viewModel.userSession == nil){
                                SignInView()
                            }else{
                                //AddDetailsView(sellitem:sellItem)
                            }
                        } label:{
                            Text("View")
                        }
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 60, height: 22)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding(.leading)
                        */
                    }
                }
                .frame(height:100)
            }
            HStack  {
                Spacer()
            }
            Divider()
        }
        .padding(.leading)
        .padding(.top)
        
    }
}
