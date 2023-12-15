//
//  ContentView.swift
//  35. SwiftUI
//
//  Created by ani kvitsiani on 14.12.23.
//

import SwiftUI

struct MainScreen: View {
    
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            
            List {
                
                NavigationLink("Bali", destination: DestinationDetailScreen())
                    .fontWeight(.medium)
                NavigationLink("San Francisco", destination: DestinationDetailScreen())
                    .fontWeight(.medium)
                NavigationLink("Rome", destination: DestinationDetailScreen())
                    .fontWeight(.medium)
            }
            .padding(.top, 20)
            .navigationTitle("Travel App")
            .navigationBarTitleDisplayMode(.inline)
            
            
            Button("Travel tips") {
                showAlert = true
            }
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .background(Color.blue)
            .cornerRadius(10)
            .padding()
            
            .alert(isPresented: $showAlert) {
                Alert(title: Text("some travel tips....."), message: Text("Button was tapped!"), dismissButton: .default(Text("OK")))
            }
            
            
        }
    }
}



struct DestinationDetailScreen: View {
    var body: some View {
        
            NavigationView {
                VStack{
                    HStack (alignment: .top) {
                        //წესით ზემოთ უნდა წევდეს და რა უნდა ვერგავიგე
                        Image("some image")
                        
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 180, height: 180)
                            .frame(alignment: .top)
                        
                        VStack (alignment: .leading) {
                            Text("Bali")
                                .font(.headline)
                            Text("Known as the Island of the Gods, Bali is an island paradise that has much to offer its visitors. Lush rice fields, ancient temples, magical sunsets, traditional villages, idyllic beaches and the best hotels in the world are some of the island's most remarkable attractions.")
                                .font(.subheadline)
                                .foregroundColor(.gray)
                        }
                        
                        
                    }
                    .padding(.bottom, 42)
                    
                    .padding(.top, 42)
                    
                       
                        NavigationLink(destination: TransportScreen()){
                            Button("Transport"){
                                
                            }
                            
                            .frame(width: 100, height: 24)
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        NavigationLink(destination: MustSeeScreen()){
                            Button("Must See"){
                                
                            }
                            .frame(width: 100, height: 24)
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        NavigationLink(destination: HotelsScreen()){
                            Button("Hotels"){
                                
                            }
                            .frame(width: 100, height: 24)
                        }
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                        
                        
                    }
                
                
                
            }
            
           
            
        }
        
    }



struct TransportScreen: View {
    var body: some View {
        
            VStack{
                Text("Transport")
                    .font(.headline)
                
                Text("Some transport information")
                
                
                
            
        }
    }
}

struct MustSeeScreen: View {
    var body: some View {
        NavigationView{
            VStack{
                Text("Some must see attractions.")
                
            }
        }
    }
}

struct HotelsScreen: View {
    var body: some View {
        NavigationView{
            VStack (alignment: .leading) {
                
                
                Text("Hotels are here")
                
                Text("Some more information about them. lalala, lalala")
                
                
                
                HStack{
                    Spacer()
                    NavigationLink(destination: MainScreen()){
                        Button("Go to main screen"){
                            
                        }
                        .frame(width: 180, height: 24, alignment: .center)
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                        
                    
                        
                        
                        
                    }
                    Spacer()
                }
                .padding(.top, 42)
            }
            .padding(.leading, 16)
        }
    }
}

#Preview {
    MainScreen()
}
