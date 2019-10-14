//
//  3x3Grid.swift
//  Guess the Flag
//
//  Created by Michele Galvagno on 13/10/2019.
//  Copyright © 2019 Michele Galvagno. All rights reserved.
//

import SwiftUI

/// **Test**: create a 3x3 grid!
/// This is very buggy
var counter = 1

struct _3x3Grid: View {
    var body: some View {
        VStack {
            ForEach(0 ..< 3) { _ in
                HStack {
                    ForEach(0 ..< 3) { _ in
                        self.createText()
                            .frame(width: 10, height: 10, alignment: .center)
                            .padding()  
                            .border(Color.black, width: 4)
                    }
                }
            }
        }
    }
}

extension _3x3Grid {
    func createText() -> some View {
        if counter > 9 {
            counter = 1
        }
        
        let text = Text("\(counter)")
        counter += 1
        
        return text
    }
}

struct _3x3Grid_Previews: PreviewProvider {
    static var previews: some View {
        _3x3Grid()
    }
}
