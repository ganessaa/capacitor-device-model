import Foundation
import Capacitor
import DeviceKit

@objc(DeviceModelPlugin)
public class DeviceModelPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "DeviceModelPlugin"
    public let jsName = "DeviceModel"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "getModel", returnType: CAPPluginReturnPromise)
    ]

    @objc func getModel(_ call: CAPPluginCall) {
        let device = Device.current
        let model = device.description
        call.resolve([
            "model": model
        ])
    }
}
