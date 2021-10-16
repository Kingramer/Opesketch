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
    var body: some View {
        let bounds = UIScreen.main.bounds
        let deviceWidth = Float(bounds.width)
        let deviceHeight = Float(bounds.height)
        // let statusbarHeight = Float(UIApplication.shared.statusBarFrame.height)
        // let safeHeight = deviceHeight - statusbarHeight
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
                    
                }
                Divider()
                HStack {
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
            }
            .frame(width: CGFloat(deviceWidth * 0.5))
            Divider()
            HStack {
                VStack {
                    Rectangle()
                        .foregroundColor(.white)
                    if editPopup || operationPopup || canvasPopup {
                        Divider()
                        VStack {
                            if editPopup {
                                editPopupView(isPresent: $editPopup)
                            }
                            if operationPopup {
                                operationPopupView(isPresent: $operationPopup)
                            }
                            if canvasPopup {
                                canvasPopupView(isPresent: $canvasPopup, canvasColor: $canvasColor)
                            }
                        }
                        .frame(height: CGFloat(deviceHeight * 0.4))
                    }
                }
                VStack {
                    Button(action: {
                        self.editPopup.toggle()
                        self.operationPopup = false
                        self.canvasPopup = false
                    }) {
                        Image(systemName: "pencil")
                            .font(.system(size: 50))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: {
                        self.operationPopup.toggle()
                        self.editPopup = false
                        self.canvasPopup = false
                    }) {
                        Image(systemName: "scissors")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: {
                        self.canvasPopup.toggle()
                        self.editPopup = false
                        self.operationPopup = false
                    }) {
                        Image(systemName: "paintbrush")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                }
            }
            .frame(width: CGFloat(deviceWidth * 0.5))
        }
        //.edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(canvasColor: .white)
    }
}
