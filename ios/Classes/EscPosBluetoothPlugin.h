#import <Flutter/Flutter.h>
#import <CoreBluetooth/CoreBluetooth.h>
#import "ConnecterManager.h"

#define NAMESPACE @"esc_pos_bluetooth"

@interface EscPosBluetoothPlugin : NSObject<FlutterPlugin, CBCentralManagerDelegate, CBPeripheralDelegate>
@property(nonatomic,copy)ConnectDeviceState state;
@end

@interface EscPosBluetoothStreamHandler : NSObject<FlutterStreamHandler>
@property FlutterEventSink sink;
@end
