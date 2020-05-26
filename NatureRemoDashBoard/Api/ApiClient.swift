//
//  ApiClient.swift
//  NatureRemoDashBoard
//
//  Created by 永田駿平 on 2020/05/26.
//

import Alamofire

enum MyError: LocalizedError {
    case network
    case unknown(String)
}

protocol Requestable {
    associatedtype Response: Decodable
    
    var url: String { get }
    var method: HTTPMethod { get }
}

protocol ApiClientInput {
    func send<Request: Requestable>(request: Request, completion: @escaping (Result<Request.Response, MyError>) -> Void)
}

struct ApiClient: ApiClientInput {
    func send<Request: Requestable>(request: Request, completion: @escaping (Result<Request.Response, MyError>) -> Void) {
        AF.request(
            request.url,
            method: request.method
        ).validate(statusCode: 200..<300).responseJSON { response in
            switch response.result {
            case .success:
                if let data = response.data,
                    let result = try? JSONDecoder().decode(Request.Response.self, from: data) {
                    completion(.success(result))
                }
                
            case .failure(let error):
                completion(.failure(.unknown(error.localizedDescription)))
            }
        }
    }
}
