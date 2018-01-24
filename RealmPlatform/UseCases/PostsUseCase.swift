//
//  PostUseCase.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import Domain

struct PostsUseCase<Repository>: Domain.PostsUseCase where Repository: AbstractRepositoryProtocol, Repository.T == Post {
    private let repository: Repository

    init(repository: Repository) {
        self.repository = repository
    }

    func posts() -> [Post]? {
        return self.repository.getAll()
    }

//    func save(post: Post, success: @escaping PostsUseCase.SuccessCompletion,
//              failure: @escaping PostsUseCase.FailureCompletion) {
//        self.repository.save(entity: post)
//
//        success()
//    }
}
