// MorseCodeList.swift
// Author: Emir Sarı
// Copyright © 2019-2020 Emir Sarı. All rights reserved.
// See LICENSE for details

import Foundation

struct MorseCodeList {
    let latinMorseCode = [
        "a": ".-",
        "b": "-...",
        "c": "-.-.",
        "d": "-..",
        "e": ".",
        "f": "..-.",
        "g": "--.",
        "h": "....",
        "i": "..",
        "j": ".---",
        "k": "-.-",
        "l": ".-..",
        "m": "--",
        "n": "-.",
        "o": "---",
        "p": ".--.",
        "q": "--.-",
        "r": ".-.",
        "s": "...",
        "t": "-",
        "u": "..-",
        "v": "...-",
        "w": ".--",
        "x": "-..-",
        "y": "-.--",
        "z": "--..",
        " ": "/",
        "0": "-----",
        "1": ".----",
        "2": "..---",
        "3": "...--",
        "4": "....-",
        "5": ".....",
        "6": "-....",
        "7": "--...",
        "8": "---..",
        "9": "----.",
        ".": ".-.-.-",
        ",": "--..--",
        "?": "..--..",
        "'": ".----.",
        "!": "-.-.--",
        "/": "-..-.",
        "(": "-.--.",
        ")": "-.--.-",
        "&": ".-...",
        ":": "---...",
        ";": "-.-.-.",
        "=": "-...-",
        "+": ".-.-.",
        "-": "-....-",
        "_": "..--.-",
        "\"": ".-..-.",
        "$": "...-..-",
        "@": ".--.-.",
        "¿": "..-.-",
        "¡": "--...-",
        "à": ".--.-",
        "á": ".--.-",
        "â": ".--.-",
        "å": ".--.-",
        "ä": ".-.-",
        "æ": ".-.-",
        "ą": ".-.-",
        "ć": "-.-..",
        "ĉ": "-.-..",
        "ç": "-.-..",
        "đ": "..-..",
        "ð": "..--.",
        "é": "..-..",
        "è": ".-..-",
        "ę": "..-..",
        "ĝ": "--.-.",
        "ğ": "--.-.",
        "ĥ": "----",
        "ı": "..",
        "ĵ": ".---.",
        "ł": ".-..-",
        "ń": "--.--",
        "ñ": "--.--",
        "ó": "---.",
        "ö": "---.",
        "ø": "---.",
        "ŝ": "...-.",
        "ş": "----",
        "š": "----",
        "þ": ".--..",
        "ü": "..--",
        "ŭ": "..--",
        "ź": "--..-.",
        "ż": "--..-"
    ]
    
    // TODO: Implement some kind of fancy initalization sequence
    //for the interactive mode with the prosigns below
    let prosigns = [
        "endOfWork": "...-.-",
        "error": "........",
        "invitationToTransmit": "-.-",
        "startingSignal": "-.-.-",
        "newPageSignal": ".-.-.",
        "understood": "...-.",
        "wait": ".-..."
    ]
}
