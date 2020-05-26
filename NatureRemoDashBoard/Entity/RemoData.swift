//
//  RemoData.swift
//  NatureRemoDashBoard
//
//  Created by 永田駿平 on 2020/05/26.
//

import Foundation

struct RemoResponse: Decodable {
    let data: [RemoData]
    let createdAt: Date
}

struct RemoData: Decodable {
    let temperature: Float
    let humidity: Float
    let illumination: Float
    let movement: Float
    let createdAt: Date
}
