//
//  PostEntityTest.swift
//  DomainTests
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import XCTest

@testable import Domain

class PostEntityTest: XCTestCase {
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testPostInitialization() {
        let post = Post(uid: "447", title: "First Post", body: "Bla bla bla")

        XCTAssertEqual("447", post.uid)
        XCTAssertEqual("First Post", post.title)
        XCTAssertEqual("Bla bla bla", post.body)
    }

    func testPostEquality() {
        let post = Post(uid: "447", title: "First Post", body: "Bla bla bla")
        let postSecond = Post(uid: "447", title: "First Post", body: "Bla bla bla")

        XCTAssertTrue(post == postSecond)
    }
}
