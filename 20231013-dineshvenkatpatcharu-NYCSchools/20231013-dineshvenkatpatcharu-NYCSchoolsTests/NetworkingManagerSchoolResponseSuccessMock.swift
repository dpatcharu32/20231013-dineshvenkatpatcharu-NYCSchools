//
//  NetworkingManagerSchoolResponseSuccessMock.swift
//  20231013-dineshvenkatpatcharu-NYCSchoolsTests
//
//  Created by Dinesh on 13/10/23.
//

import Foundation
@testable import _0231013_dineshvenkatpatcharu_NYCSchools

class NetworkingManagerSchoolResponseSuccessMock: NetworkingManagerImpl {
    func request<T: Decodable>(session: URLSession, _ absoluteURL: String) async throws -> T {
        guard let path = Bundle.main.path(forResource: "SchoolsStaticData", ofType: "json"),
              let data = FileManager.default.contents(atPath: path) else {
            fatalError("Failed to get the static schools file")
        }
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        let staticSchools = try! decoder.decode(SchoolDirectoryResponse.self, from: data)
        return staticSchools as! T
    }
}
