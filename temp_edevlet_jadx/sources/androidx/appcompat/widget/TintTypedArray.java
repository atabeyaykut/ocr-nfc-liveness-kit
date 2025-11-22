package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleableRes;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.core.content.res.ResourcesCompat;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class TintTypedArray {
    private final Context mContext;
    private TypedValue mTypedValue;
    private final TypedArray mWrapped;

    @RequiresApi(21)
    public static class Api21Impl {
        private Api21Impl() {
        }

        @DoNotInline
        public static int getChangingConfigurations(TypedArray typedArray) {
            return typedArray.getChangingConfigurations();
        }

        @DoNotInline
        public static int getType(TypedArray typedArray, int r12) {
            return typedArray.getType(r12);
        }
    }

    private TintTypedArray(Context context, TypedArray typedArray) {
        this.mContext = context;
        this.mWrapped = typedArray;
    }

    public static TintTypedArray obtainStyledAttributes(Context context, int r22, int[] r32) {
        return new TintTypedArray(context, context.obtainStyledAttributes(r22, r32));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] r32) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, r32));
    }

    public static TintTypedArray obtainStyledAttributes(Context context, AttributeSet attributeSet, int[] r32, int r42, int r52) {
        return new TintTypedArray(context, context.obtainStyledAttributes(attributeSet, r32, r42, r52));
    }

    public boolean getBoolean(int r22, boolean z10) {
        return this.mWrapped.getBoolean(r22, z10);
    }

    @RequiresApi(21)
    public int getChangingConfigurations() {
        return Api21Impl.getChangingConfigurations(this.mWrapped);
    }

    public int getColor(int r22, int r32) {
        return this.mWrapped.getColor(r22, r32);
    }

    public ColorStateList getColorStateList(int r32) {
        int resourceId;
        ColorStateList colorStateList;
        return (!this.mWrapped.hasValue(r32) || (resourceId = this.mWrapped.getResourceId(r32, 0)) == 0 || (colorStateList = AppCompatResources.getColorStateList(this.mContext, resourceId)) == null) ? this.mWrapped.getColorStateList(r32) : colorStateList;
    }

    public float getDimension(int r22, float f) {
        return this.mWrapped.getDimension(r22, f);
    }

    public int getDimensionPixelOffset(int r22, int r32) {
        return this.mWrapped.getDimensionPixelOffset(r22, r32);
    }

    public int getDimensionPixelSize(int r22, int r32) {
        return this.mWrapped.getDimensionPixelSize(r22, r32);
    }

    public Drawable getDrawable(int r32) {
        int resourceId;
        return (!this.mWrapped.hasValue(r32) || (resourceId = this.mWrapped.getResourceId(r32, 0)) == 0) ? this.mWrapped.getDrawable(r32) : AppCompatResources.getDrawable(this.mContext, resourceId);
    }

    public Drawable getDrawableIfKnown(int r42) {
        int resourceId;
        if (!this.mWrapped.hasValue(r42) || (resourceId = this.mWrapped.getResourceId(r42, 0)) == 0) {
            return null;
        }
        return AppCompatDrawableManager.get().getDrawable(this.mContext, resourceId, true);
    }

    public float getFloat(int r22, float f) {
        return this.mWrapped.getFloat(r22, f);
    }

    @Nullable
    public Typeface getFont(@StyleableRes int r32, int r42, @Nullable ResourcesCompat.FontCallback fontCallback) {
        int resourceId = this.mWrapped.getResourceId(r32, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.mTypedValue == null) {
            this.mTypedValue = new TypedValue();
        }
        return ResourcesCompat.getFont(this.mContext, resourceId, this.mTypedValue, r42, fontCallback);
    }

    public float getFraction(int r22, int r32, int r42, float f) {
        return this.mWrapped.getFraction(r22, r32, r42, f);
    }

    public int getIndex(int r22) {
        return this.mWrapped.getIndex(r22);
    }

    public int getIndexCount() {
        return this.mWrapped.getIndexCount();
    }

    public int getInt(int r22, int r32) {
        return this.mWrapped.getInt(r22, r32);
    }

    public int getInteger(int r22, int r32) {
        return this.mWrapped.getInteger(r22, r32);
    }

    public int getLayoutDimension(int r22, int r32) {
        return this.mWrapped.getLayoutDimension(r22, r32);
    }

    public int getLayoutDimension(int r22, String str) {
        return this.mWrapped.getLayoutDimension(r22, str);
    }

    public String getNonResourceString(int r22) {
        return this.mWrapped.getNonResourceString(r22);
    }

    public String getPositionDescription() {
        return this.mWrapped.getPositionDescription();
    }

    public int getResourceId(int r22, int r32) {
        return this.mWrapped.getResourceId(r22, r32);
    }

    public Resources getResources() {
        return this.mWrapped.getResources();
    }

    public String getString(int r22) {
        return this.mWrapped.getString(r22);
    }

    public CharSequence getText(int r22) {
        return this.mWrapped.getText(r22);
    }

    public CharSequence[] getTextArray(int r22) {
        return this.mWrapped.getTextArray(r22);
    }

    public int getType(int r22) {
        return Api21Impl.getType(this.mWrapped, r22);
    }

    public boolean getValue(int r22, TypedValue typedValue) {
        return this.mWrapped.getValue(r22, typedValue);
    }

    public TypedArray getWrappedTypeArray() {
        return this.mWrapped;
    }

    public boolean hasValue(int r22) {
        return this.mWrapped.hasValue(r22);
    }

    public int length() {
        return this.mWrapped.length();
    }

    public TypedValue peekValue(int r22) {
        return this.mWrapped.peekValue(r22);
    }

    public void recycle() {
        this.mWrapped.recycle();
    }
}
