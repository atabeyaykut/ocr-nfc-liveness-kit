package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Movie;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
/* loaded from: classes.dex */
public class VectorEnabledTintResources extends ResourcesWrapper {
    public static final int MAX_SDK_WHERE_REQUIRED = 20;
    private static boolean sCompatVectorFromResourcesEnabled;
    private final WeakReference<Context> mContextRef;

    public VectorEnabledTintResources(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.mContextRef = new WeakReference<>(context);
    }

    public static boolean isCompatVectorFromResourcesEnabled() {
        return sCompatVectorFromResourcesEnabled;
    }

    public static void setCompatVectorFromResourcesEnabled(boolean z10) {
        sCompatVectorFromResourcesEnabled = z10;
    }

    public static boolean shouldBeUsed() {
        isCompatVectorFromResourcesEnabled();
        return false;
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getAnimation(int r12) throws Resources.NotFoundException {
        return super.getAnimation(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ boolean getBoolean(int r12) throws Resources.NotFoundException {
        return super.getBoolean(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getColor(int r12) throws Resources.NotFoundException {
        return super.getColor(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ ColorStateList getColorStateList(int r12) throws Resources.NotFoundException {
        return super.getColorStateList(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ Configuration getConfiguration() {
        return super.getConfiguration();
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getDimension(int r12) throws Resources.NotFoundException {
        return super.getDimension(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelOffset(int r12) throws Resources.NotFoundException {
        return super.getDimensionPixelOffset(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getDimensionPixelSize(int r12) throws Resources.NotFoundException {
        return super.getDimensionPixelSize(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ DisplayMetrics getDisplayMetrics() {
        return super.getDisplayMetrics();
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public Drawable getDrawable(int r32) throws Resources.NotFoundException {
        Context context = this.mContextRef.get();
        return context != null ? ResourceManagerInternal.get().onDrawableLoadedFromResources(context, this, r32) : getDrawableCanonical(r32);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ Drawable getDrawable(int r12, Resources.Theme theme) throws Resources.NotFoundException {
        return super.getDrawable(r12, theme);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    @RequiresApi(15)
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int r12, int r22) throws Resources.NotFoundException {
        return super.getDrawableForDensity(r12, r22);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    @RequiresApi(21)
    public /* bridge */ /* synthetic */ Drawable getDrawableForDensity(int r12, int r22, Resources.Theme theme) {
        return super.getDrawableForDensity(r12, r22, theme);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ float getFraction(int r12, int r22, int r32) {
        return super.getFraction(r12, r22, r32);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getIdentifier(String str, String str2, String str3) {
        return super.getIdentifier(str, str2, str3);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int[] getIntArray(int r12) throws Resources.NotFoundException {
        return super.getIntArray(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ int getInteger(int r12) throws Resources.NotFoundException {
        return super.getInteger(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getLayout(int r12) throws Resources.NotFoundException {
        return super.getLayout(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ Movie getMovie(int r12) throws Resources.NotFoundException {
        return super.getMovie(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int r12, int r22) throws Resources.NotFoundException {
        return super.getQuantityString(r12, r22);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getQuantityString(int r12, int r22, Object[] objArr) throws Resources.NotFoundException {
        return super.getQuantityString(r12, r22, objArr);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getQuantityText(int r12, int r22) throws Resources.NotFoundException {
        return super.getQuantityText(r12, r22);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceEntryName(int r12) throws Resources.NotFoundException {
        return super.getResourceEntryName(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceName(int r12) throws Resources.NotFoundException {
        return super.getResourceName(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourcePackageName(int r12) throws Resources.NotFoundException {
        return super.getResourcePackageName(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getResourceTypeName(int r12) throws Resources.NotFoundException {
        return super.getResourceTypeName(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int r12) throws Resources.NotFoundException {
        return super.getString(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String getString(int r12, Object[] objArr) throws Resources.NotFoundException {
        return super.getString(r12, objArr);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ String[] getStringArray(int r12) throws Resources.NotFoundException {
        return super.getStringArray(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int r12) throws Resources.NotFoundException {
        return super.getText(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence getText(int r12, CharSequence charSequence) {
        return super.getText(r12, charSequence);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ CharSequence[] getTextArray(int r12) throws Resources.NotFoundException {
        return super.getTextArray(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(int r12, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValue(r12, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ void getValue(String str, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValue(str, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    @RequiresApi(15)
    public /* bridge */ /* synthetic */ void getValueForDensity(int r12, int r22, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        super.getValueForDensity(r12, r22, typedValue, z10);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ XmlResourceParser getXml(int r12) throws Resources.NotFoundException {
        return super.getXml(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainAttributes(AttributeSet attributeSet, int[] r22) {
        return super.obtainAttributes(attributeSet, r22);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ TypedArray obtainTypedArray(int r12) throws Resources.NotFoundException {
        return super.obtainTypedArray(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int r12) throws Resources.NotFoundException {
        return super.openRawResource(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ InputStream openRawResource(int r12, TypedValue typedValue) throws Resources.NotFoundException {
        return super.openRawResource(r12, typedValue);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ AssetFileDescriptor openRawResourceFd(int r12) throws Resources.NotFoundException {
        return super.openRawResourceFd(r12);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        super.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        super.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public /* bridge */ /* synthetic */ void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
    }
}
