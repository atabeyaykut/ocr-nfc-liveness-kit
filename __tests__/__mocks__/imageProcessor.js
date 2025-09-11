export const ImageProcessor = {
  cropImage: jest.fn(() => Promise.resolve('mock-cropped-image-uri')),
  resizeImage: jest.fn(() => Promise.resolve('mock-resized-image-uri')),
  enhanceImage: jest.fn(() => Promise.resolve('mock-enhanced-image-uri')),
};
