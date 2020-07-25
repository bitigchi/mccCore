//
//  File.swift
//  
//
//  Created by Emir SARI on 25.07.2020.
//

import Foundation

extension String {
    func replaceDoubleQuotes(_ input: String,
                             doubleQuotesArray: [String]) -> String {
        var textWithSimpleDoubleQuotes: String?
        
        for doubleQuote in doubleQuotesArray {
            if input.contains(doubleQuote) {
                textWithSimpleDoubleQuotes =
                    input.replacingOccurrences(of: doubleQuote, with: "\"")
            }
        }
        return textWithSimpleDoubleQuotes ?? input
    }
    
    func replaceSingleQuotes(_ input: String,
                             singleQuotesArray: [String]) -> String {
        var textWithSimpleSingleQuotes: String?
        
        for singleQuote in singleQuotesArray {
            if input.contains(singleQuote) {
                textWithSimpleSingleQuotes =
                    input.replacingOccurrences(of: singleQuote, with: "'")
            }
        }
        return textWithSimpleSingleQuotes ?? input
    }
    
    func replaceHyphensAndDashes(_ input: String,
                                 hyphensAndDashesArray: [String]) -> String {
        var textWithHyphensOrDashes: String?
        
        for hyphenOrDash in hyphensAndDashesArray {
            if input.contains(hyphenOrDash) {
                textWithHyphensOrDashes =
                    input.replacingOccurrences(of: hyphenOrDash, with: "-")
            }
        }
        return textWithHyphensOrDashes ?? input
    }
}
