//
//  TeamsViewModel.swift
//  eSports
//
//  Created by Antonio Henrique Braga Monteiro  on 13/05/22.
//

import Foundation
import Alamofire

struct DecodableType: Decodable {
    let name: String
}

extension TeamsView{
    @MainActor class TeamsViewModel: ObservableObject{
        
        @Published var selectedPlace: String = "Antonio"
        
        init (){
            
        }
        
        func amendoim( ){
            AF.request("https://crudcrud.com/api/67b5e224cb2f42f38003b34a6bcbb144/unicorns").responseDecodable(of: [DecodableType].self) { response in
                switch response.result {
                    case let .success(data):
                    let a = data.first
                            if(a != nil){
                                self.selectedPlace = a!.name
                            }
                    case let .failure(error):
                        // error
                        print(error.localizedDescription)
                    }
            }
        }
    }
}
