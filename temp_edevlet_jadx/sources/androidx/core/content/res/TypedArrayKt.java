package androidx.core.content.res;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import androidx.annotation.AnyRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.RequiresApi;
import androidx.annotation.StyleableRes;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import x9.l;

@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0016\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0002\u001a\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0016\u0010\u0007\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\t\u001a\u00020\b*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u000b\u001a\u00020\n*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0016\u0010\f\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0016\u0010\r\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u000f\u001a\u00020\u000e*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0010\u001a\u00020\n*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0016\u0010\u0012\u001a\u00020\u0011*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0013\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0014\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0016\u0010\u0015\u001a\u00020\u0001*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0007\u001a\u0014\u0010\u0017\u001a\u00020\u0016*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a\u0014\u0010\u0019\u001a\u00020\u0018*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001\u001a!\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00180\u001a*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u001b\u0010\u001c\u001a1\u0010 \u001a\u00028\u0000\"\u0004\b\u0000\u0010\u001d*\u00020\u00002\u0012\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00028\u00000\u001eH\u0086\bø\u0001\u0000¢\u0006\u0004\b \u0010!\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\""}, d2 = {"Landroid/content/res/TypedArray;", "", "index", "Ll9/m;", "checkAttribute", "", "getBooleanOrThrow", "getColorOrThrow", "Landroid/content/res/ColorStateList;", "getColorStateListOrThrow", "", "getDimensionOrThrow", "getDimensionPixelOffsetOrThrow", "getDimensionPixelSizeOrThrow", "Landroid/graphics/drawable/Drawable;", "getDrawableOrThrow", "getFloatOrThrow", "Landroid/graphics/Typeface;", "getFontOrThrow", "getIntOrThrow", "getIntegerOrThrow", "getResourceIdOrThrow", "", "getStringOrThrow", "", "getTextOrThrow", "", "getTextArrayOrThrow", "(Landroid/content/res/TypedArray;I)[Ljava/lang/CharSequence;", "R", "Lkotlin/Function1;", "block", "use", "(Landroid/content/res/TypedArray;Lx9/l;)Ljava/lang/Object;", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class TypedArrayKt {
    private static final void checkAttribute(TypedArray typedArray, @StyleableRes int r12) {
        if (!typedArray.hasValue(r12)) {
            throw new IllegalArgumentException("Attribute not defined in set.");
        }
    }

    public static final boolean getBooleanOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getBoolean(r22, false);
    }

    @ColorInt
    public static final int getColorOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getColor(r22, 0);
    }

    public static final ColorStateList getColorStateListOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        ColorStateList colorStateList = typedArray.getColorStateList(r22);
        if (colorStateList != null) {
            return colorStateList;
        }
        throw new IllegalStateException("Attribute value was not a color or color state list.".toString());
    }

    public static final float getDimensionOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getDimension(r22, 0.0f);
    }

    @Dimension
    public static final int getDimensionPixelOffsetOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getDimensionPixelOffset(r22, 0);
    }

    @Dimension
    public static final int getDimensionPixelSizeOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getDimensionPixelSize(r22, 0);
    }

    public static final Drawable getDrawableOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        Drawable drawable = typedArray.getDrawable(r22);
        h.c(drawable);
        return drawable;
    }

    public static final float getFloatOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getFloat(r22, 0.0f);
    }

    @RequiresApi(26)
    public static final Typeface getFontOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return TypedArrayApi26ImplKt.getFont(typedArray, r22);
    }

    public static final int getIntOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getInt(r22, 0);
    }

    public static final int getIntegerOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getInteger(r22, 0);
    }

    @AnyRes
    public static final int getResourceIdOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        return typedArray.getResourceId(r22, 0);
    }

    public static final String getStringOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        String string = typedArray.getString(r22);
        if (string != null) {
            return string;
        }
        throw new IllegalStateException("Attribute value could not be coerced to String.".toString());
    }

    public static final CharSequence[] getTextArrayOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        CharSequence[] textArray = typedArray.getTextArray(r22);
        h.e(textArray, "getTextArray(index)");
        return textArray;
    }

    public static final CharSequence getTextOrThrow(TypedArray typedArray, @StyleableRes int r22) {
        h.f(typedArray, "<this>");
        checkAttribute(typedArray, r22);
        CharSequence text = typedArray.getText(r22);
        if (text != null) {
            return text;
        }
        throw new IllegalStateException("Attribute value could not be coerced to CharSequence.".toString());
    }

    public static final <R> R use(TypedArray typedArray, l<? super TypedArray, ? extends R> block) {
        h.f(typedArray, "<this>");
        h.f(block, "block");
        R rInvoke = block.invoke(typedArray);
        typedArray.recycle();
        return rInvoke;
    }
}
