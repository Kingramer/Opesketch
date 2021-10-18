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
            LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) { // カラム数の指定
                ForEach((1...24), id: \.self) { index in
                    Button(action: {}) {
                        ZStack(alignment: .center) {
                            RoundedRectangle(cornerRadius: 10)
                                .stroke(.brown, style: StrokeStyle(lineWidth: 3, dash: [8]))
                            Text("\(index)")
                        }
                        .frame(width: 65, height: 65)
                        .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                    }
                }
            }.padding()
        }
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
