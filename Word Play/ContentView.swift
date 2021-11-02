//
//  ContentView.swift
//  Word Play
//
//  Created by Student on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("Please enter the requested words below!")
                HStack {
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "Adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "Type of Bird", variable: $words.typeofbird)
                    CustomTextField(placeholder: "Room in House", variable: $words.roominhouse)
                   
                }
                HStack {
                    CustomTextField(placeholder: "Verb Past Tense", variable: $words.verbpast)
                    CustomTextField(placeholder: "Verb", variable: $words.verb)
                }
                HStack {
                    CustomTextField(placeholder: "Verb Ending With ING", variable: $words.verbwing0)
                    CustomTextField(placeholder: "Verb Ending With ING", variable: $words.verbwing1)
                }
                HStack {
                    CustomTextField(placeholder: "Noun", variable: $words.noun0)
                    CustomTextField(placeholder: "Noun", variable: $words.noun1)
                    CustomTextField(placeholder: "Noun Plural", variable: $words.nounp)
                }
                HStack {
                    CustomTextField(placeholder: "Liquid", variable: $words.liquid)
                    CustomTextField(placeholder: "Relatives Name", variable: $words.relativesname)
                }
                HStack {
                    CustomTextField(placeholder: "Name of Body Part Plural", variable: $words.nameofbodypartplural)

                }
                Spacer()
                NavigationLink("Next", destination: StoryView(words : words))
            }
            .navigationTitle("Word Play")
        }
    }
}

struct CustomTextField: View {
    let placeholder: String
    let variable: Binding<String>
    var body: some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}

struct Words {
    var adjective0 = ""
    var adjective1 = ""
    var typeofbird = ""
    var roominhouse = ""
    var relativesname = ""
    var verbpast = ""
    var verbwing0 = ""
    var verbwing1 = ""
    var verb = ""
    var noun0 = ""
    var noun1 = ""
    var nounp = ""
    var liquid = ""
    var nameofbodypartplural = ""
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


