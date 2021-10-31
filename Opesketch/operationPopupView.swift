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
    let sizeRange:CGFloat = 0.0375
    let durationTime:Double = 1.0
    var body: some View {
        let bounds = UIScreen.main.bounds
        let deviceWidth:CGFloat = bounds.width
        let deviceHeight:CGFloat = bounds.height
        let canvasHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.904)
        let animationImageSize:CGFloat = pow((canvasHeight * deviceWidth), 0.5) * CGFloat(0.9197)
        let moveRange:CGFloat = animationImageSize * CGFloat(0.1)
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let buttonPadding:CGFloat = popupHeight * CGFloat(0.056)
        let buttonWidth:CGFloat = popupHeight * CGFloat(0.725)
        let buttonHeight:CGFloat = popupHeight * CGFloat(0.877)
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
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
                                    .modifier(opeSelectImageModify())
                                Text("right")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("left")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("up")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("down")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("turn R")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("turn L")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("rotateR")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("rotateL")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("big")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("small")
                                    .modifier(opeTextModify())
                            }
                        }
                    }
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
                                    .modifier(opeSelectImageModify())
                                Text("delete")
                                    .modifier(opeTextModify())
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
                                    .modifier(opeSelectImageModify())
                                Text("all.del")
                                    .modifier(opeTextModify())
                            }
                        }
                    }
                }
                .padding(.all, buttonPadding)
                .frame(width: buttonWidth, height: buttonHeight)
                .foregroundColor(.brown)
            }
        }
    }
}

struct opeSelectImageModify: ViewModifier {
    func body(content: Content) -> some View {
        let bounds = UIScreen.main.bounds
        let deviceHeight:CGFloat = bounds.height
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let frameWidth:CGFloat = popupHeight * CGFloat(0.725)
        let frameHeight:CGFloat = popupHeight * CGFloat(0.564)
        let imageSize:CGFloat = popupHeight * CGFloat(0.485)
        content
            .frame(width: frameWidth, height: frameHeight)//90.0, 70.0
            .font(.system(size: imageSize))//60.0
    }
}

struct opeTextModify: ViewModifier {
    func body(content: Content) -> some View {
        let bounds = UIScreen.main.bounds
        let deviceHeight:CGFloat = bounds.height
        let popupHeight:CGFloat = (deviceHeight - CGFloat(35)) * CGFloat(0.16)
        let textSize:CGFloat = popupHeight * CGFloat(0.17)
        let textHeight:CGFloat = popupHeight * CGFloat(0.16)
        content
            .font(.system(size: textSize, weight: .medium))//.title2
            .frame(height: textHeight)//20.0
    }
}

struct operationPopupView_Previews: PreviewProvider {
    static var previews: some View {
        operationPopupView(isPresent: .constant(false), opeList: .constant([OpeImageValue](repeating: .plus, count: 24)), informationList: .constant([[0, 0, 0.5, 0.5, 0, 0.1]]), opeLen: .constant(0), currentPos: .constant(CGPoint(x: 0, y: 0)), rotatePos: .constant(CGPoint(x: 0.5, y: 0.5)), deg: .constant(0), imageSize: .constant(0.1))
    }
}
