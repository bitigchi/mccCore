// mccCore.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

#if os(OSX)
 import AppKit
#else
 import Foundation
#endif

public struct mccCore {
    
    public init() {}
    let converter = MorseCodeConverter()
    
    public func executeProgramFunction(textToConvert: String,
                                       withoutSpace: Bool,
                                       copy: Bool,
                                       morseOnly: Bool) -> String {
        let conversionResult =
            converter.convertToMorse(textToConvert: textToConvert,
                                     withoutSpace: withoutSpace)
        
        if copy {
            copyToClipboard(textToCopy: conversionResult)
        }
        
        if morseOnly {
            return conversionResult
        } else {
            return "\n\"" +
            textToConvert +
            "\" in morse: " +
            conversionResult + "\n"
        }
    }
    
    func copyToClipboard(textToCopy: String) {
        #if os(OSX)
         let pasteBoard = NSPasteboard.general
         pasteBoard.clearContents()
         pasteBoard.setString(textToCopy, forType: .string)
         print("Result copied to clipboard!")
        #else
         print("""
            Copying to system clipboard is only available on macOS.
            On Linux, try pipeing 'xclip -selection clipboard', or
            any other clipboard manager you might use.
         """)
        #endif
    }
}
