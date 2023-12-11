//
//  RMRequest.swift
//  RickAndMortyApp
//
//  Created by Anisa Fatimah Azzahra on 14/11/23.
//

import Foundation

final class RMRequest {
    private struct Constants{
        static let baseUrl = "https://rickandmortyapi.com/api"
    }
    
    init(endpoint: RMEndpoint, pathComponents: [String] = [], queryParameters: [URLQueryItem] = []) {
        self.endpoint = endpoint
        self.pathComponents = pathComponents
        self.queryParameters = queryParameters
    }
    
    private let endpoint: RMEndpoint
    private let pathComponents: [String]
    private let queryParameters: [URLQueryItem]
    public let httpMethod = "GET"
    
//    MARK: - functions
    private var urlString: String{
        var string = Constants.baseUrl
        string += "/"
        string += endpoint.rawValue
        
        if !pathComponents.isEmpty{
            pathComponents.forEach({
                string += "/\($0)"
            })
        }
        
        if !queryParameters.isEmpty{
            string += "?"
            let argumentString = queryParameters.compactMap({
                guard let value = $0.value else {
                    return nil
                }
                return "/\($0.name)=\(value)"
            }).joined(separator: "&")
            string += argumentString
        }
        return string
    }
    
    var url: URL? {
        return URL(string: urlString)
    }
}

extension RMRequest{
    static let listCharactersRequests = RMRequest(endpoint: .character)
}
