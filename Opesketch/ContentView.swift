//
//  ContentView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    @State var editPopup = false
    @State var operationPopup = false
    @State var canvasPopup = false
    @State var canvasColor:Color
    @State var opeList = [OpeImageValue](repeating: .plus, count: 24)
    @State var opeLen = 0
    @State var symbolName: String = "pawprint.fill"
    @State var symbolColor:Color
    @State var imageBool: Bool = false
    @State var currentPos: CGPoint = CGPoint(x: 270, y: 320)
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
                                .font(.system(size: 60))
                                .position(x: self.currentPos.x, y: self.currentPos.y)
                                .gesture(DragGesture()
                                            .onChanged { value in self.currentPos = value.location})
                        }
                    }
                    Divider()
                    HStack(alignment: .center) {
                        Group {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "play.circle")
                                    .font(.system(size: 30))
                                Text("play")
                            }
                            .padding()
                            .foregroundColor(.black)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "pause.circle")
                                    .font(.system(size: 30))
                                Text("pause")
                            }
                            .padding()
                            .foregroundColor(.black)
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                Image(systemName: "stop.circle")
                                    .font(.system(size: 30))
                                Text("stop")
                            }
                            .padding()
                            .foregroundColor(.black)
                        }
                    }
                    .padding(/*@START_MENU_TOKEN@*/.bottom, 10.0/*@END_MENU_TOKEN@*/)
                }
                .frame(width: CGFloat(deviceWidth * 0.5 - 10))
                Divider()
                VStack {
                    HStack {
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(red: 0.96875, green: 0.953125, blue: 0.8984375))
                            operationList(opeList: $opeList, opeLen: $opeLen)
                        }
                        .frame(height: CGFloat(deviceHeight - 180))
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
                    .position(x: CGFloat(deviceWidth * 0.25), y: CGFloat(deviceHeight * 0.5 - 85))
                    //.frame(width: CGFloat(deviceWidth * 0.5 - 100))
                    if editPopup || operationPopup || canvasPopup {
                        Divider()
                        VStack {
                            if editPopup {
                                editPopupView(isPresent: $editPopup, imageBool: $imageBool, symbolName: $symbolName, symbolColor: $symbolColor)
                            }
                            if operationPopup {
                                operationPopupView(isPresent: $operationPopup, opeList: $opeList, opeLen: $opeLen)
                            }
                            if canvasPopup {
                                canvasPopupView(isPresent: $canvasPopup, canvasColor: $canvasColor)
                            }
                        }
                        .frame(width: CGFloat(deviceWidth * 0.5 - 10), height: 150)
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
