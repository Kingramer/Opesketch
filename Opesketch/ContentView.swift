//
//  ContentView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/11.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            VStack {
                Rectangle()
                    .foregroundColor(.white)
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
            Divider()
            HStack {
                Rectangle()
                    .foregroundColor(.white)
                VStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "pencil")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "scissors")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image(systemName: "paintbrush")
                            .font(.system(size: 40))
                    }
                    .padding()
                    .foregroundColor(.gray)
                }
            }
                
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
