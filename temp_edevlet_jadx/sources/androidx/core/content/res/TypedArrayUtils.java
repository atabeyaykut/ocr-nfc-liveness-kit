package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TypedArrayUtils {
    private static final String NAMESPACE = "http://schemas.android.com/apk/res/android";

    private TypedArrayUtils() {
    }

    public static int getAttr(@NonNull Context context, int r32, int r42) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(r32, typedValue, true);
        return typedValue.resourceId != 0 ? r32 : r42;
    }

    public static boolean getBoolean(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22, boolean z10) {
        return typedArray.getBoolean(r12, typedArray.getBoolean(r22, z10));
    }

    @Nullable
    public static Drawable getDrawable(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22) {
        Drawable drawable = typedArray.getDrawable(r12);
        return drawable == null ? typedArray.getDrawable(r22) : drawable;
    }

    public static int getInt(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22, int r32) {
        return typedArray.getInt(r12, typedArray.getInt(r22, r32));
    }

    public static boolean getNamedBoolean(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32, boolean z10) {
        return !hasAttribute(xmlPullParser, str) ? z10 : typedArray.getBoolean(r32, z10);
    }

    @ColorInt
    public static int getNamedColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32, @ColorInt int r42) {
        return !hasAttribute(xmlPullParser, str) ? r42 : typedArray.getColor(r32, r42);
    }

    @Nullable
    public static ColorStateList getNamedColorStateList(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int r52) {
        if (!hasAttribute(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(r52, typedValue);
        int r42 = typedValue.type;
        if (r42 != 2) {
            return (r42 < 28 || r42 > 31) ? ColorStateListInflaterCompat.inflate(typedArray.getResources(), typedArray.getResourceId(r52, 0), theme) : getNamedColorStateListFromInt(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + r52 + ": " + typedValue);
    }

    @NonNull
    private static ColorStateList getNamedColorStateListFromInt(@NonNull TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    public static ComplexColorCompat getNamedComplexColor(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme, @NonNull String str, @StyleableRes int r52, @ColorInt int r6) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(r52, typedValue);
            int r42 = typedValue.type;
            if (r42 >= 28 && r42 <= 31) {
                return ComplexColorCompat.from(typedValue.data);
            }
            ComplexColorCompat complexColorCompatInflate = ComplexColorCompat.inflate(typedArray.getResources(), typedArray.getResourceId(r52, 0), theme);
            if (complexColorCompatInflate != null) {
                return complexColorCompatInflate;
            }
        }
        return ComplexColorCompat.from(r6);
    }

    public static float getNamedFloat(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32, float f) {
        return !hasAttribute(xmlPullParser, str) ? f : typedArray.getFloat(r32, f);
    }

    public static int getNamedInt(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32, int r42) {
        return !hasAttribute(xmlPullParser, str) ? r42 : typedArray.getInt(r32, r42);
    }

    @AnyRes
    public static int getNamedResourceId(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32, @AnyRes int r42) {
        return !hasAttribute(xmlPullParser, str) ? r42 : typedArray.getResourceId(r32, r42);
    }

    @Nullable
    public static String getNamedString(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, @StyleableRes int r32) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(r32);
        }
        return null;
    }

    @AnyRes
    public static int getResourceId(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22, @AnyRes int r32) {
        return typedArray.getResourceId(r12, typedArray.getResourceId(r22, r32));
    }

    @Nullable
    public static String getString(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22) {
        String string = typedArray.getString(r12);
        return string == null ? typedArray.getString(r22) : string;
    }

    @Nullable
    public static CharSequence getText(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22) {
        CharSequence text = typedArray.getText(r12);
        return text == null ? typedArray.getText(r22) : text;
    }

    @Nullable
    public static CharSequence[] getTextArray(@NonNull TypedArray typedArray, @StyleableRes int r12, @StyleableRes int r22) {
        CharSequence[] textArray = typedArray.getTextArray(r12);
        return textArray == null ? typedArray.getTextArray(r22) : textArray;
    }

    public static boolean hasAttribute(@NonNull XmlPullParser xmlPullParser, @NonNull String str) {
        return xmlPullParser.getAttributeValue(NAMESPACE, str) != null;
    }

    @NonNull
    public static TypedArray obtainAttributes(@NonNull Resources resources, @Nullable Resources.Theme theme, @NonNull AttributeSet attributeSet, @NonNull int[] r32) {
        return theme == null ? resources.obtainAttributes(attributeSet, r32) : theme.obtainStyledAttributes(attributeSet, r32, 0, 0);
    }

    @Nullable
    public static TypedValue peekNamedValue(@NonNull TypedArray typedArray, @NonNull XmlPullParser xmlPullParser, @NonNull String str, int r32) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(r32);
        }
        return null;
    }
}
