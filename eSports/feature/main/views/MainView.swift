//
//  MainView.swift
//  eSports
//
//  Created by Antonio Henrique Braga Monteiro  on 13/05/22.
//

import SwiftUI

struct MainView: View {
    
    @State var goToTeams: Bool = false
    @State var goToPlayers: Bool = false
    
    var body: some View {
        VStack{
            NavigationLink(destination: TeamsView(), isActive: $goToTeams) { EmptyView() }
            NavigationLink(destination: PlayersView(), isActive: $goToPlayers) { EmptyView() }
            
            HStack{
                MyButton(text: "Teams", clicked: {
                    goToTeams.toggle()
                })
                MyButton(text: "Jogadores", clicked: {
                    goToPlayers.toggle()
                })
            }.padding()
            
            Spacer()
        }
        
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

struct MyButton: View{
    var text: String
    var clicked: (() -> Void)
    
    var body: some View{
        Button(action: {
            clicked()
        }, label: {
            VStack{
                Image("teams")
                    .resizable()
                    .frame(maxWidth: 72, maxHeight: 72, alignment: .center)
                Text(text)
                    .foregroundColor(Color.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        })
            .frame(maxWidth: .infinity, maxHeight: 200)
            .aspectRatio(1/1, contentMode: .fit)
            .background(Color.blue)
            .cornerRadius(8)
    }
}
