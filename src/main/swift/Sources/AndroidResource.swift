//
//  AndroidResource.swift
//  libswiftandroid.so
//
//  Created by Alsey Coleman Miller on 3/22/18.
//

import Foundation
import java_swift

public extension Android {
    
    public typealias R = AndroidResource
}

public extension Android.R {
    
    public typealias ID = AndroidResourceIdentifier
    
    public typealias Layout = AndroidLayoutIdentifier
}

public protocol AndroidResource: RawRepresentable {
    
    var rawValue: Int { get }
    
    init(rawValue: Int)
    
    init(name: String)
}

public struct AndroidResourceIdentifier: AndroidResource {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public struct AndroidLayoutIdentifier: AndroidResource {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

// MARK: - Convenience Intializers

public extension Android.R.ID {
    
    public init(name: String) {
        
        /// JNI Cache
        struct JNICache {
            
            /// JNI Java class name
            static let className = "android/R$id"
            
            /// JNI Java class
            static var jniClass: jclass?
        }
        
        var cache: jmethodID?
        
        let __value = JNIField.GetStaticIntField(fieldName: name,
                                                 fieldType: "I",
                                                 fieldCache: &cache,
                                                 className: JNICache.className,
                                                 classCache: &JNICache.jniClass )
        
        let value = Int(__value)
        
        self.init(rawValue: value)
    }
}

public extension Android.R.Layout {
    
    public init(name: String) {
        
        /// JNI Cache
        struct JNICache {
            
            /// JNI Java class name
            static let className = "android/R$layout"
            
            /// JNI Java class
            static var jniClass: jclass?
        }
        
        var cache: jmethodID?
        
        let __value = JNIField.GetStaticIntField(fieldName: name,
                                                 fieldType: "I",
                                                 fieldCache: &cache,
                                                 className: JNICache.className,
                                                 classCache: &JNICache.jniClass )
        
        let value = Int(__value)
        
        self.init(rawValue: value)
    }
}