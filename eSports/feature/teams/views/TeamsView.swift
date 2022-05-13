//
//  TeamsView.swift
//  eSports
//
//  Created by Antonio Henrique Braga Monteiro  on 13/05/22.
//

import SwiftUI

struct Team: Identifiable{
    var id = UUID()
    var name :String
}

struct TeamsView: View {
    
    @StateObject private var viewModel = TeamsViewModel()
    
    let teams = [
        Team(name: "Antonio"),
        Team(name: "Salguod")
    ]
    
    var body: some View {
        VStack{
            Button(viewModel.selectedPlace){viewModel.amendoim()}
            List(teams){ team in
                Text(team.name)
            }
        }
    }
}

struct TeamsView_Previews: PreviewProvider {
    static var previews: some View {
        TeamsView()
    }
}
