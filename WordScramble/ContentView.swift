//
//  ContentView.swift
//  WordScramble
//
//  Created by Leoni Bernabe on 22/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var vari:String = ""
    let people = ["Juan", "Ari", "Pedro", "Pepe", "Chalino"]
    @State private var isEnabled = false
    
    var body: some View {
        Image(systemName: "globe")
            .imageScale(.large)
            .foregroundStyle(.tint)
        Text("Hello World")
            .padding()
        Button("ok"){
            testString()
        }
    }
    
    func testString() {
        let word = "swift"
        let checker = UITextChecker()
        
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        
        let allGood = misspelledRange.location == NSNotFound
    }
}

#Preview {
    ContentView()
}
