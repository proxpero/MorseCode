import MorseCode

let dot = Point.dot
let dash = Point.dash

translate("Hello how are you?")
translate("I'm fine thanks! It's great to hear from you.")
translate("What have you beend up to? It's been a long time!")
translate("Yeah I'm been writing a Morse code translation program!")

/*
 https://en.wikipedia.org/wiki/Morse_code#Representation,_timing,_and_speeds

 International Morse code is composed of five elements:

 short mark, dot or "dit" (.): "dot duration" is one time unit long
 longer mark, dash or "dah" (-): three time units long
 inter-element gap between the dots and dashes within a character: one dot duration or one unit long
 short gap (between letters): three time units long
 medium gap (between words): seven time units long

 */

