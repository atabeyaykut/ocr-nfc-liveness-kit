package androidx.appcompat.widget;

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
import androidx.annotation.RequiresApi;
import androidx.appcompat.resources.Compatibility;
import androidx.core.content.res.ResourcesCompat;
import java.io.IOException;
import java.io.InputStream;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
class ResourcesWrapper extends Resources {
    private final Resources mResources;

    public ResourcesWrapper(Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.mResources = resources;
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getAnimation(int r22) throws Resources.NotFoundException {
        return this.mResources.getAnimation(r22);
    }

    @Override // android.content.res.Resources
    public boolean getBoolean(int r22) throws Resources.NotFoundException {
        return this.mResources.getBoolean(r22);
    }

    @Override // android.content.res.Resources
    public int getColor(int r22) throws Resources.NotFoundException {
        return this.mResources.getColor(r22);
    }

    @Override // android.content.res.Resources
    public ColorStateList getColorStateList(int r22) throws Resources.NotFoundException {
        return this.mResources.getColorStateList(r22);
    }

    @Override // android.content.res.Resources
    public Configuration getConfiguration() {
        return this.mResources.getConfiguration();
    }

    @Override // android.content.res.Resources
    public float getDimension(int r22) throws Resources.NotFoundException {
        return this.mResources.getDimension(r22);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelOffset(int r22) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelOffset(r22);
    }

    @Override // android.content.res.Resources
    public int getDimensionPixelSize(int r22) throws Resources.NotFoundException {
        return this.mResources.getDimensionPixelSize(r22);
    }

    @Override // android.content.res.Resources
    public DisplayMetrics getDisplayMetrics() {
        return this.mResources.getDisplayMetrics();
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int r22) throws Resources.NotFoundException {
        return this.mResources.getDrawable(r22);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawable(int r22, Resources.Theme theme) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawable(this.mResources, r22, theme);
    }

    public final Drawable getDrawableCanonical(int r12) throws Resources.NotFoundException {
        return super.getDrawable(r12);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public Drawable getDrawableForDensity(int r32, int r42) throws Resources.NotFoundException {
        return ResourcesCompat.getDrawableForDensity(this.mResources, r32, r42, null);
    }

    @Override // android.content.res.Resources
    @RequiresApi(21)
    public Drawable getDrawableForDensity(int r22, int r32, Resources.Theme theme) {
        return ResourcesCompat.getDrawableForDensity(this.mResources, r22, r32, theme);
    }

    @Override // android.content.res.Resources
    public float getFraction(int r22, int r32, int r42) {
        return this.mResources.getFraction(r22, r32, r42);
    }

    @Override // android.content.res.Resources
    public int getIdentifier(String str, String str2, String str3) {
        return this.mResources.getIdentifier(str, str2, str3);
    }

    @Override // android.content.res.Resources
    public int[] getIntArray(int r22) throws Resources.NotFoundException {
        return this.mResources.getIntArray(r22);
    }

    @Override // android.content.res.Resources
    public int getInteger(int r22) throws Resources.NotFoundException {
        return this.mResources.getInteger(r22);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getLayout(int r22) throws Resources.NotFoundException {
        return this.mResources.getLayout(r22);
    }

    @Override // android.content.res.Resources
    public Movie getMovie(int r22) throws Resources.NotFoundException {
        return this.mResources.getMovie(r22);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int r22, int r32) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(r22, r32);
    }

    @Override // android.content.res.Resources
    public String getQuantityString(int r22, int r32, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getQuantityString(r22, r32, objArr);
    }

    @Override // android.content.res.Resources
    public CharSequence getQuantityText(int r22, int r32) throws Resources.NotFoundException {
        return this.mResources.getQuantityText(r22, r32);
    }

    @Override // android.content.res.Resources
    public String getResourceEntryName(int r22) throws Resources.NotFoundException {
        return this.mResources.getResourceEntryName(r22);
    }

    @Override // android.content.res.Resources
    public String getResourceName(int r22) throws Resources.NotFoundException {
        return this.mResources.getResourceName(r22);
    }

    @Override // android.content.res.Resources
    public String getResourcePackageName(int r22) throws Resources.NotFoundException {
        return this.mResources.getResourcePackageName(r22);
    }

    @Override // android.content.res.Resources
    public String getResourceTypeName(int r22) throws Resources.NotFoundException {
        return this.mResources.getResourceTypeName(r22);
    }

    @Override // android.content.res.Resources
    public String getString(int r22) throws Resources.NotFoundException {
        return this.mResources.getString(r22);
    }

    @Override // android.content.res.Resources
    public String getString(int r22, Object... objArr) throws Resources.NotFoundException {
        return this.mResources.getString(r22, objArr);
    }

    @Override // android.content.res.Resources
    public String[] getStringArray(int r22) throws Resources.NotFoundException {
        return this.mResources.getStringArray(r22);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int r22) throws Resources.NotFoundException {
        return this.mResources.getText(r22);
    }

    @Override // android.content.res.Resources
    public CharSequence getText(int r22, CharSequence charSequence) {
        return this.mResources.getText(r22, charSequence);
    }

    @Override // android.content.res.Resources
    public CharSequence[] getTextArray(int r22) throws Resources.NotFoundException {
        return this.mResources.getTextArray(r22);
    }

    @Override // android.content.res.Resources
    public void getValue(int r22, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(r22, typedValue, z10);
    }

    @Override // android.content.res.Resources
    public void getValue(String str, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        this.mResources.getValue(str, typedValue, z10);
    }

    @Override // android.content.res.Resources
    @RequiresApi(15)
    public void getValueForDensity(int r22, int r32, TypedValue typedValue, boolean z10) throws Resources.NotFoundException {
        Compatibility.Api15Impl.getValueForDensity(this.mResources, r22, r32, typedValue, z10);
    }

    @Override // android.content.res.Resources
    public XmlResourceParser getXml(int r22) throws Resources.NotFoundException {
        return this.mResources.getXml(r22);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainAttributes(AttributeSet attributeSet, int[] r32) {
        return this.mResources.obtainAttributes(attributeSet, r32);
    }

    @Override // android.content.res.Resources
    public TypedArray obtainTypedArray(int r22) throws Resources.NotFoundException {
        return this.mResources.obtainTypedArray(r22);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int r22) throws Resources.NotFoundException {
        return this.mResources.openRawResource(r22);
    }

    @Override // android.content.res.Resources
    public InputStream openRawResource(int r22, TypedValue typedValue) throws Resources.NotFoundException {
        return this.mResources.openRawResource(r22, typedValue);
    }

    @Override // android.content.res.Resources
    public AssetFileDescriptor openRawResourceFd(int r22) throws Resources.NotFoundException {
        return this.mResources.openRawResourceFd(r22);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtra(String str, AttributeSet attributeSet, Bundle bundle) throws XmlPullParserException {
        this.mResources.parseBundleExtra(str, attributeSet, bundle);
    }

    @Override // android.content.res.Resources
    public void parseBundleExtras(XmlResourceParser xmlResourceParser, Bundle bundle) throws XmlPullParserException, IOException {
        this.mResources.parseBundleExtras(xmlResourceParser, bundle);
    }

    @Override // android.content.res.Resources
    public void updateConfiguration(Configuration configuration, DisplayMetrics displayMetrics) {
        super.updateConfiguration(configuration, displayMetrics);
        Resources resources = this.mResources;
        if (resources != null) {
            resources.updateConfiguration(configuration, displayMetrics);
        }
    }
}
