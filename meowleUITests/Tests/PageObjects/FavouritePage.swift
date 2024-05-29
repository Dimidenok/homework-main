//
//  FavouritePage.swift
//  meowleUITests
//
//  Created by Олег on 29.05.2024.
//

import XCTest

private extension String {
    static let favouriteIdentifier = "Избранное"
    static let favouriteScreenIdentifier = "Избранное"

}

final class FavouritePage: BasePage {
    
    // MARK: - Elements
    private lazy var favouriteTabButton = app.buttons[.favouriteIdentifier]
    private lazy var favouriteScreenTitle = app.otherElements[.favouriteScreenIdentifier]
    
    // MARK: - Actions
    
    //Тап по табе "Рейтинг"
    @discardableResult
    func tapFavouriteTabButton() -> FavouritePage {
        favouriteTabButton.tap()
        return FavouritePage()
    }
    


    
    
    // MARK: - Asserts
    

    // Проверка наличия имени котика
    @discardableResult
    func assertExistanceNameOf(cat: String) -> FavouritePage {
        XCTAssertTrue(app.staticTexts[cat].waitForExistence(timeout: .timeout))
        return self
    }
    
    @discardableResult
    func checkThatFavouriteScreenIsOpened() -> FavouritePage {
        XCTAssertTrue(favouriteScreenTitle.waitForExistence(timeout: .timeout))
        return self
    }
    
}
