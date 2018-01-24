//
//  PostUseCase.swift
//  RealmPlatform
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation
import Domain

//final class PostUseCase<Repository>: Domain.PostsUseCase where Repository: AbstractRepositoryProtocol, Repository.T == Post {
//    private let repository: Repository
//
//    init(repository: Repository) {
//        self.repository = repository
//    }
//
//    func posts() -> [Post]? {
//        return repository.getAll()
//    }
//
//    func save(post: Post, success: @escaping Domain.PostsUseCase.SuccessCompletion,
//              failure: @escaping Domain.PostsUseCase.FailureCompletion) {
//        success()
//    }
//}
