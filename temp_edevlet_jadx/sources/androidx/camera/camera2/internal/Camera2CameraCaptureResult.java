package androidx.camera.camera2.internal;

import android.graphics.Rect;
import android.hardware.camera2.CaptureResult;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.camera.core.impl.CameraCaptureResult;
import androidx.camera.core.impl.TagBundle;
import androidx.camera.core.impl.utils.ExifData;

@RequiresApi(21)
/* loaded from: classes.dex */
public class Camera2CameraCaptureResult implements CameraCaptureResult {
    private static final String TAG = "C2CameraCaptureResult";
    private final CaptureResult mCaptureResult;
    private final TagBundle mTagBundle;

    public Camera2CameraCaptureResult(@NonNull CaptureResult captureResult) {
        this(TagBundle.emptyBundle(), captureResult);
    }

    public Camera2CameraCaptureResult(@NonNull TagBundle tagBundle, @NonNull CaptureResult captureResult) {
        this.mTagBundle = tagBundle;
        this.mCaptureResult = captureResult;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AeState getAeState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AE_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AeState.UNKNOWN;
        }
        int r12 = num.intValue();
        if (r12 == 0) {
            return CameraCaptureMetaData.AeState.INACTIVE;
        }
        if (r12 != 1) {
            if (r12 == 2) {
                return CameraCaptureMetaData.AeState.CONVERGED;
            }
            if (r12 == 3) {
                return CameraCaptureMetaData.AeState.LOCKED;
            }
            if (r12 == 4) {
                return CameraCaptureMetaData.AeState.FLASH_REQUIRED;
            }
            if (r12 != 5) {
                Logger.e(TAG, "Undefined ae state: " + num);
                return CameraCaptureMetaData.AeState.UNKNOWN;
            }
        }
        return CameraCaptureMetaData.AeState.SEARCHING;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AfMode getAfMode() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AF_MODE);
        if (num == null) {
            return CameraCaptureMetaData.AfMode.UNKNOWN;
        }
        int r12 = num.intValue();
        if (r12 != 0) {
            if (r12 == 1 || r12 == 2) {
                return CameraCaptureMetaData.AfMode.ON_MANUAL_AUTO;
            }
            if (r12 == 3 || r12 == 4) {
                return CameraCaptureMetaData.AfMode.ON_CONTINUOUS_AUTO;
            }
            if (r12 != 5) {
                Logger.e(TAG, "Undefined af mode: " + num);
                return CameraCaptureMetaData.AfMode.UNKNOWN;
            }
        }
        return CameraCaptureMetaData.AfMode.OFF;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AfState getAfState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AF_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AfState.UNKNOWN;
        }
        switch (num.intValue()) {
            case 0:
                break;
            case 1:
            case 3:
                break;
            case 2:
                break;
            case 4:
                break;
            case 5:
                break;
            case 6:
                break;
            default:
                Logger.e(TAG, "Undefined af state: " + num);
                break;
        }
        return CameraCaptureMetaData.AfState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.AwbState getAwbState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AWB_STATE);
        if (num == null) {
            return CameraCaptureMetaData.AwbState.UNKNOWN;
        }
        int r12 = num.intValue();
        if (r12 == 0) {
            return CameraCaptureMetaData.AwbState.INACTIVE;
        }
        if (r12 == 1) {
            return CameraCaptureMetaData.AwbState.METERING;
        }
        if (r12 == 2) {
            return CameraCaptureMetaData.AwbState.CONVERGED;
        }
        if (r12 == 3) {
            return CameraCaptureMetaData.AwbState.LOCKED;
        }
        Logger.e(TAG, "Undefined awb state: " + num);
        return CameraCaptureMetaData.AwbState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CaptureResult getCaptureResult() {
        return this.mCaptureResult;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public CameraCaptureMetaData.FlashState getFlashState() {
        Integer num = (Integer) this.mCaptureResult.get(CaptureResult.FLASH_STATE);
        if (num == null) {
            return CameraCaptureMetaData.FlashState.UNKNOWN;
        }
        int r12 = num.intValue();
        if (r12 == 0 || r12 == 1) {
            return CameraCaptureMetaData.FlashState.NONE;
        }
        if (r12 == 2) {
            return CameraCaptureMetaData.FlashState.READY;
        }
        if (r12 == 3 || r12 == 4) {
            return CameraCaptureMetaData.FlashState.FIRED;
        }
        Logger.e(TAG, "Undefined flash state: " + num);
        return CameraCaptureMetaData.FlashState.UNKNOWN;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    @NonNull
    public TagBundle getTagBundle() {
        return this.mTagBundle;
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public long getTimestamp() {
        Long l5 = (Long) this.mCaptureResult.get(CaptureResult.SENSOR_TIMESTAMP);
        if (l5 == null) {
            return -1L;
        }
        return l5.longValue();
    }

    @Override // androidx.camera.core.impl.CameraCaptureResult
    public void populateExifData(@NonNull ExifData.Builder builder) {
        Integer num;
        androidx.camera.core.impl.b.b(this, builder);
        Rect rect = (Rect) this.mCaptureResult.get(CaptureResult.SCALER_CROP_REGION);
        if (rect != null) {
            builder.setImageWidth(rect.width()).setImageHeight(rect.height());
        }
        Integer num2 = (Integer) this.mCaptureResult.get(CaptureResult.JPEG_ORIENTATION);
        if (num2 != null) {
            builder.setOrientationDegrees(num2.intValue());
        }
        Long l5 = (Long) this.mCaptureResult.get(CaptureResult.SENSOR_EXPOSURE_TIME);
        if (l5 != null) {
            builder.setExposureTimeNanos(l5.longValue());
        }
        Float f = (Float) this.mCaptureResult.get(CaptureResult.LENS_APERTURE);
        if (f != null) {
            builder.setLensFNumber(f.floatValue());
        }
        Integer numValueOf = (Integer) this.mCaptureResult.get(CaptureResult.SENSOR_SENSITIVITY);
        if (numValueOf != null) {
            if (Build.VERSION.SDK_INT >= 24 && (num = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_POST_RAW_SENSITIVITY_BOOST)) != null) {
                numValueOf = Integer.valueOf(numValueOf.intValue() * ((int) (num.intValue() / 100.0f)));
            }
            builder.setIso(numValueOf.intValue());
        }
        Float f10 = (Float) this.mCaptureResult.get(CaptureResult.LENS_FOCAL_LENGTH);
        if (f10 != null) {
            builder.setFocalLength(f10.floatValue());
        }
        Integer num3 = (Integer) this.mCaptureResult.get(CaptureResult.CONTROL_AWB_MODE);
        if (num3 != null) {
            ExifData.WhiteBalanceMode whiteBalanceMode = ExifData.WhiteBalanceMode.AUTO;
            if (num3.intValue() == 0) {
                whiteBalanceMode = ExifData.WhiteBalanceMode.MANUAL;
            }
            builder.setWhiteBalanceMode(whiteBalanceMode);
        }
    }
}
