//
//  operationList.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/18.
//

import SwiftUI

struct operationList: View {
    @Binding var opeList: [OpeImageValue]
    @Binding var opeLen: Int
    var body: some View {
        /*let rows: [GridItem] =
                Array(repeating: .init(.fixed(20)), count: 2)*/
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) { // カラム数の指定
                ForEach((0...23), id: \.self) { index in
                    Button(action: {}) {
                        if index < opeLen {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.brown, lineWidth: 3)
                                opeList[index].image()
                            }
                            .frame(width: 65, height: 65)
                            .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        } else {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(.brown.opacity(0.5), style: StrokeStyle(lineWidth: 3, dash: [8]))
                                opeList[index].image()
                            }
                            .frame(width: 65, height: 65)
                            .padding(/*@START_MENU_TOKEN@*/.all, 15.0/*@END_MENU_TOKEN@*/)
                        }
                    }
                }
            }.padding()
        }
    }
}

enum OpeImageValue {
    case plus
    case right
    case left
    case up
    case down
    case turnr
    case turnl
    case rotater
    case rotatel
    case big
    case small
    func image() -> some View {
        switch( self ){
            case .plus:
                return Image(systemName: "plus")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown.opacity(0.5))
                .font(.system(size: 40)) /*as! Image*/
            case .right:
                return Image(systemName: "arrow.right")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .left:
                return Image(systemName: "arrow.left")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .up:
                return Image(systemName: "arrow.up")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .down:
                return Image(systemName: "arrow.down")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .turnr:
                return Image(systemName: "arrow.turn.up.right")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .turnl:
                return Image(systemName: "arrow.turn.up.left")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .rotater:
                return Image(systemName: "arrow.clockwise")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .rotatel:
                return Image(systemName: "arrow.counterclockwise")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .big:
                return Image(systemName: "arrow.up.left.and.arrow.down.right")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .small:
                return Image(systemName: "arrow.down.right.and.arrow.up.left")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
        }
    }
}

struct operationList_Previews: PreviewProvider {
    static var previews: some View {
        operationList(opeList: .constant([OpeImageValue](repeating: .plus, count: 24)), opeLen: .constant(0))
    }
}

