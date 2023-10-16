//
//  MockURLSessionProtocol.swift
//  20231013-dineshvenkatpatcharu-NYCSchoolsTests
//
//  Created by Dinesh on 13/10/23.
//

import Foundation

class MockURLSessionProtocol: URLProtocol {
    static var loadingHandler: (() -> (HTTPURLResponse, Data?))?
    
    override class func canInit(with request: URLRequest) -> Bool {
        true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        request
    }
    
    override func startLoading() {
        guard let handler = Self.loadingHandler else {
            fatalError()
        }
        
        let (response, data) = handler()
        client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
        if let data {
            client?.urlProtocol(self, didLoad: data)
        }
        client?.urlProtocolDidFinishLoading(self)
    }
    
    override func stopLoading() {}
}
