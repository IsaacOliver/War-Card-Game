//
//  ContentView.swift
//  WarCardGame
//
//  Created by Isaac Oliver on 6/17/20.
//  Copyright © 2020 Isaac Oliver. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var randNum1 = 2
    @State private var randNum2 = 2
    
    @State private var score1 = 0
    @State private var score2 = 0
    
    var body: some View {
        
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Image("card" +
                        String(randNum1))
                    
                    Image("card" +
                        String(randNum2))
                }
                
                Spacer()
                
                Button(action: {
                    
                    // Randomize
                    
                    self.randNum1 = Int.random(in: 2...14)
                    
                    self.randNum2 = Int.random(in: 2...14)
                    
                    //Update Scores
                    
                    if self.randNum1 >
                        self.randNum2 {
                            self.score1 += 1
                    }
                    if self.randNum2 > self.randNum1 {
                            self.score2 += 1
                    }
                    else if self.randNum1 == self.randNum2 {
                        self.score1 += 0 ; self.score2 += 0
                    }
                }) {
                    
                    Image("dealbutton")
                        .renderingMode(.original)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 125.0,height:125.0)
                    
                }
                
                Spacer()
                
                HStack {
                    
                    VStack {
                        Text("PLAYER 1")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score1))
                    }
                    .padding(.leading, 20)
                    .foregroundColor(.orange)
                    
                    Spacer()
                    
                    VStack {
                        Text("COMPUTER")
                            .bold()
                            .padding(.bottom, 20)
                        Text(String(score2))
                    }
                    .padding(.trailing, 20)
                    .foregroundColor(.orange)
                    
    
                }
                Spacer()
            
            }
        }
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
