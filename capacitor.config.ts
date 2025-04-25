import { CapacitorConfig } from '@capacitor/cli';

const config: CapacitorConfig = {
  appId: 'com.arshinya.chat',
  appName: 'Arshinya',
  webDir: 'dist',
  server: {
    androidScheme: 'https'
  },
  android: {
    buildOptions: {
      keystorePath: 'android/app/keystore.jks',
      keystorePassword: 'yourkeystorepassword',
      keystoreAlias: 'yourkeystorealias',
      keystoreAliasPassword: 'youraliaspassword',
    }
  }
};

export default config;