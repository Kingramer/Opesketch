//
//  operationList.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/18.
//

import SwiftUI

struct operationList: View {
    @Binding var opeList: [OpeImageValue]
    @Binding var opeProgress: [Color]
    @Binding var opeLen: Int
    @State var rectsize:CGFloat = 60
    var body: some View {
        let bounds = UIScreen.main.bounds
        let deviceWidth:CGFloat = bounds.width
        let deviceHeight:CGFloat = bounds.height
        let baseWidth:CGFloat = (deviceWidth/CGFloat(2) - CGFloat(10)) * CGFloat(0.85) / CGFloat(4) - CGFloat(10)
        let baseHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.84) / CGFloat(6)
        let cornerSize:CGFloat = baseWidth * CGFloat(0.095)
        let lineSize:CGFloat = baseWidth * CGFloat(0.028)
        //let frameWidth:CGFloat = baseWidth * CGFloat(0.65)
        let frameSize:CGFloat = baseHeight * CGFloat(0.6)
        let textHeight:CGFloat = baseHeight * CGFloat(0.92)
        let textSize:CGFloat = baseHeight * CGFloat(0.125)
        let imageSize:CGFloat = baseWidth * CGFloat(0.4)
        let paddingWidth:CGFloat = baseWidth * CGFloat(0.12)
        let paddingHeight:CGFloat = baseHeight * CGFloat(0.137)
        ScrollView {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 4)) {
                ForEach((0...23), id: \.self) { index in
                    Button(action: {}) {
                        if index < opeLen {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: cornerSize)
                                    .stroke(opeProgress[index+1], lineWidth: lineSize)
                                    .frame(width: frameSize, height: frameSize)
                                Text("\(index+1)")
                                    .fontWeight(.bold)
                                    .frame(width: frameSize, height: textHeight, alignment: .top)
                                    .foregroundColor(opeProgress[index+1])
                                    //.font(.caption)
                                    .font(.system(size: textSize))
                                Image(systemName: opeList[index].name())
                                    .frame(width: frameSize, height: frameSize)
                                    .foregroundColor(opeProgress[index+1])
                                    .font(.system(size: imageSize))
                            }
                            .foregroundColor(opeProgress[index+1])
                            .frame(width: frameSize, height: frameSize)
                            .padding(EdgeInsets(top: paddingHeight, leading: paddingWidth, bottom: paddingHeight, trailing: paddingWidth))
                        } else {
                            ZStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: cornerSize)
                                    .stroke(.brown.opacity(0.5), style: StrokeStyle(lineWidth: lineSize, dash: [8]))
                                    .frame(width: frameSize, height: frameSize)
                                Text("\(index+1)")
                                    .frame(width: frameSize, height: textHeight, alignment: .top)
                                    .foregroundColor(.brown)
                                    //.font(.caption)
                                    .font(.system(size: textSize))
                                Image(systemName: opeList[index].name())
                                    .frame(width: frameSize, height: frameSize)
                                    .foregroundColor(.brown.opacity(0.5))
                                    .font(.system(size: imageSize))
                            }
                            .frame(width: frameSize, height: frameSize)
                            .padding(EdgeInsets(top: paddingHeight, leading: paddingWidth, bottom: paddingHeight, trailing: paddingWidth))
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
    case delete
    case alldele
    func name() -> String {
        switch( self ){
            case .plus:
                return "plus"
            case .right:
                return "arrow.right"
            case .left:
                return "arrow.left"
            case .up:
                return "arrow.up"
            case .down:
                return "arrow.down"
            case .turnr:
                return "arrow.turn.up.right"
            case .turnl:
                return "arrow.turn.up.left"
            case .rotater:
                return "arrow.clockwise"
            case .rotatel:
                return "arrow.counterclockwise"
            case .big:
                return "arrow.up.left.and.arrow.down.right"
            case .small:
                return "arrow.down.right.and.arrow.up.left"
            case .delete:
                return "minus"
            case .alldele:
                return "trash"
        }
    }
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
            case .delete:
                return Image(systemName: "minus")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
            case .alldele:
                return Image(systemName: "trash")
                .frame(width: 60.0, height: 60.0)
                .foregroundColor(.brown)
                .font(.system(size: 50))
        }
    }
}

struct operationList_Previews: PreviewProvider {
    static var previews: some View {
        operationList(opeList: .constant([OpeImageValue](repeating: .plus, count: 24)),opeProgress: .constant([Color](repeating: .brown, count: 25)) , opeLen: .constant(0))
    }
}

