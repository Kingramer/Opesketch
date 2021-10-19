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
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: {canvasColor = Color(.black)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.black)
                    Button(action: {canvasColor = Color(.white)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.white)
                    Button(action: {canvasColor = Color(.red)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.red)
                    Button(action: {canvasColor = Color(.blue)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.blue)
                    Button(action: {canvasColor = Color(.yellow)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.yellow)
                    Button(action: {canvasColor = Color(.green)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.green)
                    Button(action: {canvasColor = Color(.orange)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.orange)
                    Button(action: {canvasColor = Color(.gray)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.gray)
                    Button(action: {canvasColor = Color(.cyan)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.cyan)
                    Button(action: {canvasColor = Color(.purple)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(.purple)
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/)
                Group {
                    Button(action: {canvasColor = Color.pink}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(Color.pink)
                    Button(action: {canvasColor = Color.indigo}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(Color.indigo)
                    Button(action: {canvasColor = Color.teal}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(Color.teal)
                    Button(action: {canvasColor = Color(red: 0.96875, green: 0.953125, blue: 0.8984375)}) {
                        RoundedRectangle(cornerRadius: 10)
                    }
                    .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/)
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

struct canvasPopupView_Previews: PreviewProvider {
    static var previews: some View {
        canvasPopupView(isPresent: .constant(false), canvasColor: .constant(.white))
    }
}
