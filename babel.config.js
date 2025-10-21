module.exports = {
  presets: ['@react-native/babel-preset'],
  plugins: [
    ['@babel/plugin-proposal-class-properties', { loose: true }],
    ['@babel/plugin-transform-private-methods', { loose: true }],
    ['@babel/plugin-transform-private-property-in-object', { loose: true }],
    ['@babel/plugin-transform-classes', { loose: true }],
    // Optimize imports for better tree shaking
    ['babel-plugin-transform-imports', {
      'react-native-vector-icons': {
        transform: 'react-native-vector-icons/dist/${member}',
        preventFullImport: true,
      },
      'lodash': {
        transform: 'lodash/${member}',
        preventFullImport: true,
      },
    }],
  ],
  env: {
    production: {
      plugins: [
        // Remove console.log statements in production
        ['transform-remove-console', { exclude: ['error', 'warn'] }],
      ],
    },
  },
};
