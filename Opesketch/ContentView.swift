//
//  ContentView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    @State var canvasColor:Color
    @State var symbolName:String = "pawprint.fill"
    @State var symbolColor:Color
    @State var imageBool:Bool = false
    @State var currentPos:CGPoint = CGPoint(x: 0, y: 0)
    @State var rotatePos:CGPoint = CGPoint(x: 0.5, y: 0.5)
    @State var deg:Double = 0
    @State var imageSize:CGFloat = 0.1
    @State var frameSize:CGFloat = 80
    let moveRange:CGFloat = 80
    let sizeRange:CGFloat = 0.0375
    let durationTime:Double = 0.75
    let stepTime:Double = 1.0
    @State var playBool:Bool = false
    @State var playStep:Int = 1
    @State var opeList = [OpeImageValue](repeating: .plus, count: 24)
    @State var informationList:[[CGFloat]] = [[0, 0, 0.5, 0.5, 0, 0.1]]
    @State var opeProgress = [Color](repeating: .brown, count: 26)
    @State var opeLen = 0
    @State var editPopup = false
    @State var operationPopup = false
    @State var canvasPopup = false
    var body: some View {
        let bounds = UIScreen.main.bounds
        let deviceWidth = Float(bounds.width)
        let deviceHeight = Float(bounds.height)
        // let statusbarHeight = Float(UIApplication.shared.statusBarFrame.height)
        // let safeHeight = deviceHeight - statusbarHeight
        ZStack {
            Color(red: 0.96875, green: 0.953125, blue: 0.8984375)
                .edgesIgnoringSafeArea(.all)
            HStack {
                VStack {
                    ZStack(alignment: .center) {
                        //RoundedRectangle(cornerRadius: 20)
                            //.stroke(canvasColor, lineWidth: 3)
                            //.foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            //.padding()
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(canvasColor)
                            .padding()
                        if imageBool {
                            Image(systemName: self.symbolName)
                                .foregroundColor(symbolColor)
                                .font(.system(size: 800))
                                .scaleEffect(imageSize)
                                .frame(width: frameSize, height: frameSize)
                                .offset(x: self.currentPos.x, y: self.currentPos.y)
                                .rotationEffect(Angle(degrees: deg), anchor: UnitPoint(x: self.rotatePos.x, y: self.rotatePos.y))
                                //.animation(.linear(duration: 0.5), value: true)
                                //.gesture(DragGesture()
                                            //.onChanged { value in self.currentPos = value.location})
                        }
                    }
                    .frame(height: CGFloat(deviceHeight - 110))
                    Divider()
                    ZStack {
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                        HStack(alignment: .center) {
                            Group {
                                Button(action: {
                                    if !playBool {
                                        playStep = 1
                                        currentPos = CGPoint(x: informationList[0][0], y: informationList[0][1])
                                        rotatePos = CGPoint(x: informationList[0][2], y: informationList[0][3])
                                        deg = informationList[0][4]
                                        imageSize = informationList[0][5]
                                        opeProgress[opeLen] = .brown
                                        playBool = true
                                        while (playBool == true && playStep <= opeLen) {
                                            
                                            withAnimation(Animation.linear(duration: durationTime).delay(durationTime * Double(playStep-1))) {
                                                currentPos = CGPoint(x: informationList[playStep][0], y: informationList[playStep][1])
                                                rotatePos = CGPoint(x: informationList[playStep][2], y: informationList[playStep][3])
                                                deg = Double(informationList[playStep][4])
                                                imageSize = informationList[playStep][5]
                                            }
                                            withAnimation(Animation.linear(duration: 0.01).delay(durationTime * Double(playStep-1))) {
                                                opeProgress[playStep] = .red
                                            }
                                            withAnimation(Animation.linear(duration: 0.01).delay(durationTime * Double(playStep) - 0.01)) {
                                                opeProgress[playStep] = .brown
                                            }
                                            /*
                                            if playStep == opeLen {
                                                withAnimation(Animation.linear(duration: 0.01).delay(durationTime * Double(opeLen))) {
                                                    playBool = false
                                                }
                                            }*/
                                            playStep += 1
                                        }
                                    }
                                }) {
                                    Image(systemName: "play.circle")
                                        .font(.system(size: 30))
                                    Text("play")
                                }
                                /*Button(action: {
                                    playBool = false
                                }) {
                                    Image(systemName: "pause.circle")
                                        .font(.system(size: 30))
                                    Text("pause")
                                }*/
                                Button(action: {
                                    playBool = false
                                    currentPos = CGPoint(x: informationList[0][0], y: informationList[0][1])
                                    rotatePos = CGPoint(x: informationList[0][2], y: informationList[0][3])
                                    deg = informationList[0][4]
                                    imageSize = informationList[0][5]
                                }) {
                                    Image(systemName: "stop.circle")
                                        .font(.system(size: 30))
                                    Text("reset")
                                }
                            }
                            .padding()
                            .foregroundColor(.black)
                        }
                        .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                    }
                }
                .frame(width: CGFloat(deviceWidth * 0.5 - 10))
                Divider()
                VStack {
                    HStack {
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                            operationList(opeList: $opeList, opeProgress: $opeProgress, opeLen: $opeLen)
                        }
                        .frame(height: CGFloat(deviceHeight - 180))
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                            VStack {
                                Group {
                                    Button(action: {
                                        self.editPopup.toggle()
                                        self.operationPopup = false
                                        self.canvasPopup = false
                                    }) {
                                        Image(systemName: "pencil")
                                            .font(.system(size: 40))
                                    }
                                    Button(action: {
                                        self.operationPopup.toggle()
                                        self.editPopup = false
                                        self.canvasPopup = false
                                    }) {
                                        Image(systemName: "scissors")
                                            .font(.system(size: 40))
                                    }
                                    Button(action: {
                                        self.canvasPopup.toggle()
                                        self.editPopup = false
                                        self.operationPopup = false
                                    }) {
                                        Image(systemName: "paintbrush")
                                            .font(.system(size: 40))
                                    }
                                }
                                .padding()
                                .frame(width: 80.0, height: 80.0)
                                .foregroundColor(.gray)
                            }
                        }
                        .frame(width: 80.0)
                    }
                    .position(x: CGFloat(deviceWidth * 0.25), y: CGFloat(deviceHeight * 0.5 - 85))
                    //.frame(width: CGFloat(deviceWidth * 0.5 - 100))
                    if editPopup || operationPopup || canvasPopup {
                        Divider()
                        ZStack {
                            RoundedRectangle(cornerRadius: 20)
                                .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                            VStack {
                                if editPopup {
                                    editPopupView(isPresent: $editPopup, imageBool: $imageBool, symbolName: $symbolName, symbolColor: $symbolColor)
                                }
                                if operationPopup {
                                    operationPopupView(isPresent: $operationPopup, opeList: $opeList, informationList: $informationList, opeLen: $opeLen, currentPos: $currentPos, rotatePos: $rotatePos, deg: $deg, imageSize: $imageSize)
                                }
                                if canvasPopup {
                                    canvasPopupView(isPresent: $canvasPopup, canvasColor: $canvasColor)
                                }
                            }
                        }
                        .frame(width: CGFloat(deviceWidth * 0.5 - 10), height: 130)
                    }
                }
                .frame(width: CGFloat(deviceWidth * 0.5 - 10))
            }
        }
        //.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(canvasColor: .white, symbolName: "pawprint.fill", symbolColor: .black)
    }
}

