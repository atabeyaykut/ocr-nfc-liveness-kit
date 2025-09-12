module.exports = {
  createResizedImage: jest.fn((uri, width, height, format, quality) => 
    Promise.resolve({
      uri: `resized_${uri}`,
      width,
      height,
      size: 1024
    })
  ),
};
