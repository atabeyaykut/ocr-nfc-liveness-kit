export const PermissionManager = {
  requestCameraPermission: jest.fn(() => Promise.resolve(true)),
  requestStoragePermission: jest.fn(() => Promise.resolve(true)),
  checkCameraPermission: jest.fn(() => Promise.resolve(true)),
  checkStoragePermission: jest.fn(() => Promise.resolve(true)),
};
