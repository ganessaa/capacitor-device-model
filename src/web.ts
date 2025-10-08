import { WebPlugin } from '@capacitor/core';

import type { DeviceModelPlugin } from './definitions';

export class DeviceModelWeb extends WebPlugin implements DeviceModelPlugin {
  async getModel(): Promise<{ model: string }> {
    return { model: 'Unknown' };
  }
}
