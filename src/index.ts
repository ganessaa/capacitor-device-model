import { registerPlugin } from '@capacitor/core';

import type { DeviceModelPlugin } from './definitions';

const DeviceModel = registerPlugin<DeviceModelPlugin>('DeviceModel', {
  web: () => import('./web').then((m) => new m.DeviceModelWeb()),
});

export * from './definitions';
export { DeviceModel };
