package androidx.constraintlayout.core.state;

import androidx.constraintlayout.core.motion.CustomAttribute;
import androidx.constraintlayout.core.motion.CustomVariable;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.constraintlayout.core.parser.CLElement;
import androidx.constraintlayout.core.parser.CLKey;
import androidx.constraintlayout.core.parser.CLNumber;
import androidx.constraintlayout.core.parser.CLObject;
import androidx.constraintlayout.core.parser.CLParsingException;
import androidx.constraintlayout.core.state.Transition;
import androidx.constraintlayout.core.widgets.ConstraintAnchor;
import androidx.constraintlayout.core.widgets.ConstraintWidget;
import androidx.core.os.EnvironmentCompat;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Set;

/* loaded from: classes.dex */
public class WidgetFrame {
    private static final boolean OLD_SYSTEM = true;
    public static float phone_orientation = Float.NaN;
    public float alpha;
    public int bottom;
    public float interpolatedPos;
    public int left;
    public final HashMap<String, CustomVariable> mCustom;
    public String name;
    public float pivotX;
    public float pivotY;
    public int right;
    public float rotationX;
    public float rotationY;
    public float rotationZ;
    public float scaleX;
    public float scaleY;
    public int top;
    public float translationX;
    public float translationY;
    public float translationZ;
    public int visibility;
    public ConstraintWidget widget;

    public WidgetFrame() {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
    }

    public WidgetFrame(WidgetFrame widgetFrame) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = widgetFrame.widget;
        this.left = widgetFrame.left;
        this.top = widgetFrame.top;
        this.right = widgetFrame.right;
        this.bottom = widgetFrame.bottom;
        updateAttributes(widgetFrame);
    }

    public WidgetFrame(ConstraintWidget constraintWidget) {
        this.widget = null;
        this.left = 0;
        this.top = 0;
        this.right = 0;
        this.bottom = 0;
        this.pivotX = Float.NaN;
        this.pivotY = Float.NaN;
        this.rotationX = Float.NaN;
        this.rotationY = Float.NaN;
        this.rotationZ = Float.NaN;
        this.translationX = Float.NaN;
        this.translationY = Float.NaN;
        this.translationZ = Float.NaN;
        this.scaleX = Float.NaN;
        this.scaleY = Float.NaN;
        this.alpha = Float.NaN;
        this.interpolatedPos = Float.NaN;
        this.visibility = 0;
        this.mCustom = new HashMap<>();
        this.name = null;
        this.widget = constraintWidget;
    }

    private static void add(StringBuilder sb2, String str, float f) {
        if (Float.isNaN(f)) {
            return;
        }
        sb2.append(str);
        sb2.append(": ");
        sb2.append(f);
        sb2.append(",\n");
    }

    private static void add(StringBuilder sb2, String str, int r22) {
        sb2.append(str);
        sb2.append(": ");
        sb2.append(r22);
        sb2.append(",\n");
    }

    private static float interpolate(float f, float f10, float f11, float f12) {
        boolean zIsNaN = Float.isNaN(f);
        boolean zIsNaN2 = Float.isNaN(f10);
        if (zIsNaN && zIsNaN2) {
            return Float.NaN;
        }
        if (zIsNaN) {
            f = f11;
        }
        if (zIsNaN2) {
            f10 = f11;
        }
        return androidx.appcompat.graphics.drawable.a.d(f10, f, f12, f);
    }

    public static void interpolate(int r22, int r23, WidgetFrame widgetFrame, WidgetFrame widgetFrame2, WidgetFrame widgetFrame3, Transition transition, float f) {
        int r72;
        float f10;
        int r14;
        int r17;
        float f11;
        float f12;
        int r21;
        float f13;
        int r92;
        int r11;
        int r82;
        int r20;
        int r10;
        int r52;
        float f14 = 100.0f * f;
        int r83 = (int) f14;
        int r93 = widgetFrame2.left;
        int r102 = widgetFrame2.top;
        int r112 = widgetFrame3.left;
        int r12 = widgetFrame3.top;
        int r13 = widgetFrame2.right - r93;
        int r142 = widgetFrame2.bottom - r102;
        int r15 = widgetFrame3.right - r112;
        int r132 = widgetFrame3.bottom - r12;
        float f15 = widgetFrame2.alpha;
        float f16 = widgetFrame3.alpha;
        if (widgetFrame2.visibility == 8) {
            r102 = (int) (r102 - (r132 / 2.0f));
            r17 = (int) (r93 - (r15 / 2.0f));
            if (Float.isNaN(f15)) {
                r14 = r132;
                r72 = r15;
                f10 = 0.0f;
            } else {
                f10 = f15;
                r72 = r15;
                r14 = r132;
            }
        } else {
            r72 = r13;
            f10 = f15;
            r14 = r142;
            r17 = r93;
        }
        if (widgetFrame3.visibility == 8) {
            r112 = (int) (r112 - (r72 / 2.0f));
            r12 = (int) (r12 - (r14 / 2.0f));
            r15 = r72;
            r132 = r14;
            if (Float.isNaN(f16)) {
                f16 = 0.0f;
            }
        }
        if (Float.isNaN(f10) && !Float.isNaN(f16)) {
            f10 = 1.0f;
        }
        if (!Float.isNaN(f10) && Float.isNaN(f16)) {
            f16 = 1.0f;
        }
        if (widgetFrame2.visibility == 4) {
            f12 = f16;
            f11 = 0.0f;
        } else {
            f11 = f10;
            f12 = f16;
        }
        float f17 = widgetFrame3.visibility == 4 ? 0.0f : f12;
        if (widgetFrame.widget == null || !transition.hasPositionKeyframes()) {
            r21 = r102;
            f13 = f;
            r92 = r17;
            r11 = r112;
        } else {
            Transition.KeyPosition keyPositionFindPreviousPosition = transition.findPreviousPosition(widgetFrame.widget.stringId, r83);
            r21 = r102;
            Transition.KeyPosition keyPositionFindNextPosition = transition.findNextPosition(widgetFrame.widget.stringId, r83);
            if (keyPositionFindPreviousPosition == keyPositionFindNextPosition) {
                keyPositionFindNextPosition = null;
            }
            if (keyPositionFindPreviousPosition != null) {
                int r84 = (int) (keyPositionFindPreviousPosition.f877x * r22);
                r20 = r112;
                r82 = r23;
                r21 = (int) (keyPositionFindPreviousPosition.f878y * r82);
                r10 = keyPositionFindPreviousPosition.frame;
                r92 = r84;
            } else {
                r82 = r23;
                r20 = r112;
                r92 = r17;
                r10 = 0;
            }
            if (keyPositionFindNextPosition != null) {
                int r02 = (int) (keyPositionFindNextPosition.f877x * r22);
                int r85 = (int) (keyPositionFindNextPosition.f878y * r82);
                r52 = keyPositionFindNextPosition.frame;
                r11 = r02;
                r12 = r85;
            } else {
                r52 = 100;
                r11 = r20;
            }
            f13 = (f14 - r10) / (r52 - r10);
        }
        widgetFrame.widget = widgetFrame2.widget;
        int r53 = (int) (((r11 - r92) * f13) + r92);
        widgetFrame.left = r53;
        int r03 = (int) ((f13 * (r12 - r10)) + r21);
        widgetFrame.top = r03;
        float f18 = 1.0f - f;
        widgetFrame.right = r53 + ((int) ((r15 * f) + (r72 * f18)));
        widgetFrame.bottom = r03 + ((int) ((r132 * f) + (f18 * r14)));
        widgetFrame.pivotX = interpolate(widgetFrame2.pivotX, widgetFrame3.pivotX, 0.5f, f);
        widgetFrame.pivotY = interpolate(widgetFrame2.pivotY, widgetFrame3.pivotY, 0.5f, f);
        widgetFrame.rotationX = interpolate(widgetFrame2.rotationX, widgetFrame3.rotationX, 0.0f, f);
        widgetFrame.rotationY = interpolate(widgetFrame2.rotationY, widgetFrame3.rotationY, 0.0f, f);
        widgetFrame.rotationZ = interpolate(widgetFrame2.rotationZ, widgetFrame3.rotationZ, 0.0f, f);
        widgetFrame.scaleX = interpolate(widgetFrame2.scaleX, widgetFrame3.scaleX, 1.0f, f);
        widgetFrame.scaleY = interpolate(widgetFrame2.scaleY, widgetFrame3.scaleY, 1.0f, f);
        widgetFrame.translationX = interpolate(widgetFrame2.translationX, widgetFrame3.translationX, 0.0f, f);
        widgetFrame.translationY = interpolate(widgetFrame2.translationY, widgetFrame3.translationY, 0.0f, f);
        widgetFrame.translationZ = interpolate(widgetFrame2.translationZ, widgetFrame3.translationZ, 0.0f, f);
        widgetFrame.alpha = interpolate(f11, f17, 1.0f, f);
        Set<String> setKeySet = widgetFrame3.mCustom.keySet();
        widgetFrame.mCustom.clear();
        for (String str : setKeySet) {
            if (widgetFrame2.mCustom.containsKey(str)) {
                CustomVariable customVariable = widgetFrame2.mCustom.get(str);
                CustomVariable customVariable2 = widgetFrame3.mCustom.get(str);
                CustomVariable customVariable3 = new CustomVariable(customVariable);
                widgetFrame.mCustom.put(str, customVariable3);
                if (customVariable.numberOfInterpolatedValues() == 1) {
                    customVariable3.setValue(Float.valueOf(interpolate(customVariable.getValueToInterpolate(), customVariable2.getValueToInterpolate(), 0.0f, f)));
                } else {
                    int r16 = customVariable.numberOfInterpolatedValues();
                    float[] fArr = new float[r16];
                    float[] fArr2 = new float[r16];
                    customVariable.getValuesToInterpolate(fArr);
                    customVariable2.getValuesToInterpolate(fArr2);
                    for (int r54 = 0; r54 < r16; r54++) {
                        fArr[r54] = interpolate(fArr[r54], fArr2[r54], 0.0f, f);
                        customVariable3.setValue(fArr);
                    }
                }
            }
        }
    }

    private void serializeAnchor(StringBuilder sb2, ConstraintAnchor.Type type) {
        ConstraintAnchor anchor = this.widget.getAnchor(type);
        if (anchor == null || anchor.mTarget == null) {
            return;
        }
        sb2.append("Anchor");
        sb2.append(type.name());
        sb2.append(": ['");
        String str = anchor.mTarget.getOwner().stringId;
        if (str == null) {
            str = "#PARENT";
        }
        sb2.append(str);
        sb2.append("', '");
        sb2.append(anchor.mTarget.getType().name());
        sb2.append("', '");
        sb2.append(anchor.mMargin);
        sb2.append("'],\n");
    }

    public void addCustomColor(String str, int r32) {
        setCustomAttribute(str, TypedValues.Custom.TYPE_COLOR, r32);
    }

    public void addCustomFloat(String str, float f) {
        setCustomAttribute(str, TypedValues.Custom.TYPE_FLOAT, f);
    }

    public float centerX() {
        return ((this.right - r0) / 2.0f) + this.left;
    }

    public float centerY() {
        return ((this.bottom - r0) / 2.0f) + this.top;
    }

    public CustomVariable getCustomAttribute(String str) {
        return this.mCustom.get(str);
    }

    public Set<String> getCustomAttributeNames() {
        return this.mCustom.keySet();
    }

    public int getCustomColor(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getColorValue();
        }
        return -21880;
    }

    public float getCustomFloat(String str) {
        if (this.mCustom.containsKey(str)) {
            return this.mCustom.get(str).getFloatValue();
        }
        return Float.NaN;
    }

    public String getId() {
        ConstraintWidget constraintWidget = this.widget;
        return constraintWidget == null ? EnvironmentCompat.MEDIA_UNKNOWN : constraintWidget.stringId;
    }

    public int height() {
        return Math.max(0, this.bottom - this.top);
    }

    public boolean isDefaultTransform() {
        if (Float.isNaN(this.rotationX) && Float.isNaN(this.rotationY) && Float.isNaN(this.rotationZ) && Float.isNaN(this.translationX) && Float.isNaN(this.translationY) && Float.isNaN(this.translationZ) && Float.isNaN(this.scaleX) && Float.isNaN(this.scaleY) && Float.isNaN(this.alpha)) {
            return OLD_SYSTEM;
        }
        return false;
    }

    public void logv(String str) {
        StringBuilder sbI;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbI2 = androidx.browser.browseractions.b.i(".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName(), " ");
        sbI2.append(hashCode() % 1000);
        String string = sbI2.toString();
        if (this.widget != null) {
            sbI = androidx.browser.browseractions.b.i(string, "/");
            sbI.append(this.widget.hashCode() % 1000);
        } else {
            sbI = androidx.browser.browseractions.b.i(string, "/NULL");
        }
        String string2 = sbI.toString();
        System.out.println(string2 + " " + str);
    }

    public void parseCustom(CLElement cLElement) throws CLParsingException, NumberFormatException {
        CLObject cLObject = (CLObject) cLElement;
        int size = cLObject.size();
        for (int r12 = 0; r12 < size; r12++) {
            CLKey cLKey = (CLKey) cLObject.get(r12);
            cLKey.content();
            CLElement value = cLKey.getValue();
            String strContent = value.content();
            if (strContent.matches("#[0-9a-fA-F]+")) {
                setCustomAttribute(cLKey.content(), TypedValues.Custom.TYPE_COLOR, Integer.parseInt(strContent.substring(1), 16));
            } else {
                boolean z10 = value instanceof CLNumber;
                String strContent2 = cLKey.content();
                if (z10) {
                    setCustomAttribute(strContent2, TypedValues.Custom.TYPE_FLOAT, value.getFloat());
                } else {
                    setCustomAttribute(strContent2, TypedValues.Custom.TYPE_STRING, strContent);
                }
            }
        }
    }

    public void printCustomAttributes() {
        String strF;
        StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
        StringBuilder sbI = androidx.browser.browseractions.b.i(".(" + stackTraceElement.getFileName() + ":" + stackTraceElement.getLineNumber() + ") " + stackTraceElement.getMethodName(), " ");
        sbI.append(hashCode() % 1000);
        String string = sbI.toString();
        if (this.widget != null) {
            StringBuilder sbI2 = androidx.browser.browseractions.b.i(string, "/");
            sbI2.append(this.widget.hashCode() % 1000);
            sbI2.append(" ");
            strF = sbI2.toString();
        } else {
            strF = android.support.v4.media.a.f(string, "/NULL ");
        }
        HashMap<String, CustomVariable> map = this.mCustom;
        if (map != null) {
            for (String str : map.keySet()) {
                PrintStream printStream = System.out;
                StringBuilder sbE = androidx.constraintlayout.core.a.e(strF);
                sbE.append(this.mCustom.get(str).toString());
                printStream.println(sbE.toString());
            }
        }
    }

    public StringBuilder serialize(StringBuilder sb2) {
        return serialize(sb2, false);
    }

    public StringBuilder serialize(StringBuilder sb2, boolean z10) {
        String strColorString;
        sb2.append("{\n");
        add(sb2, "left", this.left);
        add(sb2, "top", this.top);
        add(sb2, "right", this.right);
        add(sb2, "bottom", this.bottom);
        add(sb2, "pivotX", this.pivotX);
        add(sb2, "pivotY", this.pivotY);
        add(sb2, "rotationX", this.rotationX);
        add(sb2, "rotationY", this.rotationY);
        add(sb2, "rotationZ", this.rotationZ);
        add(sb2, "translationX", this.translationX);
        add(sb2, "translationY", this.translationY);
        add(sb2, "translationZ", this.translationZ);
        add(sb2, "scaleX", this.scaleX);
        add(sb2, "scaleY", this.scaleY);
        add(sb2, "alpha", this.alpha);
        add(sb2, "visibility", this.visibility);
        add(sb2, "interpolatedPos", this.interpolatedPos);
        if (this.widget != null) {
            for (ConstraintAnchor.Type type : ConstraintAnchor.Type.values()) {
                serializeAnchor(sb2, type);
            }
        }
        if (z10) {
            add(sb2, "phone_orientation", phone_orientation);
        }
        if (z10) {
            add(sb2, "phone_orientation", phone_orientation);
        }
        if (this.mCustom.size() != 0) {
            sb2.append("custom : {\n");
            for (String str : this.mCustom.keySet()) {
                CustomVariable customVariable = this.mCustom.get(str);
                sb2.append(str);
                sb2.append(": ");
                switch (customVariable.getType()) {
                    case TypedValues.Custom.TYPE_INT /* 900 */:
                        sb2.append(customVariable.getIntegerValue());
                        break;
                    case TypedValues.Custom.TYPE_FLOAT /* 901 */:
                    case TypedValues.Custom.TYPE_DIMENSION /* 905 */:
                        sb2.append(customVariable.getFloatValue());
                        break;
                    case TypedValues.Custom.TYPE_COLOR /* 902 */:
                        sb2.append("'");
                        strColorString = CustomVariable.colorString(customVariable.getIntegerValue());
                        sb2.append(strColorString);
                        sb2.append("',\n");
                    case TypedValues.Custom.TYPE_STRING /* 903 */:
                        sb2.append("'");
                        strColorString = customVariable.getStringValue();
                        sb2.append(strColorString);
                        sb2.append("',\n");
                    case TypedValues.Custom.TYPE_BOOLEAN /* 904 */:
                        sb2.append("'");
                        sb2.append(customVariable.getBooleanValue());
                        sb2.append("',\n");
                }
                sb2.append(",\n");
            }
            sb2.append("}\n");
        }
        sb2.append("}\n");
        return sb2;
    }

    public void setCustomAttribute(String str, int r42, float f) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setFloatValue(f);
        } else {
            this.mCustom.put(str, new CustomVariable(str, r42, f));
        }
    }

    public void setCustomAttribute(String str, int r42, int r52) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setIntValue(r52);
        } else {
            this.mCustom.put(str, new CustomVariable(str, r42, r52));
        }
    }

    public void setCustomAttribute(String str, int r42, String str2) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setStringValue(str2);
        } else {
            this.mCustom.put(str, new CustomVariable(str, r42, str2));
        }
    }

    public void setCustomAttribute(String str, int r42, boolean z10) {
        if (this.mCustom.containsKey(str)) {
            this.mCustom.get(str).setBooleanValue(z10);
        } else {
            this.mCustom.put(str, new CustomVariable(str, r42, z10));
        }
    }

    public void setCustomValue(CustomAttribute customAttribute, float[] fArr) {
    }

    public boolean setValue(String str, CLElement cLElement) throws CLParsingException, NumberFormatException {
        str.getClass();
        switch (str) {
            case "phone_orientation":
                phone_orientation = cLElement.getFloat();
                return OLD_SYSTEM;
            case "bottom":
                this.bottom = cLElement.getInt();
                return OLD_SYSTEM;
            case "custom":
                parseCustom(cLElement);
                return OLD_SYSTEM;
            case "rotationX":
                this.rotationX = cLElement.getFloat();
                return OLD_SYSTEM;
            case "rotationY":
                this.rotationY = cLElement.getFloat();
                return OLD_SYSTEM;
            case "rotationZ":
                this.rotationZ = cLElement.getFloat();
                return OLD_SYSTEM;
            case "translationX":
                this.translationX = cLElement.getFloat();
                return OLD_SYSTEM;
            case "translationY":
                this.translationY = cLElement.getFloat();
                return OLD_SYSTEM;
            case "translationZ":
                this.translationZ = cLElement.getFloat();
                return OLD_SYSTEM;
            case "pivotX":
                this.pivotX = cLElement.getFloat();
                return OLD_SYSTEM;
            case "pivotY":
                this.pivotY = cLElement.getFloat();
                return OLD_SYSTEM;
            case "scaleX":
                this.scaleX = cLElement.getFloat();
                return OLD_SYSTEM;
            case "scaleY":
                this.scaleY = cLElement.getFloat();
                return OLD_SYSTEM;
            case "top":
                this.top = cLElement.getInt();
                return OLD_SYSTEM;
            case "left":
                this.left = cLElement.getInt();
                return OLD_SYSTEM;
            case "alpha":
                this.alpha = cLElement.getFloat();
                return OLD_SYSTEM;
            case "right":
                this.right = cLElement.getInt();
                return OLD_SYSTEM;
            case "interpolatedPos":
                this.interpolatedPos = cLElement.getFloat();
                return OLD_SYSTEM;
            default:
                return false;
        }
    }

    public WidgetFrame update() {
        ConstraintWidget constraintWidget = this.widget;
        if (constraintWidget != null) {
            this.left = constraintWidget.getLeft();
            this.top = this.widget.getTop();
            this.right = this.widget.getRight();
            this.bottom = this.widget.getBottom();
            updateAttributes(this.widget.frame);
        }
        return this;
    }

    public WidgetFrame update(ConstraintWidget constraintWidget) {
        if (constraintWidget == null) {
            return this;
        }
        this.widget = constraintWidget;
        update();
        return this;
    }

    public void updateAttributes(WidgetFrame widgetFrame) {
        this.pivotX = widgetFrame.pivotX;
        this.pivotY = widgetFrame.pivotY;
        this.rotationX = widgetFrame.rotationX;
        this.rotationY = widgetFrame.rotationY;
        this.rotationZ = widgetFrame.rotationZ;
        this.translationX = widgetFrame.translationX;
        this.translationY = widgetFrame.translationY;
        this.translationZ = widgetFrame.translationZ;
        this.scaleX = widgetFrame.scaleX;
        this.scaleY = widgetFrame.scaleY;
        this.alpha = widgetFrame.alpha;
        this.visibility = widgetFrame.visibility;
        this.mCustom.clear();
        for (CustomVariable customVariable : widgetFrame.mCustom.values()) {
            this.mCustom.put(customVariable.getName(), customVariable.copy());
        }
    }

    public int width() {
        return Math.max(0, this.right - this.left);
    }
}
