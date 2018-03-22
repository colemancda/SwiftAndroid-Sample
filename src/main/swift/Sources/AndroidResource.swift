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

public struct AndroidResource: RawRepresentable {
    
    public let rawValue: Int
    
    public init(rawValue: Int) {
        
        self.init(rawValue: rawValue)
    }
}

// MARK: - Convenience Intializers

public extension Android.R {
    
    public init(id name: String) {
        
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
    
    public init(layout name: String) {
        
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
