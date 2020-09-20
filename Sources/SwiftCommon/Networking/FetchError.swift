//
//  FetchError.swift
//  AppStoreReviews
//
//  Created by Erkan Ugurlu on 8.08.2020.
//  Copyright © 2020 ING. All rights reserved.
//

public enum FetchError: Error {
    case invalidUrl
    case invalidResponse
    case protocolError(Error)
}
