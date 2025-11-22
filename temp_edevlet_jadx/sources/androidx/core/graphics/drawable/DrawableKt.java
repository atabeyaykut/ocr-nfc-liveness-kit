package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.Px;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a*\u0010\u0007\u001a\u00020\u0006*\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00012\b\b\u0003\u0010\u0003\u001a\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u001a,\u0010\b\u001a\u0004\u0018\u00010\u0006*\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00012\b\b\u0003\u0010\u0003\u001a\u00020\u00012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u001a2\u0010\u000e\u001a\u00020\r*\u00020\u00002\b\b\u0003\u0010\t\u001a\u00020\u00012\b\b\u0003\u0010\n\u001a\u00020\u00012\b\b\u0003\u0010\u000b\u001a\u00020\u00012\b\b\u0003\u0010\f\u001a\u00020\u0001¨\u0006\u000f"}, d2 = {"Landroid/graphics/drawable/Drawable;", "", "width", "height", "Landroid/graphics/Bitmap$Config;", "config", "Landroid/graphics/Bitmap;", "toBitmap", "toBitmapOrNull", "left", "top", "right", "bottom", "Ll9/m;", "updateBounds", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class DrawableKt {
    public static final Bitmap toBitmap(Drawable drawable, @Px int r72, @Px int r82, Bitmap.Config config) {
        h.f(drawable, "<this>");
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null) {
                throw new IllegalArgumentException("bitmap is null");
            }
            if (config == null || bitmapDrawable.getBitmap().getConfig() == config) {
                if (r72 == bitmapDrawable.getBitmap().getWidth() && r82 == bitmapDrawable.getBitmap().getHeight()) {
                    Bitmap bitmap = bitmapDrawable.getBitmap();
                    h.e(bitmap, "bitmap");
                    return bitmap;
                }
                Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), r72, r82, true);
                h.e(bitmapCreateScaledBitmap, "createScaledBitmap(bitmap, width, height, true)");
                return bitmapCreateScaledBitmap;
            }
        }
        Rect bounds = drawable.getBounds();
        h.e(bounds, "bounds");
        int r22 = bounds.left;
        int r32 = bounds.top;
        int r42 = bounds.right;
        int r02 = bounds.bottom;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmap2 = Bitmap.createBitmap(r72, r82, config);
        drawable.setBounds(0, 0, r72, r82);
        drawable.draw(new Canvas(bitmap2));
        drawable.setBounds(r22, r32, r42, r02);
        h.e(bitmap2, "bitmap");
        return bitmap2;
    }

    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int r12, int r22, Bitmap.Config config, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            r12 = drawable.getIntrinsicWidth();
        }
        if ((r42 & 2) != 0) {
            r22 = drawable.getIntrinsicHeight();
        }
        if ((r42 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, r12, r22, config);
    }

    public static final Bitmap toBitmapOrNull(Drawable drawable, @Px int r22, @Px int r32, Bitmap.Config config) {
        h.f(drawable, "<this>");
        if ((drawable instanceof BitmapDrawable) && ((BitmapDrawable) drawable).getBitmap() == null) {
            return null;
        }
        return toBitmap(drawable, r22, r32, config);
    }

    public static /* synthetic */ Bitmap toBitmapOrNull$default(Drawable drawable, int r12, int r22, Bitmap.Config config, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            r12 = drawable.getIntrinsicWidth();
        }
        if ((r42 & 2) != 0) {
            r22 = drawable.getIntrinsicHeight();
        }
        if ((r42 & 4) != 0) {
            config = null;
        }
        return toBitmapOrNull(drawable, r12, r22, config);
    }

    public static final void updateBounds(Drawable drawable, @Px int r22, @Px int r32, @Px int r42, @Px int r52) {
        h.f(drawable, "<this>");
        drawable.setBounds(r22, r32, r42, r52);
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int r12, int r22, int r32, int r42, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r12 = drawable.getBounds().left;
        }
        if ((r52 & 2) != 0) {
            r22 = drawable.getBounds().top;
        }
        if ((r52 & 4) != 0) {
            r32 = drawable.getBounds().right;
        }
        if ((r52 & 8) != 0) {
            r42 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, r12, r22, r32, r42);
    }
}
