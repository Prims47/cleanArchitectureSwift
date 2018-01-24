//
//  Post.swift
//  Domain
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation

public struct Post {
    public let uid: String
    public let title: String
    public let body: String

    public init(uid: String, title: String, body: String) {
        self.uid = uid
        self.title = title
        self.body = body
    }
}

extension Post: Equatable {
    public static func == (lhs: Post, rhs: Post) -> Bool {
        return lhs.uid == rhs.uid && lhs.title == rhs.title
    }
}
