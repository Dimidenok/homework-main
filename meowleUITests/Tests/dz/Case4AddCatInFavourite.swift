//
//  Case4AddCatInFavourite.swift
//  meowleUITests
//
//  Created by Олег on 28.05.2024.
//

import XCTest

private extension String {
    static let catBaton = "Батон"
    static let nameOfCatAccordingSearchResults = "Батон ♂"
}

final class Case4AddCatInFavourite: BasePage {
    
    // MARK: - Tests
    
    // Учимся прописывать (accessibilityIdentifyer) элементу. (Поиск котика):
    func testAddInFavourite() {
        
        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapSearchField()
            .typeTextTo(textField: .catBaton)
            .tapSearchButtonWithAccessibilityIdentifyer()
            .assertExistanceNameOf(cat: .catBaton)
            .tapCat(name: .catBaton)
        
        CatCardPage()
            .assertExistanceNameOf(cat: .nameOfCatAccordingSearchResults)
            .tapFavouriteButton()
        
        FavouritePage()
            .tapFavouriteTabButton()
            .assertExistanceNameOf(cat: .catBaton)
    }
}
