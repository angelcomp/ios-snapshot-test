//
//  ViewControllerTests.swift
//  ios-snapshot-testTests
//
//  Created by Angelica dos Santos on 31/10/22.
//

import XCTest
import SnapshotTesting
@testable import ios_snapshot_test

final class ViewControllerTests: XCTestCase {

    var sut: ViewController!
    
    override func setUpWithError() throws {
        sut = ViewController.instantiate(storyBoardName: "Main")
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testDefaultState() {
        //use "record: true" as parameter to record new snapshot
        assertSnapshot(matching: sut, as: .image)
    }
    
    func testDarkMode() {
        sut.isDarkMode = true
        assertSnapshot(matching: sut, as: .image)
    }
}
