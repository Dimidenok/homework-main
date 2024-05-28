//
//  Case1Authorization.swift
//  meowleUITests
//
//  Created by Олег on 27.05.2024.
//

import XCTest

private extension String {
    static let nameAuthorization = "Олег"
    static let nameOfUser = "Привет, Олег!"
}

final class Case1Authorization: BasePage {
    
    // MARK: - Tests
    
    func testCheckUser() {
        
        openApp(isAuthorised: false)
        
        MeowleAuthPage()
            .taptextField()
            .typeTextTo(textField: .nameAuthorization)
            .tapEnterButton()
        SettingsPage()
            .tapSettingButton()
            .checkThatSettingsScreenIsOpened()
            .assertSettingsTitle(nameUser: .nameOfUser)
            
    }
}
