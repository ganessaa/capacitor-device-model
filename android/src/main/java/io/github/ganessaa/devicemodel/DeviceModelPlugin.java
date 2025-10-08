package io.github.ganessaa.devicemodel;

import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.PluginMethod;
import com.getcapacitor.annotation.CapacitorPlugin;

@CapacitorPlugin(name = "DeviceModel")
public class DeviceModelPlugin extends Plugin {

    @PluginMethod
    public void getModel(PluginCall call) {
        String model = android.os.Build.MODEL;
        JSObject ret = new JSObject();
        ret.put("model", model);
        call.resolve(ret);
    }
}
