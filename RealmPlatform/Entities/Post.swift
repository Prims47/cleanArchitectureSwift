//
//  Post.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import RealmSwift
import Domain

final class Post: Object {
    @objc dynamic var uid: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var body: String = ""

    override static func primaryKey() -> String? {
        return "uid"
    }
}

// MARK: - DomainConvertibleType
extension Post: DomainConvertibleType {
    typealias DomainType = Domain.Post

    func asDomain() -> DomainType {
        return Domain.Post(uid: uid, title: title, body: body)
    }
}

// MARK: - RealmRepresentable
extension Post: RealmRepresentable {
    typealias RealmType = Post

    func asRealm() -> RealmType {
        let post = Post()
        post.uid = uid
        post.title = title
        post.body = body

        return post
    }
}
