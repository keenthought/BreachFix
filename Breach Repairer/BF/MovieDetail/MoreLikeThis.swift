//
//  MoreLikeThis.swift
//  Breach Repairer
//
//  Created by Jack Ntihaniraho on 2022-05-10.
//

import SwiftUI

struct MoreLikeThis: View {
    
    var movies: [Movie]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        
            LazyVGrid(columns: columns) {
                
                ForEach(0..<movies.count, id: \.self){ index in
                    StandardHomeMovie(movie: movies[index])
                }
                
            
        }
    }
}

struct MoreLikeThis_Previews: PreviewProvider {
    static var previews: some View {
        MoreLikeThis(movies: exampleMovies)
    }
}
