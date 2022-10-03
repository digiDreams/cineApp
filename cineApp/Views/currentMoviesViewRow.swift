//
//  currentMoviesViewRow.swift
//  cineApp
//
//  Created by Apprenant 16 on 03/10/2022.
//

import SwiftUI

struct currentMoviesViewRow: View {
    var body: some View {
        HStack {
            Image(systemName: "film")
            Text("Le titre du film")
        }
    }
}

struct currentMoviesViewRow_Previews: PreviewProvider {
    static var previews: some View {
        currentMoviesViewRow()
    }
}
