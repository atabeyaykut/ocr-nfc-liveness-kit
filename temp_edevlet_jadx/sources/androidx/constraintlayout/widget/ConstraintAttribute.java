package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import androidx.browser.browseractions.b;
import androidx.core.view.ViewCompat;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ConstraintAttribute {
    private static final String TAG = "TransitionLayout";
    boolean mBooleanValue;
    private int mColorValue;
    private float mFloatValue;
    private int mIntegerValue;
    private boolean mMethod;
    String mName;
    private String mStringValue;
    private AttributeType mType;

    /* renamed from: androidx.constraintlayout.widget.ConstraintAttribute$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType;

        static {
            int[] r02 = new int[AttributeType.values().length];
            $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType = r02;
            try {
                r02[AttributeType.REFERENCE_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.BOOLEAN_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.STRING_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.COLOR_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.COLOR_DRAWABLE_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.INT_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.FLOAT_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[AttributeType.DIMENSION_TYPE.ordinal()] = 8;
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

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.mMethod = false;
        this.mName = constraintAttribute.mName;
        this.mType = constraintAttribute.mType;
        setValue(obj);
    }

    public ConstraintAttribute(String str, AttributeType attributeType) {
        this.mMethod = false;
        this.mName = str;
        this.mType = attributeType;
    }

    public ConstraintAttribute(String str, AttributeType attributeType, Object obj, boolean z10) {
        this.mName = str;
        this.mType = attributeType;
        this.mMethod = z10;
        setValue(obj);
    }

    private static int clamp(int r12) {
        int r13 = (r12 & (~(r12 >> 31))) - 255;
        return (r13 & (r13 >> 31)) + 255;
    }

    public static HashMap<String, ConstraintAttribute> extractAttributes(HashMap<String, ConstraintAttribute> map, View view) {
        HashMap<String, ConstraintAttribute> map2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            try {
                map2.put(str, str.equals("BackgroundColor") ? new ConstraintAttribute(constraintAttribute, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())) : new ConstraintAttribute(constraintAttribute, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e10) {
                e10.printStackTrace();
            }
        }
        return map2;
    }

    public static void parse(Context context, XmlPullParser xmlPullParser, HashMap<String, ConstraintAttribute> map) {
        AttributeType attributeType;
        int resourceId;
        Object string;
        float dimension;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), R.styleable.CustomAttribute);
        int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
        String string2 = null;
        Object objValueOf = null;
        AttributeType attributeType2 = null;
        boolean z10 = false;
        for (int r52 = 0; r52 < indexCount; r52++) {
            int index = typedArrayObtainStyledAttributes.getIndex(r52);
            if (index == R.styleable.CustomAttribute_attributeName) {
                string2 = typedArrayObtainStyledAttributes.getString(index);
                if (string2 != null && string2.length() > 0) {
                    string2 = Character.toUpperCase(string2.charAt(0)) + string2.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                string2 = typedArrayObtainStyledAttributes.getString(index);
                z10 = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                objValueOf = Boolean.valueOf(typedArrayObtainStyledAttributes.getBoolean(index, false));
                attributeType2 = AttributeType.BOOLEAN_TYPE;
            } else {
                if (index == R.styleable.CustomAttribute_customColorValue) {
                    attributeType = AttributeType.COLOR_TYPE;
                } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                    attributeType = AttributeType.COLOR_DRAWABLE_TYPE;
                } else {
                    if (index == R.styleable.CustomAttribute_customPixelDimension) {
                        attributeType = AttributeType.DIMENSION_TYPE;
                        dimension = TypedValue.applyDimension(1, typedArrayObtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics());
                    } else if (index == R.styleable.CustomAttribute_customDimension) {
                        attributeType = AttributeType.DIMENSION_TYPE;
                        dimension = typedArrayObtainStyledAttributes.getDimension(index, 0.0f);
                    } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                        attributeType = AttributeType.FLOAT_TYPE;
                        dimension = typedArrayObtainStyledAttributes.getFloat(index, Float.NaN);
                    } else {
                        if (index == R.styleable.CustomAttribute_customIntegerValue) {
                            attributeType = AttributeType.INT_TYPE;
                            resourceId = typedArrayObtainStyledAttributes.getInteger(index, -1);
                        } else if (index == R.styleable.CustomAttribute_customStringValue) {
                            attributeType = AttributeType.STRING_TYPE;
                            string = typedArrayObtainStyledAttributes.getString(index);
                            Object obj = string;
                            attributeType2 = attributeType;
                            objValueOf = obj;
                        } else if (index == R.styleable.CustomAttribute_customReference) {
                            attributeType = AttributeType.REFERENCE_TYPE;
                            resourceId = typedArrayObtainStyledAttributes.getResourceId(index, -1);
                            if (resourceId == -1) {
                                resourceId = typedArrayObtainStyledAttributes.getInt(index, -1);
                            }
                        }
                        string = Integer.valueOf(resourceId);
                        Object obj2 = string;
                        attributeType2 = attributeType;
                        objValueOf = obj2;
                    }
                    string = Float.valueOf(dimension);
                    Object obj22 = string;
                    attributeType2 = attributeType;
                    objValueOf = obj22;
                }
                resourceId = typedArrayObtainStyledAttributes.getColor(index, 0);
                string = Integer.valueOf(resourceId);
                Object obj222 = string;
                attributeType2 = attributeType;
                objValueOf = obj222;
            }
        }
        if (string2 != null && objValueOf != null) {
            map.put(string2, new ConstraintAttribute(string2, attributeType2, objValueOf, z10));
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public static void setAttributes(View view, HashMap<String, ConstraintAttribute> map) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        StringBuilder sb2;
        Class<?> cls = view.getClass();
        for (String str : map.keySet()) {
            ConstraintAttribute constraintAttribute = map.get(str);
            String strE = !constraintAttribute.mMethod ? b.e("set", str) : str;
            try {
                switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[constraintAttribute.mType.ordinal()]) {
                    case 1:
                        cls.getMethod(strE, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mIntegerValue));
                        break;
                    case 2:
                        cls.getMethod(strE, Boolean.TYPE).invoke(view, Boolean.valueOf(constraintAttribute.mBooleanValue));
                        break;
                    case 3:
                        cls.getMethod(strE, CharSequence.class).invoke(view, constraintAttribute.mStringValue);
                        break;
                    case 4:
                        cls.getMethod(strE, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mColorValue));
                        break;
                    case 5:
                        Method method = cls.getMethod(strE, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(constraintAttribute.mColorValue);
                        method.invoke(view, colorDrawable);
                        break;
                    case 6:
                        cls.getMethod(strE, Integer.TYPE).invoke(view, Integer.valueOf(constraintAttribute.mIntegerValue));
                        break;
                    case 7:
                        cls.getMethod(strE, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                    case 8:
                        cls.getMethod(strE, Float.TYPE).invoke(view, Float.valueOf(constraintAttribute.mFloatValue));
                        break;
                }
            } catch (IllegalAccessException e10) {
                e = e10;
                sb2 = new StringBuilder(" Custom Attribute \"");
                sb2.append(str);
                sb2.append("\" not found on ");
                sb2.append(cls.getName());
                Log.e(TAG, sb2.toString());
                e.printStackTrace();
            } catch (NoSuchMethodException e11) {
                Log.e(TAG, e11.getMessage());
                Log.e(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                Log.e(TAG, cls.getName() + " must have a method " + strE);
            } catch (InvocationTargetException e12) {
                e = e12;
                sb2 = new StringBuilder(" Custom Attribute \"");
                sb2.append(str);
                sb2.append("\" not found on ");
                sb2.append(cls.getName());
                Log.e(TAG, sb2.toString());
                e.printStackTrace();
            }
        }
    }

    public void applyCustom(View view) throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        StringBuilder sb2;
        Class<?> cls = view.getClass();
        String str = this.mName;
        String strE = !this.mMethod ? b.e("set", str) : str;
        try {
            switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
                case 1:
                case 6:
                    cls.getMethod(strE, Integer.TYPE).invoke(view, Integer.valueOf(this.mIntegerValue));
                    break;
                case 2:
                    cls.getMethod(strE, Boolean.TYPE).invoke(view, Boolean.valueOf(this.mBooleanValue));
                    break;
                case 3:
                    cls.getMethod(strE, CharSequence.class).invoke(view, this.mStringValue);
                    break;
                case 4:
                    cls.getMethod(strE, Integer.TYPE).invoke(view, Integer.valueOf(this.mColorValue));
                    break;
                case 5:
                    Method method = cls.getMethod(strE, Drawable.class);
                    ColorDrawable colorDrawable = new ColorDrawable();
                    colorDrawable.setColor(this.mColorValue);
                    method.invoke(view, colorDrawable);
                    break;
                case 7:
                    cls.getMethod(strE, Float.TYPE).invoke(view, Float.valueOf(this.mFloatValue));
                    break;
                case 8:
                    cls.getMethod(strE, Float.TYPE).invoke(view, Float.valueOf(this.mFloatValue));
                    break;
            }
        } catch (IllegalAccessException e10) {
            e = e10;
            sb2 = new StringBuilder(" Custom Attribute \"");
            sb2.append(str);
            sb2.append("\" not found on ");
            sb2.append(cls.getName());
            Log.e(TAG, sb2.toString());
            e.printStackTrace();
        } catch (NoSuchMethodException e11) {
            Log.e(TAG, e11.getMessage());
            Log.e(TAG, " Custom Attribute \"" + str + "\" not found on " + cls.getName());
            Log.e(TAG, cls.getName() + " must have a method " + strE);
        } catch (InvocationTargetException e12) {
            e = e12;
            sb2 = new StringBuilder(" Custom Attribute \"");
            sb2.append(str);
            sb2.append("\" not found on ");
            sb2.append(cls.getName());
            Log.e(TAG, sb2.toString());
            e.printStackTrace();
        }
    }

    public boolean diff(ConstraintAttribute constraintAttribute) {
        AttributeType attributeType;
        if (constraintAttribute == null || (attributeType = this.mType) != constraintAttribute.mType) {
            return false;
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[attributeType.ordinal()]) {
            case 1:
            case 6:
                if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                }
                break;
            case 2:
                if (this.mBooleanValue == constraintAttribute.mBooleanValue) {
                }
                break;
            case 3:
                if (this.mIntegerValue == constraintAttribute.mIntegerValue) {
                }
                break;
            case 4:
            case 5:
                if (this.mColorValue == constraintAttribute.mColorValue) {
                }
                break;
            case 7:
                if (this.mFloatValue == constraintAttribute.mFloatValue) {
                }
                break;
            case 8:
                if (this.mFloatValue == constraintAttribute.mFloatValue) {
                }
                break;
        }
        return false;
    }

    public int getColorValue() {
        return this.mColorValue;
    }

    public float getFloatValue() {
        return this.mFloatValue;
    }

    public int getIntegerValue() {
        return this.mIntegerValue;
    }

    public String getName() {
        return this.mName;
    }

    public String getStringValue() {
        return this.mStringValue;
    }

    public AttributeType getType() {
        return this.mType;
    }

    public float getValueToInterpolate() {
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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

    public boolean isBooleanValue() {
        return this.mBooleanValue;
    }

    public boolean isContinuous() {
        int r02 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()];
        return (r02 == 1 || r02 == 2 || r02 == 3) ? false : true;
    }

    public boolean isMethod() {
        return this.mMethod;
    }

    public int numberOfInterpolatedValues() {
        int r02 = AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()];
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$widget$ConstraintAttribute$AttributeType[this.mType.ordinal()]) {
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
                int r02 = Color.HSVToColor(fArr);
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
