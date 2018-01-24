//
//  Repository.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import RealmSwift
import Domain

final class PostRepository<Repository> where Repository: AbstractRepositoryProtocol, Repository.T == Domain.Post {
}
