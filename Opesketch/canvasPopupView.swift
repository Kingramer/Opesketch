//
//  canvasPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct canvasPopupView: View {
    @Binding var isPresent:Bool
    @Binding var canvasColor:Color
    var body: some View {
        VStack {
            HStack {
                Button(action: {canvasColor = Color(.white)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                Button(action: {canvasColor = Color(.red)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.red)
                Button(action: {canvasColor = Color(.blue)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.blue)
                Button(action: {canvasColor = Color(.yellow)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.yellow)
                Button(action: {canvasColor = Color(.green)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.green)
            }
            HStack {
                Button(action: {canvasColor = Color(.black)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                Button(action: {canvasColor = Color(.orange)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.orange)
                Button(action: {canvasColor = Color(.gray)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                Button(action: {canvasColor = Color(.cyan)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.cyan)
                Button(action: {canvasColor = Color(.purple)}) {
                    RoundedRectangle(cornerRadius: 10)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/80.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.purple)
            }
        }
    }
}

enum ColorValue {
    case White
    case Black
    case Red
    case Blue
    func color() -> Color {
        switch( self ){
            case .White:
                return Color(UIColor.white)
            case .Black:
                return Color(UIColor.black)
            case .Red:
                return Color(UIColor.red)
            case .Blue:
                return Color(UIColor.blue)
        }
    }
}


// struct colorButton: Button<<#Label: View#>> {
//     let padding: Float
//     let frame: Float
//     init(padding, frame) {
//         self.padding(.all, 10.0)
//     }
// }

struct canvasPopupView_Previews: PreviewProvider {
    static var previews: some View {
        canvasPopupView(isPresent: .constant(false), canvasColor: .constant(.white))
    }
}
