package androidx.camera.camera2.internal.compat;

import android.hardware.camera2.CameraAccessException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

@RequiresApi(21)
/* loaded from: classes.dex */
public class CameraAccessExceptionCompat extends Exception {

    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public static final int CAMERA_DEPRECATED_HAL = 1000;
    public static final int CAMERA_DISABLED = 1;
    public static final int CAMERA_DISCONNECTED = 2;
    public static final int CAMERA_ERROR = 3;
    public static final int CAMERA_IN_USE = 4;
    public static final int MAX_CAMERAS_IN_USE = 5;
    private final CameraAccessException mCameraAccessException;
    private final int mReason;

    @VisibleForTesting
    static final Set<Integer> PLATFORM_ERRORS = Collections.unmodifiableSet(new HashSet(Arrays.asList(4, 5, 1, 2, 3)));
    public static final int CAMERA_UNAVAILABLE_DO_NOT_DISTURB = 10001;
    public static final int CAMERA_CHARACTERISTICS_CREATION_ERROR = 10002;

    @VisibleForTesting
    static final Set<Integer> COMPAT_ERRORS = Collections.unmodifiableSet(new HashSet(Arrays.asList(Integer.valueOf(CAMERA_UNAVAILABLE_DO_NOT_DISTURB), Integer.valueOf(CAMERA_CHARACTERISTICS_CREATION_ERROR))));

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY})
    public @interface AccessError {
    }

    public CameraAccessExceptionCompat(int r32) {
        super(getDefaultMessage(r32));
        this.mReason = r32;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(r32)) ? new CameraAccessException(r32) : null;
    }

    public CameraAccessExceptionCompat(int r32, @Nullable String str) {
        super(getCombinedMessage(r32, str));
        this.mReason = r32;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(r32)) ? new CameraAccessException(r32, str) : null;
    }

    public CameraAccessExceptionCompat(int r32, @Nullable String str, @Nullable Throwable th2) {
        super(getCombinedMessage(r32, str), th2);
        this.mReason = r32;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(r32)) ? new CameraAccessException(r32, str, th2) : null;
    }

    public CameraAccessExceptionCompat(int r32, @Nullable Throwable th2) {
        super(getDefaultMessage(r32), th2);
        this.mReason = r32;
        this.mCameraAccessException = PLATFORM_ERRORS.contains(Integer.valueOf(r32)) ? new CameraAccessException(r32, null, th2) : null;
    }

    private CameraAccessExceptionCompat(@NonNull CameraAccessException cameraAccessException) {
        super(cameraAccessException.getMessage(), cameraAccessException.getCause());
        this.mReason = cameraAccessException.getReason();
        this.mCameraAccessException = cameraAccessException;
    }

    private static String getCombinedMessage(int r32, String str) {
        return String.format("%s (%d): %s", getProblemString(r32), Integer.valueOf(r32), str);
    }

    @Nullable
    private static String getDefaultMessage(int r12) {
        if (r12 == 1) {
            return "The camera is disabled due to a device policy, and cannot be opened.";
        }
        if (r12 == 2) {
            return "The camera device is removable and has been disconnected from the Android device, or the camera service has shut down the connection due to a higher-priority access request for the camera device.";
        }
        if (r12 == 3) {
            return "The camera device is currently in the error state; no further calls to it will succeed.";
        }
        if (r12 == 4) {
            return "The camera device is in use already";
        }
        if (r12 == 5) {
            return "The system-wide limit for number of open cameras has been reached, and more camera devices cannot be opened until previous instances are closed.";
        }
        if (r12 == 10001) {
            return "Some API 28 devices cannot access the camera when the device is in \"Do Not Disturb\" mode. The camera will not be accessible until \"Do Not Disturb\" mode is disabled.";
        }
        if (r12 != 10002) {
            return null;
        }
        return "Failed to create CameraCharacteristics.";
    }

    @NonNull
    private static String getProblemString(int r12) {
        return r12 != 1 ? r12 != 2 ? r12 != 3 ? r12 != 4 ? r12 != 5 ? r12 != 1000 ? r12 != 10001 ? r12 != 10002 ? "<UNKNOWN ERROR>" : "CAMERA_CHARACTERISTICS_CREATION_ERROR" : "CAMERA_UNAVAILABLE_DO_NOT_DISTURB" : "CAMERA_DEPRECATED_HAL" : "MAX_CAMERAS_IN_USE" : "CAMERA_IN_USE" : "CAMERA_ERROR" : "CAMERA_DISCONNECTED" : "CAMERA_DISABLED";
    }

    @NonNull
    public static CameraAccessExceptionCompat toCameraAccessExceptionCompat(@NonNull CameraAccessException cameraAccessException) {
        if (cameraAccessException != null) {
            return new CameraAccessExceptionCompat(cameraAccessException);
        }
        throw new NullPointerException("cameraAccessException should not be null");
    }

    public final int getReason() {
        return this.mReason;
    }

    @Nullable
    public CameraAccessException toCameraAccessException() {
        return this.mCameraAccessException;
    }
}
