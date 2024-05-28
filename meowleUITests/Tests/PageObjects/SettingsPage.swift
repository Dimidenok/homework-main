//
//  SettingsPage.swift
//  meowleUITests
//
//  Created by Олег on 28.05.2024.
//

import XCTest

private extension String {
    static let settings = "Настройки"
    static let settingsViewControllerScreenIdentifier = "settingsScreenViewController"
    static let logOut = "logOutFromApplication"
    
}

final class SettingsPage: BasePage {
    
    // MARK: - Elements
    
    private lazy var settingButton = app.buttons[.settings]
    private lazy var logOutButton = app.buttons[.logOut]
    private lazy var settingsScreen = app.otherElements[.settingsViewControllerScreenIdentifier]
    
    // MARK: - Actions
    
    //Тап по табе "Рейтинг"
    @discardableResult
    func tapSettingButton() -> SettingsPage {
        settingButton.tap()
        return SettingsPage()
    }
    
    //Тап по кнопке выхода
    @discardableResult
    func tapLogOutButton() -> MeowleAuthPage {
        logOutButton.tap()
        return MeowleAuthPage()
    }
    
    
    // MARK: - Asserts
    
    //Проверка что экран "Настройки" открылся
    @discardableResult
    func checkThatSettingsScreenIsOpened() -> SettingsPage {
        XCTAssertTrue(settingsScreen.waitForExistence(timeout: .timeout))
        return self
    }
    
    //Проверка наличия надписи
    @discardableResult
    func assertSettingsTitle(nameUser: String) -> SettingsPage {
        XCTAssertTrue(app.staticTexts[nameUser].waitForExistence(timeout: .timeout))
        return self
    }
    
}
