
import java_swift

/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder ///

public protocol SwiftAdapterBinding_Responder: JavaProtocol {

    /// public abstract com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.getListener()

    func getListener() -> SwiftAdapterBinding_Listener!

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.reloadData()

    func reloadData()

}


open class SwiftAdapterBinding_ResponderForward: JNIObjectForward, SwiftAdapterBinding_Responder {

    private static var SwiftAdapterBinding_ResponderJNIClass: jclass?

    /// public abstract com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Listener com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.getListener()

    private static var getListener_MethodID_3: jmethodID?

    open func getListener() -> SwiftAdapterBinding_Listener! {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        let __return = JNIMethod.CallObjectMethod( object: javaObject, methodName: "getListener", methodSig: "()Lcom/johnholdsworth/swiftbindings/SwiftAdapterBinding$Listener;", methodCache: &SwiftAdapterBinding_ResponderForward.getListener_MethodID_3, args: &__args, locals: &__locals )
        defer { JNI.DeleteLocalRef( __return ) }
        return __return != nil ? SwiftAdapterBinding_ListenerForward( javaObject: __return ) : nil
    }


    /// public abstract void com.johnholdsworth.swiftbindings.SwiftAdapterBinding$Responder.reloadData()

    private static var reloadData_MethodID_4: jmethodID?

    open func reloadData() {
        var __locals = [jobject]()
        var __args = [jvalue]( repeating: jvalue(), count: 1 )
        JNIMethod.CallVoidMethod( object: javaObject, methodName: "reloadData", methodSig: "()V", methodCache: &SwiftAdapterBinding_ResponderForward.reloadData_MethodID_4, args: &__args, locals: &__locals )
    }


}

