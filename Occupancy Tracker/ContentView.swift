//
//  ContentView.swift
//  Occupancy Tracker
//
//  Created by Ethan Rayala on 2/17/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var peopleCount = 0
    @State private var redValue = 0.0
    @State private var blueValue = 1.0
    @State private var greenValue = 0.5
    
    var body: some View {
        ZStack {
//            Color.blue
//                .ignoresSafeArea()
            
            Color(.sRGB, red: redValue, green: greenValue, blue: blueValue, opacity: 1)
                .ignoresSafeArea()
            VStack {
                HStack {
                    Text("\(peopleCount) people")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .padding([.leading])
                        
                    
                    Spacer()
                    
                    Image(systemName: "gear")
                        .padding([.trailing])
                        .font(.system(size: 35))
                        .foregroundColor(.white)
                        
                    
                }
                
                Spacer()
                
                Image("cutie")
                    .resizable()
                    .scaledToFit()
                    .padding()
                Spacer()
                
                HStack {
                    // Subtract Button
                    Button {
                        if peopleCount == 0 {
                            peopleCount = 0
                        } else {
                            peopleCount -= 1
                            redValue -= 0.03
                            blueValue += 0.03
                            greenValue += 0.015
                            
                        }
                        
                       // if peopleCount
                        
                    } label: {
                        Image(systemName: "minus")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                            .padding([.leading], 25)
                    }
                    
                    
                    
                    Spacer()
                    
                    // Add button
                    
                    Button {
                        if peopleCount < 30 {
                            peopleCount += 1
                            redValue += 0.03
                            blueValue -= 0.03
                            greenValue -= 0.015
                        }
                        
                        
                    } label: {
                        Image(systemName: "plus")
                            .font(.system(size: 60))
                            .foregroundColor(.white)
                            .padding([.trailing], 25)
                    }
                    
                }
                .padding([.bottom], 45)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
