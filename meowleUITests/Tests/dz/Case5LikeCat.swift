//
//  Case5LikeCat.swift
//  meowleUITests
//
//  Created by Олег on 29.05.2024.
//

import XCTest

private extension String {
    static let catBaton = "Батон"
    static let nameOfCatAccordingSearchResults = "Батон ♂"
    static let oldCountOfLikes = "👍 5"
    static let newCountOfLikes = "👍 6"
}

final class Case5LikesCat: BasePage {
    
    // MARK: - Tests
    
    // Учимся прописывать (accessibilityIdentifyer) элементу. (Поиск котика):
    func testLikeCat() {
        
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
            .assertExistanceLike(likes: .oldCountOfLikes)
            .tapLikeButton()
            .assertExistanceLike(likes: .newCountOfLikes)
        
    }
}
