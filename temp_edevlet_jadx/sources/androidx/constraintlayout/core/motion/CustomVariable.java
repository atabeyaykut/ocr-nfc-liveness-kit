package androidx.constraintlayout.core.motion;

import ab.b;
import androidx.appcompat.graphics.drawable.a;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class CustomVariable {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private float mFloatValue;
    private int mIntegerValue;
    String mName;
    private String mStringValue;
    private int mType;

    public CustomVariable(CustomVariable customVariable) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        this.mIntegerValue = customVariable.mIntegerValue;
        this.mFloatValue = customVariable.mFloatValue;
        this.mStringValue = customVariable.mStringValue;
        this.mBooleanValue = customVariable.mBooleanValue;
    }

    public CustomVariable(CustomVariable customVariable, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = customVariable.mName;
        this.mType = customVariable.mType;
        setValue(obj);
    }

    public CustomVariable(String str, int r32) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = r32;
    }

    public CustomVariable(String str, int r32, float f) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mStringValue = null;
        this.mName = str;
        this.mType = r32;
        this.mFloatValue = f;
    }

    public CustomVariable(String str, int r32, int r42) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = r32;
        if (r32 == 901) {
            this.mFloatValue = r42;
        } else {
            this.mIntegerValue = r42;
        }
    }

    public CustomVariable(String str, int r32, Object obj) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = r32;
        setValue(obj);
    }

    public CustomVariable(String str, int r32, String str2) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mName = str;
        this.mType = r32;
        this.mStringValue = str2;
    }

    public CustomVariable(String str, int r32, boolean z10) {
        this.mIntegerValue = Integer.MIN_VALUE;
        this.mFloatValue = Float.NaN;
        this.mStringValue = null;
        this.mName = str;
        this.mType = r32;
        this.mBooleanValue = z10;
    }

    private static int clamp(int r12) {
        int r13 = (r12 & (~(r12 >> 31))) - 255;
        return (r13 & (r13 >> 31)) + 255;
    }

    public static String colorString(int r22) {
        return "#" + b.c(r22, new StringBuilder("00000000")).substring(r2.length() - 8);
    }

    public static int hsvToRgb(float f, float f10, float f11) {
        float f12 = f * 6.0f;
        int r02 = (int) f12;
        float f13 = f12 - r02;
        float f14 = f11 * 255.0f;
        int r32 = (int) a.d(1.0f, f10, f14, 0.5f);
        int r42 = (int) (((1.0f - (f13 * f10)) * f14) + 0.5f);
        int r52 = (int) (((1.0f - ((1.0f - f13) * f10)) * f14) + 0.5f);
        int r6 = (int) (f14 + 0.5f);
        if (r02 == 0) {
            return ((r6 << 16) + (r52 << 8) + r32) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (r02 == 1) {
            return ((r42 << 16) + (r6 << 8) + r32) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (r02 == 2) {
            return ((r32 << 16) + (r6 << 8) + r52) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (r02 == 3) {
            return ((r32 << 16) + (r42 << 8) + r6) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (r02 == 4) {
            return ((r52 << 16) + (r32 << 8) + r6) | ViewCompat.MEASURED_STATE_MASK;
        }
        if (r02 != 5) {
            return 0;
        }
        return ((r6 << 16) + (r32 << 8) + r42) | ViewCompat.MEASURED_STATE_MASK;
    }

    public static int rgbaTocColor(float f, float f10, float f11, float f12) {
        int r12 = clamp((int) (f * 255.0f));
        int r22 = clamp((int) (f10 * 255.0f));
        return (r12 << 16) | (clamp((int) (f12 * 255.0f)) << 24) | (r22 << 8) | clamp((int) (f11 * 255.0f));
    }

    public void applyToWidget(MotionWidget motionWidget) {
        int r02 = this.mType;
        switch (r02) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                motionWidget.setCustomAttribute(this.mName, r02, this.mIntegerValue);
                break;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, r02, this.mFloatValue);
                break;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                motionWidget.setCustomAttribute(this.mName, r02, this.mStringValue);
                break;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, r02, this.mBooleanValue);
                break;
        }
    }

    public CustomVariable copy() {
        return new CustomVariable(this);
    }

    public boolean diff(CustomVariable customVariable) {
        int r12;
        if (customVariable == null || (r12 = this.mType) != customVariable.mType) {
            return false;
        }
        switch (r12) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                if (this.mIntegerValue == customVariable.mIntegerValue) {
                }
                break;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                if (this.mFloatValue == customVariable.mFloatValue) {
                }
                break;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                if (this.mIntegerValue == customVariable.mIntegerValue) {
                }
                break;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                if (this.mIntegerValue == customVariable.mIntegerValue) {
                }
                break;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                if (this.mBooleanValue == customVariable.mBooleanValue) {
                }
                break;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                if (this.mFloatValue == customVariable.mFloatValue) {
                }
                break;
        }
        return false;
    }

    public boolean getBooleanValue() {
        return this.mBooleanValue;
    }

    public int getColorValue() {
        return this.mIntegerValue;
    }

    public float getFloatValue() {
        return this.mFloatValue;
    }

    public int getIntegerValue() {
        return this.mIntegerValue;
    }

    public int getInterpolatedColor(float[] fArr) {
        return (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f));
    }

    public String getName() {
        return this.mName;
    }

    public String getStringValue() {
        return this.mStringValue;
    }

    public int getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (this.mType) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
                return this.mIntegerValue;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                return this.mFloatValue;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (this.mType) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
                fArr[0] = this.mIntegerValue;
                return;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                fArr[0] = this.mFloatValue;
                return;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                int r22 = (this.mIntegerValue >> 24) & 255;
                float fPow = (float) Math.pow(((r0 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((r0 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((r0 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = r22 / 255.0f;
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int r02 = this.mType;
        return (r02 == 903 || r02 == 904 || r02 == 906) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        return this.mType != 902 ? 1 : 4;
    }

    public void setBooleanValue(boolean z10) {
        this.mBooleanValue = z10;
    }

    public void setFloatValue(float f) {
        this.mFloatValue = f;
    }

    public void setIntValue(int r12) {
        this.mIntegerValue = r12;
    }

    public void setInterpolatedValue(MotionWidget motionWidget, float[] fArr) {
        int r02 = this.mType;
        switch (r02) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
                motionWidget.setCustomAttribute(this.mName, r02, (int) fArr[0]);
                return;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                motionWidget.setCustomAttribute(this.mName, r02, fArr[0]);
                return;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                motionWidget.setCustomAttribute(this.mName, this.mType, (clamp((int) (fArr[3] * 255.0f)) << 24) | (clamp((int) (((float) Math.pow(fArr[0], 0.45454545454545453d)) * 255.0f)) << 16) | (clamp((int) (((float) Math.pow(fArr[1], 0.45454545454545453d)) * 255.0f)) << 8) | clamp((int) (((float) Math.pow(fArr[2], 0.45454545454545453d)) * 255.0f)));
                return;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                throw new RuntimeException("unable to interpolate " + this.mName);
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                motionWidget.setCustomAttribute(this.mName, r02, fArr[0] > 0.5f);
                return;
            default:
                return;
        }
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(Object obj) {
        switch (this.mType) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                this.mStringValue = (String) obj;
                break;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                break;
        }
    }

    public void setValue(float[] fArr) {
        int r92;
        switch (this.mType) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
            case TypedValues.Custom.TYPE_REFERENCE /* 906 */:
                r92 = (int) fArr[0];
                break;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                this.mFloatValue = fArr[0];
                return;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                r92 = ((Math.round(fArr[3] * 255.0f) & 255) << 24) | ((Math.round(((float) Math.pow(fArr[0], 0.5d)) * 255.0f) & 255) << 16) | ((Math.round(((float) Math.pow(fArr[1], 0.5d)) * 255.0f) & 255) << 8) | (Math.round(((float) Math.pow(fArr[2], 0.5d)) * 255.0f) & 255);
                break;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                throw new RuntimeException("Cannot interpolate String");
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            default:
                return;
        }
        this.mIntegerValue = r92;
    }

    public String toString() {
        StringBuilder sbE;
        StringBuilder sb2;
        String strColorString;
        String strH = android.support.v4.media.a.h(new StringBuilder(), this.mName, ':');
        switch (this.mType) {
            case TypedValues.Custom.TYPE_INT /* 900 */:
                sbE = androidx.constraintlayout.core.a.e(strH);
                sbE.append(this.mIntegerValue);
                break;
            case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                sb2 = new StringBuilder();
                sb2.append(strH);
                sb2.append(this.mFloatValue);
                sbE = sb2;
                break;
            case TypedValues.Custom.TYPE_COLOR /* 902 */:
                sbE = androidx.constraintlayout.core.a.e(strH);
                strColorString = colorString(this.mIntegerValue);
                sbE.append(strColorString);
                break;
            case TypedValues.Custom.TYPE_STRING /* 903 */:
                sbE = androidx.constraintlayout.core.a.e(strH);
                strColorString = this.mStringValue;
                sbE.append(strColorString);
                break;
            case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                sbE = androidx.constraintlayout.core.a.e(strH);
                sbE.append(Boolean.valueOf(this.mBooleanValue));
                break;
            case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                sb2 = new StringBuilder();
                sb2.append(strH);
                sb2.append(this.mFloatValue);
                sbE = sb2;
                break;
            default:
                sbE = androidx.constraintlayout.core.a.e(strH);
                strColorString = "????";
                sbE.append(strColorString);
                break;
        }
        return sbE.toString();
    }
}
