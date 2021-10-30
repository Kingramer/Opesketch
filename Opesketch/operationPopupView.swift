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
    @Binding var informationList: [[CGFloat]]
    
    @Binding var opeLen: Int
    @Binding var currentPos:CGPoint
    @Binding var rotatePos:CGPoint
    @Binding var deg:Double
    @Binding var imageSize:CGFloat
    let moveRange:CGFloat = 80
    let sizeRange:CGFloat = 0.0375
    let durationTime:Double = 1.0
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .right
                            informationList.append([informationList[opeLen][0]+moveRange, informationList[opeLen][1], informationList[opeLen][2]+1, informationList[opeLen][3], informationList[opeLen][4], informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                currentPos.x = informationList[opeLen][0]
                                rotatePos.x = informationList[opeLen][2]
                            }
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
                            informationList.append([informationList[opeLen][0]-moveRange, informationList[opeLen][1], informationList[opeLen][2]-1, informationList[opeLen][3], informationList[opeLen][4], informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                currentPos.x = informationList[opeLen][0]
                                rotatePos.x = informationList[opeLen][2]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1]-moveRange, informationList[opeLen][2], informationList[opeLen][3]-1, informationList[opeLen][4], informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                currentPos.y = informationList[opeLen][1]
                                rotatePos.y = informationList[opeLen][3]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1]+moveRange, informationList[opeLen][2], informationList[opeLen][3]+1, informationList[opeLen][4], informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                currentPos.y = informationList[opeLen][1]
                                rotatePos.y = informationList[opeLen][3]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4]+90, informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                deg = informationList[opeLen][4]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4]-90, informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                deg = informationList[opeLen][4]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4]+360, informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                deg = informationList[opeLen][4]
                            }
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.clockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotateR")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .rotatel
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4]-360, informationList[opeLen][5]])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                deg = informationList[opeLen][4]
                            }
                        }
                    }) {
                        VStack {
                            Image(systemName: "arrow.counterclockwise")
                                .frame(width: 90.0, height: 70.0)
                                .font(.system(size: 60))
                            Text("rotateL")
                                .font(.title2)
                                .fontWeight(.medium)
                                .frame(height: 20.0)
                        }
                    }
                    Button(action: {
                        if opeLen < 24 {
                            opeList[opeLen] = .big
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4], informationList[opeLen][5]+sizeRange])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                imageSize = informationList[opeLen][5]
                            }
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
                            informationList.append([informationList[opeLen][0], informationList[opeLen][1], informationList[opeLen][2], informationList[opeLen][3], informationList[opeLen][4], informationList[opeLen][5]-sizeRange])
                            opeLen += 1
                            withAnimation(Animation.easeInOut(duration: durationTime)) {
                                imageSize = informationList[opeLen][5]
                            }
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
                            currentPos = CGPoint(x: informationList[opeLen][0], y: informationList[opeLen][1])
                            rotatePos = CGPoint(x: informationList[opeLen][2], y: informationList[opeLen][3])
                            deg = informationList[opeLen][4]
                            imageSize = informationList[opeLen][5]
                            informationList.removeLast()
                            opeList[opeLen] = .plus
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
                        opeLen = 0
                        currentPos = CGPoint(x: informationList[0][0], y: informationList[0][1])
                        rotatePos = CGPoint(x: informationList[0][2], y: informationList[0][3])
                        deg = informationList[0][4]
                        imageSize = informationList[0][5]
                        informationList = [[0, 0, 0.5, 0.5, 0, 0.1]]
                    }) {
                        VStack {
                            Image(systemName: "trash")
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
        operationPopupView(isPresent: .constant(false), opeList: .constant([OpeImageValue](repeating: .plus, count: 24)), informationList: .constant([[0, 0, 0.5, 0.5, 0, 0.1]]), opeLen: .constant(0), currentPos: .constant(CGPoint(x: 0, y: 0)), rotatePos: .constant(CGPoint(x: 0.5, y: 0.5)), deg: .constant(0), imageSize: .constant(0.1))
    }
}
