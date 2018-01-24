//
//  AbstractRepository.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import RealmSwift

protocol AbstractRepositoryProtocol {
    associatedtype T

    func getAll() -> [T]?
    func save(entity: T)
}

class AbstractRepository<T: RealmRepresentable>: AbstractRepositoryProtocol where T.RealmType: Object,
                         T == T.RealmType.DomainType {
    let realm: Realm?

    init() {
        self.realm = try! Realm(configuration: RealmConfiguration.getRealmConfiguration())
    }

    func getAll() -> [T]? {
        guard let realm = self.realm else { return nil }

        let realmResults = realm.objects(T.RealmType.self)

        return realmResults.map({ element -> T.RealmType.DomainType in
            return element.asDomain()
        })
    }

    func save(entity: T) {
        guard let realm = self.realm else { return }

        try! realm.write {
            realm.add(entity.asRealm(), update: true)
        }
    }
}
