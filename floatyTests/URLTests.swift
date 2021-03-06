//
//  URLTests.swift
//  FloatyTests
//
//  Created by James Zaghini on 21/12/18.
//  Copyright © 2018 James Zaghini. All rights reserved.
//

import XCTest
@testable import Floaty

class URLTests: XCTestCase {

    func testContainsParameterKey() {
        let key = "funky"
        let url = URL(string: "https://www.google.com?\(key)=monkey")!
        XCTAssertTrue(url.containsParameterKey(key))
    }

    func testMassageURL() {
        let youtubeURL = URL(string: "https://www.youtube.com/watch?v=hHW1oY26kxQ")!
        XCTAssertNotNil(youtubeURL.massagedURL())
    }
}
