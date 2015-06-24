//
//  AAPLPreviewView.swift
//  AVCam
//
//  Translated by OOPer in cooperation with shlab.jp, on 2015/6/23.
//
//
/*
Copyright (C) 2015 Apple Inc. All Rights Reserved.
See LICENSE.txt for this sample’s licensing information

Abstract:
Application preview view.
*/

import UIKit
import AVFoundation

@objc(AAPLPreviewView)
class AAPLPreviewView: UIView {
    
    private var _session: AVCaptureSession?
    
    override class func layerClass() -> AnyClass {
        return AVCaptureVideoPreviewLayer.self
    }
    
    var session: AVCaptureSession! {
        get {
            let previewLayer = self.layer as! AVCaptureVideoPreviewLayer
            return previewLayer.session
        }
        
        set(session) {
            let previewLayer = self.layer as! AVCaptureVideoPreviewLayer
            previewLayer.session = session
        }
    }
    
}