// mccCore.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

#if os(OSX)
import AppKit
#else
import Foundation
#endif

public struct MccCore {
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
            return "\(textToConvert)" + NSLocalizedString(
                " in Morse: ",
                bundle: .module,
                comment: "Output line") + "\(conversionResult)\n"
        }
    }
    
    public func copyToClipboard(textToCopy: String) {
        #if os(OSX)
         let pasteBoard = NSPasteboard.general
         pasteBoard.clearContents()
         pasteBoard.setString(textToCopy, forType: .string)
         print(NSLocalizedString("Result copied to clipboard!",
                                 comment: "Clipboard confirmation"))
        #else
         print(NSLocalizedString("""
            Copying to system clipboard is only available on macOS.
            On Linux, try pipeing 'xclip -selection clipboard', or
            any other clipboard manager you might use.
            On Haiku, use the 'clipboard' CLI utility.
         """, comment: "Error message"))
        #endif
    }
}

//class Locale {
//    let bundle = localizationBundle(
//        forLanguage: Locale.current.languageCode ?? "en")
//    
//    func localizationBundle(forLanguage language: String) -> Bundle? {
//         if let path = Bundle.module.path(forResource: language,
//                                          ofType: "lproj") {
//             return Bundle(path: path)
//         } else {
//             return nil
//         }
//     }
//}
