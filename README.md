# @ganessaa/capacitor-device-model

Get device model information for iOS and Android

This Capacitor plugin provides a simple way to retrieve the device model name on both iOS and Android platforms.

## Install

```bash
npm install @ganessaa/capacitor-device-model
npx cap sync
```

## Usage

```typescript
import { DeviceModel } from '@ganessaa/capacitor-device-model';

const getDeviceInfo = async () => {
  const result = await DeviceModel.getModel();
  console.log('Device Model:', result.model);
  // iOS example output: "iPhone 14 Pro"
  // Android example output: "SM-G991B"
};
```

## API

<docgen-index>

* [`getModel()`](#getmodel)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### getModel()

```typescript
getModel() => Promise<{ model: string; }>
```

**Returns:** <code>Promise&lt;{ model: string; }&gt;</code>

--------------------

</docgen-api>
