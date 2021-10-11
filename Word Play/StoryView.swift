//
//  SwiftUIView.swift
//  Word Play
//
//  Created by Student on 10/8/21.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        Text(writeStory())
    }
    func writeStory() -> String {
        return "It was a \(words.adjective0), cold Noveber day. I woke up to the \(words.adjective1) smell of \(words.typeofbird) roasting in the oven \(words.roominhouse) downstairs. I \(words.verbpast) down the stairs to see if I could help \(words.verb) the dinner. My mom said, 'See if \(words.relativesname) needs a fresh \(words.noun0). 'So I carried a tray of glasses full of \(words.liquid) into the \(words.verbwing0) room. When I got there I couldn't belive my \(words.nameofbodypartplural)! There were \(words.nounp) \(words.verbwing1) on the \(words.noun1)!"
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(words: Words())
    }
}
