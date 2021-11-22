//
//  LoggerServiceMock.swift
//  
//
//  Created by Martin Dutra on 22/11/21.
//

import Foundation
@testable import Logger

class LoggerServiceMock: LoggerService {

    var invokedOptional = false
    var invokedInfo = false
    var invokedDebug = false
    var invokedUnexpected = false
    var invokedFatal = false

    var fileUrls: [URL] {
        return []
    }

    func optional(_ error: Error?, _ detail: String?) -> Bool {
        invokedOptional = true
        return true
    }

    func info(_ string: String) {
        invokedInfo = true
    }

    func debug(_ string: String) {
        invokedDebug = true
    }

    func unexpected(_ reason: String, _ detail: String?) {
        invokedUnexpected = true
    }

    func fatal(_ reason: String, _ detail: String?) {
        invokedFatal = true
    }

}
