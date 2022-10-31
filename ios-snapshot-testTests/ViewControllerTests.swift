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
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyBoard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
    }

    override func tearDownWithError() throws {
        sut = nil
    }

    func testDefaultState() {
        assertSnapshot(matching: sut, as: .image)
    }
    
    func testDarkMode() {
        sut.isDarkMode = true
        assertSnapshot(matching: sut, as: .image)
    }
}
