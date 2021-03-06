//
//  HeaderBarView.swift
//  nibm_broker_cw
//
//  Created by pubudiHerath on 4/17/22.
//

import SwiftUI

struct HeaderBarView: View {
    
    @EnvironmentObject var viewModel : SignInViewModel
    
    var body: some View {
        // Header View
        VStack(alignment: .leading){
            HStack{Spacer()}
            HStack{
            NavigationLink{
                if(viewModel.userSession?.uid != nil){
                    SettingsView()
                }else{
                    SignInView()
                }
                
            }label :{
                Text("Setting")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 88, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(.bottom,10)
                    
            }
            .shadow(color: .gray.opacity(0.5), radius:10 , x: 0, y: 0)
            
            NavigationLink{
                SellerAddDetailsView()
                
            }label :{
                Text("Sell $")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 88, height: 50)
                    .background(Color(.systemBlue))
                    .clipShape(Capsule())
                    .padding(.bottom,10)
                    
            }
            .shadow(color: .gray.opacity(0.5), radius:10 , x: 0, y: 0)
                
                NavigationLink{
                    SignInView()
                }label :{
                    Text("Sign In")
                        .font(.headline)
                        .foregroundColor(.white)
                        .frame(width: 88, height: 50)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                        .padding(.bottom,10)
                        
                }
                .shadow(color: .gray.opacity(0.5), radius:10 , x: 0, y: 0)
                
                
            }
            
            
            
            Divider().foregroundColor(.black)
        }
        .frame(height:65)
        .padding(.leading)
        .background(.white)
        .foregroundColor(.white)
    }
}

struct HeaderBarView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderBarView()
    }
}
