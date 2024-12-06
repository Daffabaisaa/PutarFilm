export default {
  transform: {
    '^.+\\.jsx?$': 'babel-jest',
  },
  extensionsToTreatAsEsm: ['.jsx'],
  testEnvironment: 'jsdom',
  // moduleNameMapper: {
  //   '\\.(jpg|jpeg|png|gif|svg)$': '<rootDir>/__mocks__/fileMock.js',
  //   '\\.(css|less|scss|sass)$': 'identity-obj-proxy',
  // },
  // rootDir: './', // Tambahkan jika belum ada
};
