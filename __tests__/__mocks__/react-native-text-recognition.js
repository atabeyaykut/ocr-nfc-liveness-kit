module.exports = {
  TextRecognition: {
    recognize: jest.fn(() => Promise.resolve({
      text: 'Mock OCR text',
      confidence: 0.95,
      blocks: []
    })),
  },
};
