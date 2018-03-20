
/// generated by: genswift.java 'java/lang|java/util|java/sql' 'Sources' '../java' ///

/// interface com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener ///

package org.swiftjava.com_johnholdsworth;

@SuppressWarnings("JniMissingFunction")
public class SwiftBluetoothBinding_Peripheral_ListenerProxy implements com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.Peripheral.Listener {

    // address of proxy object
    long __swiftObject;

    SwiftBluetoothBinding_Peripheral_ListenerProxy( long __swiftObject ) {
        this.__swiftObject = __swiftObject;
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicChanged(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic)

    public native void __onCharacteristicChanged( long __swiftObject, com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic );

    public void onCharacteristicChanged( com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic ) {
        __onCharacteristicChanged( __swiftObject, characteristic );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    public native void __onCharacteristicRead( long __swiftObject, com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic, int status );

    public void onCharacteristicRead( com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic, int status ) {
        __onCharacteristicRead( __swiftObject, characteristic, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onCharacteristicWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTCharacteristic,int)

    public native void __onCharacteristicWrite( long __swiftObject, com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic, int status );

    public void onCharacteristicWrite( com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTCharacteristic characteristic, int status ) {
        __onCharacteristicWrite( __swiftObject, characteristic, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onConnectionStateChange(int,int)

    public native void __onConnectionStateChange( long __swiftObject, int status, int newState );

    public void onConnectionStateChange( int status, int newState ) {
        __onConnectionStateChange( __swiftObject, status, newState );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorRead(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    public native void __onDescriptorRead( long __swiftObject, com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTDescriptor descriptor, int status );

    public void onDescriptorRead( com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTDescriptor descriptor, int status ) {
        __onDescriptorRead( __swiftObject, descriptor, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onDescriptorWrite(com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$GATTDescriptor,int)

    public native void __onDescriptorWrite( long __swiftObject, com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTDescriptor descriptor, int status );

    public void onDescriptorWrite( com.johnholdsworth.swiftbindings.SwiftBluetoothBinding.GATTDescriptor descriptor, int status ) {
        __onDescriptorWrite( __swiftObject, descriptor, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onMtuChanged(int,int)

    public native void __onMtuChanged( long __swiftObject, int mtu, int status );

    public void onMtuChanged( int mtu, int status ) {
        __onMtuChanged( __swiftObject, mtu, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReadRemoteRssi(int,int)

    public native void __onReadRemoteRssi( long __swiftObject, int rssi, int status );

    public void onReadRemoteRssi( int rssi, int status ) {
        __onReadRemoteRssi( __swiftObject, rssi, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onReliableWriteCompleted(int)

    public native void __onReliableWriteCompleted( long __swiftObject, int status );

    public void onReliableWriteCompleted( int status ) {
        __onReliableWriteCompleted( __swiftObject, status );
    }

    /// public abstract void com.johnholdsworth.swiftbindings.SwiftBluetoothBinding$Peripheral$Listener.onServicesDiscovered(int)

    public native void __onServicesDiscovered( long __swiftObject, int status );

    public void onServicesDiscovered( int status ) {
        __onServicesDiscovered( __swiftObject, status );
    }

    public native void __finalize( long __swiftObject );

    public void finalize() {
        __finalize( __swiftObject );
    }

}