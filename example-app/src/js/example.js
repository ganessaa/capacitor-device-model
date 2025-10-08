import { DeviceModel } from '@ganessaa/capacitor-device-model';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    DeviceModel.echo({ value: inputValue })
}
