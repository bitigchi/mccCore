// MorseCodeConverter.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

import Foundation

public struct MorseCodeConverter {
    public init() {}
    
    let morseDict = MorseCodeList()
    let doubleQuotesArray = ["“",
                             "”",
                             "‟",
                             "″",
                             "„",
                             "˝",
                             "❝",
                             "❞",
                             "〞",
                             "〝",
                             "＂",
                             "〟",
                             "‶",
                             "‷",
                             "‴",
                             "⁗",
                             "‶",
                             "״"
                             ]
    let singleQuotesArray = ["‘","’","‛","‚","′","´","`","❛","❜","＇"]
    let hyphensAndDashesArray = ["–"," ­","–","‑","—","‒","‐","―","⁃"]
    
    public func convertToMorse(textToConvert: String,
                               withoutSpace: Bool) -> (String) {
        let textWithoutFancyDoubleQuotes = textToConvert
            .replaceDoubleQuotes(textToConvert,
                                 doubleQuotesArray: doubleQuotesArray)
        let textWithoutFancyQuotes = textWithoutFancyDoubleQuotes
            .replaceSingleQuotes(textWithoutFancyDoubleQuotes,
                                 singleQuotesArray: singleQuotesArray)
        let textWithoutFancyQuotesHyphensAndDashes = textWithoutFancyQuotes
            .replaceHyphensNDashes(textWithoutFancyQuotes,
                                   hyphensAndDashesArray: hyphensAndDashesArray)
        
        var morseText = ""
        var characterArray = [String]()
        
        if textToConvert.contains("İ") {
            characterArray = textWithoutFancyQuotesHyphensAndDashes
                .lowercased(with: Locale(identifier: "tr"))
                .map { String($0) }
        } else {
            characterArray = textWithoutFancyQuotesHyphensAndDashes.lowercased()
                .map { String($0) }
        }
        
        for character in characterArray {
            for (key, value) in morseDict.latinMorseCode {
                if key.contains(character) {
                    switch withoutSpace {
                    case true:
                        morseText += value
                    case false:
                        morseText += value + " "
                    }
                }
            }
        }
        return morseText.isEmpty ? textToConvert : morseText
    }
}

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

    func replaceHyphensNDashes(_ input: String,
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
