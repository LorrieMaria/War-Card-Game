//
//  ContentView.swift
//  War Card Game
//
//  Created by Lorrie Axelrod on 5/16/23.
//

// first try!

import SwiftUI

struct ContentView: View {
    
    // @State - property that powers the visual state
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable() // fit the screen
                .ignoresSafeArea() // lets it go past the safe area
            
            VStack{
                Spacer()
                Image("logo")

                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                        
                }
                Spacer()
                
                /* adding an button with text
                Button("Deal") {
                    // what happens when the user taps on the button
                    deal()
                }
                 
                .foregroundColor(.white)
                 */
                
                // adding a visual button that does something
                Button {
                    deal()
                } label: {
                    Image("button")
                }

                
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline) // makes the font bolded
                        
                        // convert int to string
                        Text(String(playerScore))
                            .font(.largeTitle)
                            .padding(.bottom, 30)
                    }
                    Spacer()
                    
                    VStack{
                        Text("CPU")
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                            .padding(.bottom, 30)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
            
        }

        
    
        

        
    }
    
    func deal(){
        // Randomize the player's card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // Randomize the CPU's card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // Update the score
        if playerCardValue > cpuCardValue {
            playerScore += 1
        }
        else if playerCardValue < cpuCardValue{
            cpuScore += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
