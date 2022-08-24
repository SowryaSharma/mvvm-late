//
//  viewmodel.swift
//  bbqq
//
//  Created by cumulations on 17/08/22.
//

import Foundation


class returnData{
    var m:data?
    static var shared = returnData()
    let url = "https://api.quotable.io/random"
    func fetchdata(parse : @escaping(data)->Void){
//        let url = "https://api.github.com/users"
        var request = URLRequest(url: URL(string: url)!)
        request.httpMethod = "GET"

        let task = URLSession.shared.dataTask(with: request) { Data, response, error in
            
                do {
                    let decoder = JSONDecoder()
                    guard let responseData = Data else {
                        return
                    }
                    let menuBranchBuffetDataModel = try decoder.decode(data.self, from: responseData)
                    self.m=menuBranchBuffetDataModel
                    parse(menuBranchBuffetDataModel)
                } catch {
                    print("error")
                }
            if let error = error {
                print(error)
            }
            if let response = response {
                print(response)
            }
        }
        task.resume()
    }
}
