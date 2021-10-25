//
//  operationExecution.swift
//  Opesketch
//
//  Created by 本間光 on 2021/10/23.
//

import SwiftUI


enum OpeExecuteValue {
    case opeNothing
    case opeRight
    case opeLeft
    case opeUp
    case opeDown
    case opeTurnr
    case opeTurnl
    case opeRotater
    case opeRotatel
    case opeBig
    case opeSmall
    
    /*
    struct opeStruct {
        let durationTime:Double = 0.5
        @Binding var currentPos:CGPoint
        @Binding var rotatePos:CGPoint
        @Binding var deg:Double
        @Binding var imageSize:CGFloat
        @Binding var moveRange:CGFloat
        @Binding var sizeRange:CGFloat
        
        switch( self ){
            case .opeRight:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.x += moveRange
                    rotatePos.x += 1
                }
            case .opeLeft:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.x -= moveRange
                    rotatePos.x -= 1
                }
            case .opeUp:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.y -= moveRange
                    rotatePos.y -= 1
                }
            case .opeDown:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.y += moveRange
                    rotatePos.y += 1
                }
            case .opeTurnr:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg += 90
                }
            case .opeTurnl:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg -= 90
                }
            case .opeRotater:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg += 360
                }
            case .opeRotatel:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg -= 360
                }
            case .opeBig:
                withAnimation(Animation.linear(duration: durationTime)) {
                    imageSize += sizeRange
                }
            case .opeSmall:
                withAnimation(Animation.linear(duration: durationTime)) {
                    imageSize -= sizeRange
                }
        }
    }
     */
    /*
    /*mutating*/ func process() {
        let durationTime:Double = 0.5
        let moveRange:CGFloat
        let sizeRange:CGFloat
        
        @Binding var currentPos:CGPoint
        @Binding var rotatePos:CGPoint
        @Binding var deg:Double
        @Binding var imageSize:CGFloat
        
        
        init(currentPos: Binding<CGPoint>, rotatePos: Binding<CGPoint>, deg: Binding<Double>, imageSize: Binding<CGFloat>, moveRange: Binding<CGFloat>, sizeRange: Binding<CGFloat>) {
            self._currentPos = currentPos
            self._rotatePos = rotatePos
            self._deg = deg
            self._imageSize = imageSize
            self._moveRange = moveRange
            self._sizeRange = sizeRange
        }
        
        switch( self ){
            case .opeRight:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.x += moveRange
                    rotatePos.x += 1
                }
            case .opeLeft:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.x -= moveRange
                    rotatePos.x -= 1
                }
            case .opeUp:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.y -= moveRange
                    rotatePos.y -= 1
                }
            case .opeDown:
                withAnimation(Animation.linear(duration: durationTime)) {
                    currentPos.y += moveRange
                    rotatePos.y += 1
                }
            case .opeTurnr:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg += 90
                }
            case .opeTurnl:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg -= 90
                }
            case .opeRotater:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg += 360
                }
            case .opeRotatel:
                withAnimation(Animation.linear(duration: durationTime)) {
                    deg -= 360
                }
            case .opeBig:
                withAnimation(Animation.linear(duration: durationTime)) {
                    imageSize += sizeRange
                }
            case .opeSmall:
                withAnimation(Animation.linear(duration: durationTime)) {
                    imageSize -= sizeRange
                }
        }
    }*/
}

