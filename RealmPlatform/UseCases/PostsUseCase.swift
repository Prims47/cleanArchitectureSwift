//
//  PostUseCase.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import Domain

struct PostsUseCase<Repository>: Domain.PostsUseCase where Repository: AbstractRepositoryProtocol,
                    Repository.T == Domain.Post {
    private let repository: Repository

    init(repository: Repository) {
        self.repository = repository
    }

    func posts() -> [Domain.Post]? {
        return self.repository.getAll()
    }

    func save(post: Domain.Post, success: @escaping PostsUseCase.SuccessCompletion) {
        self.repository.save(entity: post)

        success()
    }
}
