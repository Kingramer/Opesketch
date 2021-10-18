//
//  operationList.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/18.
//

import SwiftUI

struct operationList: View {
    var body: some View {
        /*let rows: [GridItem] =
                Array(repeating: .init(.fixed(20)), count: 2)*/
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 5)) { // カラム数の指定
                ForEach((1...100), id: \.self) { index in
                    Text("\(index)")
                        .frame(width: 60, height: 60)
                }
            }
        }
        /*ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .top) {
                ForEach((0...79), id: \.self) {
                    let codepoint = $0 + 0x1f600
                    let codepointString = String(format: "%02X", codepoint)
                    Text("\(codepointString)")
                        .font(.footnote)
                    let emoji = String(Character(UnicodeScalar(codepoint)!))
                    Text("\(emoji)")
                        .font(.largeTitle)
                }
            }
        }*/
        .frame(width: 500)
    }
}

struct operationList_Previews: PreviewProvider {
    static var previews: some View {
        operationList()
    }
}

/*
Group {
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.black)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.white)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.red)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.blue)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.yellow)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.green)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.orange)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.gray)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.cyan)
    Button(action: {}) {
        RoundedRectangle(cornerRadius: 10)
    }
    .foregroundColor(.purple)
}
.padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
.frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/)
*/
