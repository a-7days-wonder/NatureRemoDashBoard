//
//  GetRemoDataRequest.swift
//  NatureRemoDashBoard
//
//  Created by 永田駿平 on 2020/05/26.
//

import Alamofire

struct GetRemoDataRequest: Requestable {
    typealias Response = RemoResponse
    
    var url: String {
        PrivateConst.Api.remoData
    }
    
    var method: HTTPMethod {
        .get
    }
}
