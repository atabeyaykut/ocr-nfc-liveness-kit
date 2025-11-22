package androidx.constraintlayout.core.motion;

import androidx.appcompat.graphics.drawable.a;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
public class CustomAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* renamed from: androidx.constraintlayout.core.motion.CustomAttribute$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType;

        static {
            int[] r02 = new int[AttributeType.values().length];
            $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType = r02;
            try {
                r02[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public enum AttributeType {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE,
        REFERENCE_TYPE
    }

    public CustomAttribute(CustomAttribute customAttribute, Object obj) {
        this.mMethod = false;
        this.mName = customAttribute.mName;
        this.mType = customAttribute.mType;
        setValue(obj);
    }

    public CustomAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    public CustomAttribute(String str, AttributeType attributeType, Object obj, boolean z10) {
        this.mName = str;
        this.mType = attributeType;
        this.mMethod = z10;
        setValue(obj);
    }

    private static int clamp(int r12) {
        int r13 = (r12 & (~(r12 >> 31))) - 255;
        return (r13 & (r13 >> 31)) + 255;
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

    public boolean diff(CustomAttribute customAttribute) {
        AttributeType attributeType;
        if (customAttribute == null || (attributeType = this.mType) != customAttribute.mType) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[attributeType.ordinal()]) {
            case 1:
            case 6:
                if (this.mIntegerValue == customAttribute.mIntegerValue) {
                }
                break;
            case 2:
                if (this.mBooleanValue == customAttribute.mBooleanValue) {
                }
                break;
            case 3:
                if (this.mIntegerValue == customAttribute.mIntegerValue) {
                }
                break;
            case 4:
            case 5:
                if (this.mColorValue == customAttribute.mColorValue) {
                }
                break;
            case 7:
                if (this.mFloatValue == customAttribute.mFloatValue) {
                }
                break;
            case 8:
                if (this.mFloatValue == customAttribute.mFloatValue) {
                }
                break;
        }
        return false;
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                return this.mBooleanValue ? 1.0f : 0.0f;
            case 3:
                throw new RuntimeException("Cannot interpolate String");
            case 4:
            case 5:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 6:
                return this.mIntegerValue;
            case 7:
                return this.mFloatValue;
            case 8:
                return this.mFloatValue;
            default:
                return Float.NaN;
        }
    }

    public void getValuesToInterpolate(float[] fArr) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 2:
                fArr[0] = this.mBooleanValue ? 1.0f : 0.0f;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int r22 = (this.mColorValue >> 24) & 255;
                float fPow = (float) Math.pow(((r0 >> 16) & 255) / 255.0f, 2.2d);
                float fPow2 = (float) Math.pow(((r0 >> 8) & 255) / 255.0f, 2.2d);
                float fPow3 = (float) Math.pow((r0 & 255) / 255.0f, 2.2d);
                fArr[0] = fPow;
                fArr[1] = fPow2;
                fArr[2] = fPow3;
                fArr[3] = r22 / 255.0f;
                return;
            case 6:
                fArr[0] = this.mIntegerValue;
                return;
            case 7:
                fArr[0] = this.mFloatValue;
                return;
            case 8:
                fArr[0] = this.mFloatValue;
                return;
            default:
                return;
        }
    }

    public boolean isContinuous() {
        int r02 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()];
        return (r02 == 1 || r02 == 2 || r02 == 3) ? false : true;
    }

    public int numberOfInterpolatedValues() {
        int r02 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()];
        return (r02 == 4 || r02 == 5) ? 4 : 1;
    }

    public void setColorValue(int r12) {
        this.mColorValue = r12;
    }

    public void setFloatValue(float f) {
        this.mFloatValue = f;
    }

    public void setIntValue(int r12) {
        this.mIntegerValue = r12;
    }

    public void setStringValue(String str) {
        this.mStringValue = str;
    }

    public void setValue(Object obj) {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = ((Integer) obj).intValue();
                break;
            case 2:
                this.mBooleanValue = ((Boolean) obj).booleanValue();
                break;
            case 3:
                this.mStringValue = (String) obj;
                break;
            case 4:
            case 5:
                this.mColorValue = ((Integer) obj).intValue();
                break;
            case 7:
            case 8:
                this.mFloatValue = ((Float) obj).floatValue();
                break;
        }
    }

    public void setValue(float[] fArr) {
        float f;
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType[this.mType.ordinal()]) {
            case 1:
            case 6:
                this.mIntegerValue = (int) fArr[0];
                return;
            case 2:
                this.mBooleanValue = ((double) fArr[0]) > 0.5d;
                return;
            case 3:
                throw new RuntimeException("Color does not have a single color to interpolate");
            case 4:
            case 5:
                int r02 = hsvToRgb(fArr[0], fArr[1], fArr[2]);
                this.mColorValue = r02;
                this.mColorValue = (clamp((int) (fArr[3] * 255.0f)) << 24) | (r02 & ViewCompat.MEASURED_SIZE_MASK);
                return;
            case 7:
                f = fArr[0];
                break;
            case 8:
                f = fArr[0];
                break;
            default:
                return;
        }
        this.mFloatValue = f;
    }
}
