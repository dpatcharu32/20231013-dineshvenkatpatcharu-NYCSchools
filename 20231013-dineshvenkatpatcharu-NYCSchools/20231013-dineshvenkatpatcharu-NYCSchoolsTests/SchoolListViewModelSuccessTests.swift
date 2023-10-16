//
//  SchoolListViewModelSuccessTests.swift
//  20231013-dineshvenkatpatcharu-NYCSchoolsTests
//
//  Created by Dinesh on 13/10/23.
//

import XCTest
@testable import _0231013_dineshvenkatpatcharu_NYCSchools

final class SchoolListViewModelSuccessTests: XCTestCase {
    func testSuccessfulLoadSchoolList() async {
        let networkingMock: any NetworkingManagerImpl = NetworkingManagerSchoolResponseSuccessMock()
        let viewModel = SchoolListViewModel(networkingManager: networkingMock)
        XCTAssertTrue(viewModel.schools.isEmpty)
        await viewModel.fetchSchools()
        XCTAssertFalse(viewModel.schools.isEmpty)
    }
}
