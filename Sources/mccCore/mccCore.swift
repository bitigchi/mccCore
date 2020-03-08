// mccCore.swift
// Author: Emir Sarı
// See LICENSE for details

import AppKit

public struct mccCore {
    
    public init() {}
    let converter = MorseCodeConverter()
    
    public func executeProgramFunction(textToConvert: String, withoutSpace: Bool, copy: Bool) -> String {
        let conversionResult = converter.convertToMorse(textToConvert: textToConvert, withoutSpace: withoutSpace)
        
        if copy {
            copyToClipboard(textToCopy: conversionResult)
        }
        return "\n\"" + textToConvert + "\" in morse: " + conversionResult + "\n"
    }
    
    func copyToClipboard(textToCopy: String) {
        let pasteBoard = NSPasteboard.general
        pasteBoard.clearContents()
        pasteBoard.setString(textToCopy, forType: .string)
        print("Result copied to clipboard!")
    }
}
