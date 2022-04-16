//
//  nibm_broker_cwApp.swift
//  nibm_broker_cw
//
//  Created by pubudiHerath on 4/17/22.
//

import SwiftUI

struct AddDetailsView: View {
    
    private var numberOfImages = 6
    private let timer = Timer.publish(every: 3,  on: .main,in: .common).autoconnect()
    
    @State private var currentIndex = 0
    @Environment(\.presentationMode) var mode
    
    func previouse(){
        withAnimation{
            currentIndex = currentIndex > numberOfImages ? currentIndex - 1 : numberOfImages - 1
        }
    }
    
    func next(){
        withAnimation{
            currentIndex = currentIndex < numberOfImages ? currentIndex + 1 : 0
        }
    }
    
    var controls : some View{
        HStack{
            Button{
                previouse()
            }label: {
                Image(systemName : "chevron.left")
            }
            Spacer()
                .frame(width: 10)
                .padding()
            Button{
                next()
            }label: {
                Image(systemName : "chevron.right")
            }
        }
    }
    
    var body: some View {
        GeometryReader{ proxy in
            VStack{
                // Header View
                VStack(alignment: .leading){
                    
                    HStack{Spacer()}
                    Button{
                        mode.wrappedValue.dismiss()
                        
                    }label:{
                        Image(systemName: "arrow.left")
                            .resizable()
                            .frame(width: 20 , height: 16)
                            .foregroundColor(.white)
                            .offset(x: 1, y: 12)
                    }
                    Text("Adverticement")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                .frame(height:150)
                .padding(.leading)
                .background(Color(.systemBlue))
                .foregroundColor(.white)
                
                VStack{
                    
                    TabView(selection: $currentIndex){
                        ForEach(0..<numberOfImages){ num in
                            Image("\(num)")
                                .resizable()
                                .scaledToFit()
                                .overlay(Color.black.opacity(0.3))
                                .tag(num)
                            
                        }
                        
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .frame(width: proxy.size.width, height: proxy.size.height/3)
                    
                    .padding(.bottom, 10)
                    .padding(.top,0)
                    .onReceive(timer, perform: {_ in
                        withAnimation{
                            next()
                        }
                    })
                    controls
                }
                
                Divider()
                VStack{
                    HStack{
                        Text("Price :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                        Text("20,000,000.00")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                    }
                    HStack{
                        Text("Geo Location :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                        Text("N/A")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                    }
                    HStack{
                        Text("Land / House :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                        Text("House")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                    }
                    HStack{
                        Text("District :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                        Text("Colombo 07")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                    }
                    HStack{
                        Text("Town / Village :")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                        Text("Town")
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(.leading , 10)
                    }
                }
                
            }
        }
        .ignoresSafeArea()
        .navigationBarHidden(true)
    }
}

struct AddDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        AddDetailsView()
    }
}