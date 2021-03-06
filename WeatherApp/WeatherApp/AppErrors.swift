//
//  AppErrors.swift
//  WeatherApp
//
//  Created by Leandro Wauters on 1/20/19.
//  Copyright © 2019 Pursuit. All rights reserved.
//

import Foundation

enum AppError: Error {
    case badURL(String)
    case networkError(Error)
    case badStatusCode(String)
    case jsonDecodingError(Error)
    case noImages(String)
    case noCity(String)
    public func errorMessage() -> String {
        switch self {
        case .badURL(let message):
            return "bad url: \(message)"
        case .networkError(let error):
            return "network error: \(error)"
        case .badStatusCode(let message):
            return "bad status code: \(message)"
        case .jsonDecodingError(let error):
            return "decoding error: \(error)"
        case .noImages(let message):
            return "no images: \(message)"
        case .noCity(let message):
            return "no city found: \(message)"
        }
    }
}
