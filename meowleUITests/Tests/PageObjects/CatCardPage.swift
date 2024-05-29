//
//  CatCardPage.swift
//  meowleUITests
//
//  Created by Олег on 29.05.2024.
//

import XCTest

private extension String {
    static let likeIdentifier = "likesButton"
    static let favouriteIdentifier = "favouriteButton"

}

final class CatCardPage: BasePage {
    
    // MARK: - Elements
    private lazy var favouriteButton = app.buttons[.favouriteIdentifier]
    private lazy var likeButton = app.buttons[.likeIdentifier]
    
    // MARK: - Actions
    
    // Тапнуть по кнопке звездочка
    @discardableResult
    func tapFavouriteButton() -> CatCardPage {
        favouriteButton.tap()
        return self
    }
    
    // Тапнуть по кнопке лайка
    @discardableResult
    func tapLikeButton() -> CatCardPage {
        likeButton.tap()
        return self
    }
    

    // MARK: - Asserts
    
    // Проверка наличия имени котика
    @discardableResult
    func assertExistanceNameOf(cat: String) -> CatCardPage {
        XCTAssertTrue(app.staticTexts[cat].waitForExistence(timeout: .timeout))
        return self
    }
    
    // Проверка количества лайков
    @discardableResult
    func assertExistanceLike(likes: String) -> CatCardPage {
        XCTAssertTrue(app.staticTexts[likes].waitForExistence(timeout: .timeout))
        return self
    }
    
}

