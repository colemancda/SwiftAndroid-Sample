
/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener ///

package org.swiftjava.com_johnholdsworth;

@SuppressWarnings("JniMissingFunction")
public class SwiftMathBinding_ListenerProxy implements com.johnholdsworth.swiftbindings.SwiftMathBinding.Listener {

    // address of proxy object
    long __swiftObject;

    SwiftMathBinding_ListenerProxy( long __swiftObject ) {
        this.__swiftObject = __swiftObject;
    }

    /// public abstract int com.johnholdsworth.swiftbindings.SwiftMathBinding$Listener.processSum(int,int)

    public native int __processSum( long __swiftObject, int num1, int num2 );

    public int processSum( int num1, int num2 ) {
        return __processSum( __swiftObject, num1, num2 );
    }

    public native void __finalize( long __swiftObject );

    public void finalize() {
        __finalize( __swiftObject );
    }

}
