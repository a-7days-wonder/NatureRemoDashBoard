//
//  ApiTests.swift
//  NatureRemoDashBoardTests
//
//  Created by 永田駿平 on 2020/05/26.
//

import XCTest
@testable import NatureRemoDashBoard

final class ApiTests: XCTestCase {
    private func testRemoApi() {
        ApiClient().send(request: GetRemoDataRequest()) { result in
            switch result {
            case .success(let response):
                print(response)
                XCTAssertTrue(true)
                
            case .failure(let error):
                XCTFail(error.localizedDescription)
            }
        }
    }
}
