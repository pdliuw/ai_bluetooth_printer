#import "AiBluetoothPrinterPlugin.h"
#if __has_include(<ai_bluetooth_printer/ai_bluetooth_printer-Swift.h>)
#import <ai_bluetooth_printer/ai_bluetooth_printer-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "ai_bluetooth_printer-Swift.h"
#endif

@implementation AiBluetoothPrinterPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftAiBluetoothPrinterPlugin registerWithRegistrar:registrar];
}
@end
