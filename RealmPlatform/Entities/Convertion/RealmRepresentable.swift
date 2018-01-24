//
//  RealmRepresentable.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation

protocol RealmRepresentable {
    associatedtype RealmType: DomainConvertibleType

    func asRealm() -> RealmType
}
