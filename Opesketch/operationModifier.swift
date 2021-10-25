//
//  operationModifier.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/22.
//

import SwiftUI

struct operationModifier: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

/*
struct operationRight {
    @Binding var currentPos:CGPoint
    @Binding var rotatePos:CGPoint
    @Binding var moveRange:CGFloat
    func body(content: Content) -> {
        
    }
}
*/

/*
func opeRight() {
    
    @Binding var currentPos:CGPoint
    @Binding var rotatePos:CGPoint
    @Binding var moveRange:CGFloat
    
    withAnimation {
        currentPos.x += moveRange
        rotatePos.x += 1
    }
}
*/

struct operationModifier_Previews: PreviewProvider {
    static var previews: some View {
        operationModifier()
    }
}
