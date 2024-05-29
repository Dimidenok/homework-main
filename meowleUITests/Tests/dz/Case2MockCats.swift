//
//  Case2MockCats.swift
//  meowleUITests
//
//  Created by Олег on 28.05.2024.
//


import Foundation
import XCTest
import Swifter

private extension String {
    static let mockedCat1Stab1 = "Котик №1 - стаб №1"
    static let mockedCat2Stab1 = "Котик №2 - стаб №1"
    static let mockedCat3Stab1 = "Котик №3 - стаб №1"
    
    static let mockedCat1Stab2 = "Котик №1 - стаб №2"
    static let mockedCat2Stab2 = "Котик №2 - стаб №2"
    static let mockedCat3Stab2 = "Котик №3 - стаб №2"
}

final class Case2MockCats: BasePage {
    
    // MARK: - Tests
    

    func testMock() {
        
        setNetworkStub(for: "/core/cats/allByLetter",
                       jsonFilename: "all_cats_1")
        
        openApp(isAuthorised: true)
        
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapAllNamesButton()
            .assertExistanceNameOf(cat: .mockedCat1Stab1)
            .assertExistanceNameOf(cat: .mockedCat2Stab1)
            .assertExistanceNameOf(cat: .mockedCat3Stab1)
            .tapSearchButton()
        
        setNetworkStub(for: "/core/cats/allByLetter",
                       jsonFilename: "all_cats_2")
        
     
        MeowleSearchCatPage()
            .checkThatSearchScreenIsOpened()
            .tapAllNamesButton()
            .assertExistanceNameOf(cat: .mockedCat1Stab2)
            .assertExistanceNameOf(cat: .mockedCat2Stab2)
            .assertExistanceNameOf(cat: .mockedCat3Stab2)
        
    }
}

