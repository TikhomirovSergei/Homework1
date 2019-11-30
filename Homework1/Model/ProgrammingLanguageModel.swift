//
//  ProgrammingLanguageModel.swift
//  Homework1
//
//  Created by Сергей on 29/11/2019.
//  Copyright © 2019 digt. All rights reserved.
//

import Foundation

final class ProgrammingLanguagesModel: ObservableObject {
    
    @Published private(set) var languages = [
        ProgrammingLanguage(name: "SwiftUI", desription: "SwiftUI is an innovative, exceptionally simple way to build user interfaces across all Apple platforms with the power of Swift."),
        ProgrammingLanguage(name: "Java", desription: "Java is a general-purpose programming language that is class-based, object-oriented, and designed to have as few implementation dependencies as possible. It is intended to let application developers write once, run anywhere (WORA), meaning that compiled Java code can run on all platforms that support Java without the need for recompilation."),
        ProgrammingLanguage(name: "Objective-C", desription: "Objective-C is a general-purpose, object-oriented programming language that adds Smalltalk-style messaging to the C programming language. This is the main programming language used by Apple for the OS X and iOS operating systems and their respective APIs, Cocoa and Cocoa Touch. This reference will take you through simple and practical approach while learning Objective-C Programming language."),
        ProgrammingLanguage(name: "Javascript", desription: "JavaScript often abbreviated as JS, is a high-level, just-in-time compiled, object-oriented programming language that conforms to the ECMAScript specification. JavaScript has curly-bracket syntax, dynamic typing, prototype-based object-orientation, and first-class functions."),
        ProgrammingLanguage(name: "Python", desription: "Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python's design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects."),
        ProgrammingLanguage(name: "Kotlin", desription: "Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference. Kotlin is designed to interoperate fully with Java, and the JVM version of its standard library depends on the Java Class Library, but type inference allows its syntax to be more concise. Kotlin mainly targets the JVM, but also compiles to JavaScript or native code (via LLVM). Kotlin is sponsored by JetBrains and Google through the Kotlin Foundation.")
    ]
    
}
