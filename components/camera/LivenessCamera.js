import React, {
  useCallback,
  useEffect,
  useMemo,
  useRef,
  useState,
} from "react";
import { View, Text, StyleSheet, ActivityIndicator } from "react-native";
import { Camera, useCameraDevices } from "react-native-vision-camera";
import Logger from "../../utils/logger";

const FRAME_CAPTURE_INTERVAL_MS = 1200;

const LivenessCamera = ({
  detector,
  isActive = true,
  instruction,
  onFrameAnalyzed,
  onMotionDetected,
  onPermissionChange,
  motionState,
  style,
}) => {
  const cameraRef = useRef(null);
  const devices = useCameraDevices();
  const device = devices.front;

  const [permission, setPermission] = useState("not-determined");
  const [initializing, setInitializing] = useState(true);
  const isCapturingRef = useRef(false);

  useEffect(() => {
    const requestPermission = async () => {
      try {
        Logger.info("Requesting camera permission for liveness camera...");
        const status = await Camera.requestCameraPermission();
        setPermission(status);
        if (onPermissionChange) {
          onPermissionChange(status);
        }
      } catch (error) {
        Logger.error("Camera permission request failed", error.message);
        setPermission("denied");
        if (onPermissionChange) {
          onPermissionChange("denied");
        }
      } finally {
        setInitializing(false);
      }
    };

    requestPermission();
  }, [detector, onPermissionChange]);

  const captureFrame = useCallback(async () => {
    if (
      !detector ||
      !cameraRef.current ||
      permission !== "authorized" ||
      !isActive ||
      isCapturingRef.current
    ) {
      return;
    }

    isCapturingRef.current = true;
    try {
      const photo = await cameraRef.current.takePhoto({
        qualityPrioritization: "balanced",
        flash: "off",
        skipMetadata: true,
      });

      const framePayload = {
        path: photo?.path || photo?.uri,
        width: photo?.width,
        height: photo?.height,
      };

      const result = await detector.processCameraFrame(framePayload);
      if (result?.motionData && onMotionDetected) {
        onMotionDetected(result.motionData);
      }
      if (result && onFrameAnalyzed) {
        onFrameAnalyzed(result);
      }
    } catch (error) {
      Logger.error("Snapshot processing failed", error.message);
    } finally {
      isCapturingRef.current = false;
    }
  }, [detector, isActive, onFrameAnalyzed, onMotionDetected, permission]);

  useEffect(() => {
    if (detector && permission === "authorized") {
      detector.initialize?.().catch((error) => {
        Logger.error("Face detector init error", error.message);
      });
    }
  }, [detector, permission]);

  useEffect(() => {
    if (!detector || permission !== "authorized" || !isActive) {
      return;
    }

    captureFrame();
    const intervalId = setInterval(() => {
      captureFrame();
    }, FRAME_CAPTURE_INTERVAL_MS);

    return () => clearInterval(intervalId);
  }, [captureFrame, detector, isActive, permission]);

  const cameraContent = useMemo(() => {
    if (!device) {
      return (
        <View style={styles.overlayMessage}>
          <Text style={styles.overlayText}>Ön kamera bulunamadı</Text>
        </View>
      );
    }

    return (
      <Camera
        ref={cameraRef}
        style={StyleSheet.compose(styles.camera, style)}
        device={device}
        isActive={isActive && permission === "authorized"}
        photo={true}
      />
    );
  }, [device, isActive, permission, style]);

  if (initializing) {
    return (
      <View style={styles.loaderContainer}>
        <ActivityIndicator size="large" color="#2563eb" />
        <Text style={styles.overlayText}>Kamera hazırlanıyor...</Text>
      </View>
    );
  }

  if (permission !== "authorized") {
    return (
      <View style={styles.overlayMessage}>
        <Text style={styles.overlayText}>
          Kamera izni gerekli. Lütfen ayarlardan erişim izni verin.
        </Text>
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <View style={styles.cameraContainer}>
        {cameraContent}
        <View
          style={[
            styles.overlayBox,
            motionState?.faceDetected
              ? motionState?.motions?.lookStraight
                ? styles.overlayBoxSuccess
                : styles.overlayBoxAlert
              : styles.overlayBoxIdle,
          ]}
        />
      </View>
      {instruction ? (
        <View style={styles.instructionBanner}>
          <Text style={styles.instructionIcon}>{instruction.icon}</Text>
          <View style={styles.instructionContent}>
            <Text style={styles.instructionTitle}>{instruction.title}</Text>
            <Text style={styles.instructionText}>{instruction.message}</Text>
          </View>
        </View>
      ) : null}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    width: "100%",
  },
  cameraContainer: {
    width: "100%",
    aspectRatio: 3 / 4,
    borderRadius: 16,
    overflow: "hidden",
    backgroundColor: "#000",
  },
  camera: {
    flex: 1,
  },
  loaderContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    paddingVertical: 16,
  },
  overlayMessage: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    padding: 24,
    backgroundColor: "rgba(23, 37, 84, 0.08)",
    borderRadius: 16,
  },
  overlayText: {
    color: "#1f2937",
    fontSize: 14,
    textAlign: "center",
  },
  instructionBanner: {
    marginTop: 16,
    padding: 16,
    backgroundColor: "#eff6ff",
    borderRadius: 12,
    flexDirection: "row",
    alignItems: "center",
    gap: 12,
  },
  instructionIcon: {
    fontSize: 24,
  },
  instructionContent: {
    flex: 1,
  },
  instructionTitle: {
    fontSize: 16,
    fontWeight: "600",
    color: "#1d4ed8",
    marginBottom: 4,
  },
  instructionText: {
    fontSize: 14,
    color: "#1f2937",
  },
  overlayBox: {
    position: "absolute",
    top: "20%",
    left: "10%",
    right: "10%",
    bottom: "30%",
    borderRadius: 24,
    borderWidth: 3,
    borderStyle: "dashed",
  },
  overlayBoxIdle: {
    borderColor: "rgba(248, 113, 113, 0.7)",
    backgroundColor: "rgba(248, 113, 113, 0.08)",
  },
  overlayBoxAlert: {
    borderColor: "rgba(248, 113, 113, 0.95)",
    backgroundColor: "rgba(248, 113, 113, 0.12)",
  },
  overlayBoxSuccess: {
    borderColor: "rgba(34, 197, 94, 0.95)",
    backgroundColor: "rgba(34, 197, 94, 0.14)",
  },
});

export default LivenessCamera;
