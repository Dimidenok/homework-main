//
//  Case3WriteId.swift
//  meowleUITests
//
//  Created by Олег on 28.05.2024.
//

import XCTest


final class Case3WriteId: BasePage {
    
    // MARK: - Tests
    
    func testLogOut(){
        openApp(isAuthorised: true)
        
        SettingsPage()
            .tapSettingButton()
            .checkThatSettingsScreenIsOpened()
            .tapLogOutButton()
        MeowleAuthPage()
            .checkThatAuthScreenIsOpened()
            .assertAuthTitle()
        
    }
}

