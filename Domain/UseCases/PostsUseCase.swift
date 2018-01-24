//
//  PostUseCase.swift
//  Domain
//
//  Created by Ilan B on 23/01/2018.
//  Copyright © 2018 Ilan B. All rights reserved.
//

import Foundation

public protocol PostsUseCase {
    typealias SuccessCompletion = () -> Void
    typealias FailureCompletion = (NSError) -> Void

    func posts() -> [Post]?
    func save(post: Post, success: @escaping SuccessCompletion, failure: @escaping FailureCompletion)
}
