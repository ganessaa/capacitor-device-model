export interface DeviceModelPlugin {
  getModel(): Promise<{ model: string }>;
}
