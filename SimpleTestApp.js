import React from 'react';
import { View, Text, StyleSheet, SafeAreaView } from 'react-native';

const SimpleTestApp = () => {
  return (
    <SafeAreaView style={styles.container}>
      <View style={styles.content}>
        <Text style={styles.title}>✅ React Native App Working</Text>
        <Text style={styles.subtitle}>Hermes Engine: Enabled</Text>
        <Text style={styles.info}>Java 17 Compatible</Text>
        <Text style={styles.info}>Android 11 Device</Text>
      </View>
    </SafeAreaView>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
  },
  content: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 20,
    textAlign: 'center',
  },
  subtitle: {
    fontSize: 18,
    color: '#666',
    marginBottom: 10,
  },
  info: {
    fontSize: 16,
    color: '#999',
    marginTop: 5,
  },
});

export default SimpleTestApp;
