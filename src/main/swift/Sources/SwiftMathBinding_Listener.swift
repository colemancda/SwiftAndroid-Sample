
import java_swift
import Foundation

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener ///

public protocol SwiftMathBinding_Listener: JavaProtocol {

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener.processSum(int,int)

    func processSum( num1: Int, num2: Int ) -> Int

}


open class SwiftMathBinding_ListenerForward: JNIObjectForward, SwiftMathBinding_Listener {

    private static var SwiftMathBinding_ListenerJNIClass: jclass?

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener.processSum(int,int)

    private static var processSum_MethodID_2: jmethodID?

    open func processSum( num1: Int, num2: Int ) -> Int {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 2 )
        __args[0] = jvalue( i: jint(num1) )
        __args[1] = jvalue( i: jint(num2) )
        let __return = JNIMethod.CallIntMethod( object: javaObject, methodName: "processSum", methodSig: "(II)I", methodCache: &SwiftMathBinding_ListenerForward.processSum_MethodID_2, args: &__args, locals: &__locals )
        return Int(__return)
    }

    open func processSum( _ _num1: Int, _ _num2: Int ) -> Int {
        return processSum( num1: _num1, num2: _num2 )
    }

}

private typealias SwiftMathBinding_Listener_processSum_0_type = @convention(c) ( _: UnsafeMutablePointer<JNIEnv?>, _: jobject?, _: jlong, _: jint, _: jint ) -> jint

private func SwiftMathBinding_Listener_processSum_0( _ __env: UnsafeMutablePointer<JNIEnv?>, _ __this: jobject?, _ __swiftObject: jlong, _ num1: jint, _ num2: jint ) -> jint {
    let __return = SwiftMathBinding_ListenerLocal_.swiftObject( jniEnv: __env, javaObject: __this, swiftObject: __swiftObject ).processSum( num1: Int(num1), num2: Int(num2) )
    var __locals = [jobject]()
    return JNI.check( jvalue( i: jint(__return) ).i, &__locals, removeLast: true )
}

fileprivate class SwiftMathBinding_ListenerLocal_: JNILocalProxy<SwiftMathBinding_Listener, Any> {

    fileprivate static let _proxyClass: jclass = {
        var natives = [JNINativeMethod]()

        let SwiftMathBinding_Listener_processSum_0_thunk: SwiftMathBinding_Listener_processSum_0_type = SwiftMathBinding_Listener_processSum_0
        natives.append( JNINativeMethod( name: strdup("__processSum"), signature: strdup("(JII)I"), fnPtr: unsafeBitCast( SwiftMathBinding_Listener_processSum_0_thunk, to: UnsafeMutableRawPointer.self ) ) )

        natives.append( JNINativeMethod( name: strdup("__finalize"), signature: strdup("(J)V"), fnPtr: unsafeBitCast( JNIReleasableProxy__finalize_thunk, to: UnsafeMutableRawPointer.self ) ) )

        let clazz = JNI.FindClass( proxyClassName() )
        withUnsafePointer(to: &natives[0]) {
            nativesPtr in
            if JNI.api.RegisterNatives( JNI.env, clazz, nativesPtr, jint(natives.count) ) != jint(JNI_OK) {
                JNI.report( "Unable to register java natives" )
            }
        }

        defer { JNI.DeleteLocalRef( clazz ) }
        return JNI.api.NewGlobalRef( JNI.env, clazz )!
    }()

    override open class func proxyClassName() -> String { return "org/swiftjava/com_johnholdsworth/SwiftMathBinding_ListenerProxy" }
    override open class func proxyClass() -> jclass? { return _proxyClass }

}

extension SwiftMathBinding_Listener {

    public func localJavaObject( _ locals: UnsafeMutablePointer<[jobject]> ) -> jobject? {
        return SwiftMathBinding_ListenerLocal_( owned: self, proto: self ).localJavaObject( locals )
    }

}

open class SwiftMathBinding_ListenerBase: SwiftMathBinding_Listener {

    public init() {}

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener.processSum(int,int)

    open func processSum( num1: Int, num2: Int ) -> Int /**/ {
        let result = num1 + num2
        NSLog("Result: \(result)")
        NSLog("Swift main thread: \(Thread.current.isMainThread)")

        responder.processedSum(result)
        return result
    }


}
