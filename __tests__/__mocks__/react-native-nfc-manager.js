module.exports = {
  NfcTech: {
    IsoDep: 'IsoDep',
    NfcA: 'NfcA',
    NfcB: 'NfcB',
    NfcF: 'NfcF',
    NfcV: 'NfcV',
    Ndef: 'Ndef',
    MifareClassic: 'MifareClassic',
    MifareUltralight: 'MifareUltralight',
  },
  NfcEvents: {
    DiscoverTag: 'NfcManagerDiscoverTag',
    SessionClosed: 'NfcManagerSessionClosed',
    StateChanged: 'NfcManagerStateChanged',
  },
  start: jest.fn(() => Promise.resolve()),
  stop: jest.fn(() => Promise.resolve()),
  isSupported: jest.fn(() => Promise.resolve(true)),
  isEnabled: jest.fn(() => Promise.resolve(true)),
  registerTagEvent: jest.fn(() => Promise.resolve()),
  unregisterTagEvent: jest.fn(() => Promise.resolve()),
  requestTechnology: jest.fn(() => Promise.resolve()),
  getTag: jest.fn(() => Promise.resolve({
    id: [1, 2, 3, 4],
    techTypes: ['IsoDep'],
    ndefMessage: [{
      payload: Buffer.from(JSON.stringify({
        firstName: "AHMET",
        lastName: "YILMAZ", 
        idNumber: "12345678901"
      })),
      type: Buffer.from("application/json")
    }]
  })),
  transceive: jest.fn(() => Promise.resolve([0x90, 0x00])),
};
