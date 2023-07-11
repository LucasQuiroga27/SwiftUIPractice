//
//  CircleImage.swift
//  SwiftUIPractice
//
//  Created by Lucas Quiroga on 10/07/23.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("costaVerde")
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 3)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
