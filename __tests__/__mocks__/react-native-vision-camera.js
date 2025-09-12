module.exports = {
  Camera: {
    getAvailableCameraDevices: jest.fn(() => Promise.resolve([
      { id: 'back', position: 'back' },
      { id: 'front', position: 'front' }
    ])),
    getCameraPermissionStatus: jest.fn(() => 'granted'),
    requestCameraPermission: jest.fn(() => Promise.resolve('granted')),
  },
  useCameraDevices: jest.fn(() => ({
    back: { id: 'back', position: 'back' },
    front: { id: 'front', position: 'front' }
  })),
  useFrameProcessor: jest.fn(),
};
