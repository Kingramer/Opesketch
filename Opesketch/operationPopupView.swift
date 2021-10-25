//
//  operationPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct operationPopupView: View {
    @Binding var isPresent: Bool
    @Binding var opeList: [OpeImageValue]
    @Binding var opeExeList: [OpeExecuteValue]
    @Binding var opeLen: Int
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .right
                            opeExeList[opeLen] = .opeRight
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("right")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .left
                            opeExeList[opeLen] = .opeLeft
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("left")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .up
                            opeExeList[opeLen] = .opeUp
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.up")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("up")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .down
                            opeExeList[opeLen] = .opeDown
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.down")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("down")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .turnr
                            opeExeList[opeLen] = .opeTurnr
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.turn.up.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("turn R")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .turnl
                            opeExeList[opeLen] = .opeTurnl
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.turn.up.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("turn L")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .rotater
                            opeExeList[opeLen] = .opeRotater
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.clockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotate1")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .rotatel
                            opeExeList[opeLen] = .opeRotatel
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.counterclockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotate2")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .big
                            opeExeList[opeLen] = .opeBig
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.up.left.and.arrow.down.right")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("big")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .small
                            opeExeList[opeLen] = .opeSmall
                            opeLen += 1
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.down.right.and.arrow.up.left")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("small")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/110.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
                Group {
                    Button(action: {
                        if opeLen != 0 {
                            opeLen -= 1
                            opeList[opeLen] = .plus
                            opeExeList[opeLen] = .opeNothing
                        }
                    }) {
                        VStack {
                            Image(systemName: "minus")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("delete")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        opeList = [OpeImageValue](repeating: .plus, count: 24)
                        opeExeList = [OpeExecuteValue](repeating: .opeNothing, count: 24)
                        opeLen = 0
                    }) {
                        VStack {
                            Image(systemName: "rays")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("all.del")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.all, 7.0/*@END_MENU_TOKEN@*/)
                .frame(width: /*@START_MENU_TOKEN@*/90.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/110.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(.brown)
            }
        }
    }
}

struct operationPopupView_Previews: PreviewProvider {
    static var previews: some View {
        operationPopupView(isPresent: .constant(false), opeList: .constant([OpeImageValue](repeating: .plus, count: 24)), opeExeList: .constant([OpeExecuteValue](repeating: .opeNothing, count: 24)), opeLen: .constant(0))
    }
}
