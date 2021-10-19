//
//  editPopupView.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/12.
//

import SwiftUI

struct editPopupView: View {
    @Binding var isPresent: Bool
    @Binding var animImage: Image
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                Group {
                    Button(action: {
                        animImage = Image(systemName: "pawprint.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.black) as! Image
                    }) {
                        Image(systemName: "pawprint.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.black)
                    }
                    Button(action: {
                        animImage = Image(systemName: "hare")
                            .font(.system(size: 60))
                            .foregroundColor(.pink) as! Image
                    }) {
                        Image(systemName: "hare")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.pink)
                    }
                    Button(action: {
                        animImage = Image(systemName: "leaf.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.green) as! Image
                    }) {
                        Image(systemName: "leaf.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.green)
                    }
                    Button(action: {
                        animImage = Image(systemName: "face.smiling")
                            .font(.system(size: 60))
                            .foregroundColor(.orange) as! Image
                    }) {
                        Image(systemName: "face.smiling")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.orange)
                    }
                    Button(action: {
                        animImage = Image(systemName: "cloud.heavyrain.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.blue) as! Image
                    }) {
                        Image(systemName: "cloud.heavyrain.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.blue)
                    }
                    Button(action: {
                        animImage = Image(systemName: "ferry")
                            .font(.system(size: 60))
                            .foregroundColor(.gray) as! Image
                    }) {
                        Image(systemName: "ferry")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.gray)
                    }
                    Button(action: {
                        animImage = Image(systemName: "play.rectangle.fill")
                            .font(.system(size: 60))
                            .foregroundColor(.red) as! Image
                    }) {
                        Image(systemName: "play.rectangle.fill")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.red)
                    }
                    Button(action: {
                        animImage = Image(systemName: "ear")
                            .font(.system(size: 60))
                            .foregroundColor(.brown) as! Image
                    }) {
                        Image(systemName: "ear")
                            .frame(width: 80.0, height: 80.0)
                            .font(.system(size: 60))
                            .foregroundColor(.brown)
                    }
                }
                .padding()
                .frame(width: 90.0, height: 90.0)
            }
        }
    }
}

struct editPopupView_Previews: PreviewProvider {
    static var previews: some View {
        editPopupView(isPresent: .constant(false), animImage: .constant(Image(systemName: "pawprint.fill").font(.system(size: 60)).foregroundColor(.black) as! Image))
    }
}
