package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import androidx.annotation.ColorInt;
import androidx.annotation.RequiresApi;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u001a$\u0010\u0005\u001a\u00020\u0000*\u00020\u00002\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\u0086\bø\u0001\u0000\u001a\u001d\u0010\t\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006H\u0086\n\u001a'\u0010\u000b\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\b\b\u0001\u0010\n\u001a\u00020\u0006H\u0086\n\u001a'\u0010\u0010\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u000f\u001a\u00020\u000eH\u0086\b\u001a#\u0010\u0013\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u0011H\u0086\b\u001a7\u0010\u0013\u001a\u00020\u00002\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u00062\b\b\u0002\u0010\u0012\u001a\u00020\u00112\b\b\u0002\u0010\u0014\u001a\u00020\u000e2\b\b\u0002\u0010\u0016\u001a\u00020\u0015H\u0087\b\u001a\u0015\u0010\u0019\u001a\u00020\u000e*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u0017H\u0086\n\u001a\u0015\u0010\u0019\u001a\u00020\u000e*\u00020\u00002\u0006\u0010\u0018\u001a\u00020\u001aH\u0086\n\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u001b"}, d2 = {"Landroid/graphics/Bitmap;", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "Ll9/m;", "block", "applyCanvas", "", "x", "y", "get", TypedValues.Custom.S_COLOR, "set", "width", "height", "", "filter", "scale", "Landroid/graphics/Bitmap$Config;", "config", "createBitmap", "hasAlpha", "Landroid/graphics/ColorSpace;", "colorSpace", "Landroid/graphics/Point;", "p", "contains", "Landroid/graphics/PointF;", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class BitmapKt {
    public static final Bitmap applyCanvas(Bitmap bitmap, l<? super Canvas, m> block) {
        h.f(bitmap, "<this>");
        h.f(block, "block");
        block.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(Bitmap bitmap, Point p10) {
        int r52;
        h.f(bitmap, "<this>");
        h.f(p10, "p");
        int width = bitmap.getWidth();
        int r12 = p10.x;
        return (r12 >= 0 && r12 < width) && (r52 = p10.y) >= 0 && r52 < bitmap.getHeight();
    }

    public static final boolean contains(Bitmap bitmap, PointF p10) {
        h.f(bitmap, "<this>");
        h.f(p10, "p");
        float f = p10.x;
        if (f >= 0.0f && f < bitmap.getWidth()) {
            float f10 = p10.y;
            if (f10 >= 0.0f && f10 < bitmap.getHeight()) {
                return true;
            }
        }
        return false;
    }

    public static final Bitmap createBitmap(int r12, int r22, Bitmap.Config config) {
        h.f(config, "config");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r12, r22, config);
        h.e(bitmapCreateBitmap, "createBitmap(width, height, config)");
        return bitmapCreateBitmap;
    }

    @RequiresApi(26)
    @SuppressLint({"ClassVerificationFailure"})
    public static final Bitmap createBitmap(int r12, int r22, Bitmap.Config config, boolean z10, ColorSpace colorSpace) {
        h.f(config, "config");
        h.f(colorSpace, "colorSpace");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r12, r22, config, z10, colorSpace);
        h.e(bitmapCreateBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int r02, int r12, Bitmap.Config config, int r32, Object obj) {
        if ((r32 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        h.f(config, "config");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r02, r12, config);
        h.e(bitmapCreateBitmap, "createBitmap(width, height, config)");
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap createBitmap$default(int r02, int r12, Bitmap.Config config, boolean z10, ColorSpace colorSpace, int r52, Object obj) {
        if ((r52 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((r52 & 8) != 0) {
            z10 = true;
        }
        if ((r52 & 16) != 0) {
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
            h.e(colorSpace, "get(ColorSpace.Named.SRGB)");
        }
        h.f(config, "config");
        h.f(colorSpace, "colorSpace");
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(r02, r12, config, z10, colorSpace);
        h.e(bitmapCreateBitmap, "createBitmap(width, heig…ig, hasAlpha, colorSpace)");
        return bitmapCreateBitmap;
    }

    public static final int get(Bitmap bitmap, int r22, int r32) {
        h.f(bitmap, "<this>");
        return bitmap.getPixel(r22, r32);
    }

    public static final Bitmap scale(Bitmap bitmap, int r22, int r32, boolean z10) {
        h.f(bitmap, "<this>");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, r22, r32, z10);
        h.e(bitmapCreateScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return bitmapCreateScaledBitmap;
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int r12, int r22, boolean z10, int r42, Object obj) {
        if ((r42 & 4) != 0) {
            z10 = true;
        }
        h.f(bitmap, "<this>");
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, r12, r22, z10);
        h.e(bitmapCreateScaledBitmap, "createScaledBitmap(this, width, height, filter)");
        return bitmapCreateScaledBitmap;
    }

    public static final void set(Bitmap bitmap, int r22, int r32, @ColorInt int r42) {
        h.f(bitmap, "<this>");
        bitmap.setPixel(r22, r32, r42);
    }
}
