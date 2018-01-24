//
//  RealmConfiguration.swift
//  RealmPlatform
//
//  Created by Ilan B on 24/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import RealmSwift

struct RealmConfiguration {
    static func getRealmConfiguration() -> Realm.Configuration {
        // For unit test
        guard NSClassFromString("XCTest") == nil else {
            var config = Realm.Configuration()
            config.inMemoryIdentifier = "XCTEST"

            return config
        }

        var config = Realm.Configuration()

        return config
    }
}
