package androidx.core.graphics;

import android.graphics.Bitmap;
import android.graphics.BlendMode;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;

/* loaded from: classes.dex */
public final class BitmapCompat {

    @RequiresApi(17)
    public static class Api17Impl {
        private Api17Impl() {
        }

        @DoNotInline
        public static boolean hasMipMap(Bitmap bitmap) {
            return bitmap.hasMipMap();
        }

        @DoNotInline
        public static void setHasMipMap(Bitmap bitmap, boolean z10) {
            bitmap.setHasMipMap(z10);
        }
    }

    @RequiresApi(19)
    public static class Api19Impl {
        private Api19Impl() {
        }

        @DoNotInline
        public static int getAllocationByteCount(Bitmap bitmap) {
            return bitmap.getAllocationByteCount();
        }
    }

    @RequiresApi(27)
    public static class Api27Impl {
        private Api27Impl() {
        }

        @DoNotInline
        public static Bitmap copyBitmapIfHardware(Bitmap bitmap) {
            if (bitmap.getConfig() != Bitmap.Config.HARDWARE) {
                return bitmap;
            }
            Bitmap.Config hardwareBitmapConfig = Bitmap.Config.ARGB_8888;
            if (Build.VERSION.SDK_INT >= 31) {
                hardwareBitmapConfig = Api31Impl.getHardwareBitmapConfig(bitmap);
            }
            return bitmap.copy(hardwareBitmapConfig, true);
        }

        @DoNotInline
        public static Bitmap createBitmapWithSourceColorspace(int r32, int r42, Bitmap bitmap, boolean z10) {
            Bitmap.Config config = bitmap.getConfig();
            ColorSpace colorSpace = bitmap.getColorSpace();
            ColorSpace colorSpace2 = ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB);
            if (z10 && !bitmap.getColorSpace().equals(colorSpace2)) {
                config = Bitmap.Config.RGBA_F16;
                colorSpace = colorSpace2;
            } else if (bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                config = Bitmap.Config.ARGB_8888;
                if (Build.VERSION.SDK_INT >= 31) {
                    config = Api31Impl.getHardwareBitmapConfig(bitmap);
                }
            }
            return Bitmap.createBitmap(r32, r42, config, bitmap.hasAlpha(), colorSpace);
        }

        @DoNotInline
        public static boolean isAlreadyF16AndLinear(Bitmap bitmap) {
            return bitmap.getConfig() == Bitmap.Config.RGBA_F16 && bitmap.getColorSpace().equals(ColorSpace.get(ColorSpace.Named.LINEAR_EXTENDED_SRGB));
        }
    }

    @RequiresApi(29)
    public static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        public static void setPaintBlendMode(Paint paint) {
            paint.setBlendMode(BlendMode.SRC);
        }
    }

    @RequiresApi(31)
    public static class Api31Impl {
        private Api31Impl() {
        }

        @DoNotInline
        public static Bitmap.Config getHardwareBitmapConfig(Bitmap bitmap) {
            return bitmap.getHardwareBuffer().getFormat() == 22 ? Bitmap.Config.RGBA_F16 : Bitmap.Config.ARGB_8888;
        }
    }

    private BitmapCompat() {
    }

    @NonNull
    public static Bitmap createScaledBitmap(@NonNull Bitmap bitmap, int r22, int r23, @Nullable Rect rect, boolean z10) {
        Paint paint;
        Bitmap bitmap2;
        int r13;
        Rect rect2;
        Bitmap bitmapCreateBitmap;
        if (r22 <= 0 || r23 <= 0) {
            throw new IllegalArgumentException("dstW and dstH must be > 0!");
        }
        if (rect != null && (rect.isEmpty() || rect.left < 0 || rect.right > bitmap.getWidth() || rect.top < 0 || rect.bottom > bitmap.getHeight())) {
            throw new IllegalArgumentException("srcRect must be contained by srcBm!");
        }
        int r42 = Build.VERSION.SDK_INT;
        Bitmap bitmapCopyBitmapIfHardware = r42 >= 27 ? Api27Impl.copyBitmapIfHardware(bitmap) : bitmap;
        int r72 = rect != null ? rect.width() : bitmap.getWidth();
        int r82 = rect != null ? rect.height() : bitmap.getHeight();
        float f = r22 / r72;
        float f10 = r23 / r82;
        int r12 = rect != null ? rect.left : 0;
        int r32 = rect != null ? rect.top : 0;
        if (r12 == 0 && r32 == 0 && r22 == bitmap.getWidth() && r23 == bitmap.getHeight()) {
            return (bitmap.isMutable() && bitmap == bitmapCopyBitmapIfHardware) ? bitmap.copy(bitmap.getConfig(), true) : bitmapCopyBitmapIfHardware;
        }
        Paint paint2 = new Paint(1);
        paint2.setFilterBitmap(true);
        if (r42 >= 29) {
            Api29Impl.setPaintBlendMode(paint2);
        } else {
            paint2.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        }
        if (r72 == r22 && r82 == r23) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(r22, r23, bitmapCopyBitmapIfHardware.getConfig());
            new Canvas(bitmapCreateBitmap2).drawBitmap(bitmapCopyBitmapIfHardware, -r12, -r32, paint2);
            return bitmapCreateBitmap2;
        }
        double dLog = Math.log(2.0d);
        double dLog2 = Math.log(f) / dLog;
        int r92 = (int) (f > 1.0f ? Math.ceil(dLog2) : Math.floor(dLog2));
        int r10 = (int) (f10 > 1.0f ? Math.ceil(Math.log(f10) / dLog) : Math.floor(Math.log(f10) / dLog));
        if (!z10 || r42 < 27 || Api27Impl.isAlreadyF16AndLinear(bitmap)) {
            paint = paint2;
            bitmap2 = null;
            r13 = 0;
        } else {
            Bitmap bitmapCreateBitmapWithSourceColorspace = Api27Impl.createBitmapWithSourceColorspace(r92 > 0 ? sizeAtStep(r72, r22, 1, r92) : r72, r10 > 0 ? sizeAtStep(r82, r23, 1, r10) : r82, bitmap, true);
            paint = paint2;
            new Canvas(bitmapCreateBitmapWithSourceColorspace).drawBitmap(bitmapCopyBitmapIfHardware, -r12, -r32, paint);
            r32 = 0;
            r12 = 0;
            r13 = 1;
            bitmap2 = bitmapCopyBitmapIfHardware;
            bitmapCopyBitmapIfHardware = bitmapCreateBitmapWithSourceColorspace;
        }
        Rect rect3 = new Rect(r12, r32, r72, r82);
        Rect rect4 = new Rect();
        int r122 = r92;
        int r16 = r10;
        while (true) {
            if (r122 == 0 && r16 == 0) {
                break;
            }
            if (r122 < 0) {
                r122++;
            } else if (r122 > 0) {
                r122--;
            }
            if (r16 < 0) {
                r16++;
            } else if (r16 > 0) {
                r16--;
            }
            int r43 = r16;
            Paint paint3 = paint;
            Rect rect5 = rect3;
            rect4.set(0, 0, sizeAtStep(r72, r22, r122, r92), sizeAtStep(r82, r23, r43, r10));
            boolean z11 = r122 == 0 && r43 == 0;
            boolean z12 = bitmap2 != null && bitmap2.getWidth() == r22 && bitmap2.getHeight() == r23;
            if (bitmap2 == null || bitmap2 == bitmap) {
                rect2 = rect4;
            } else {
                if (z10) {
                    rect2 = rect4;
                    if (Build.VERSION.SDK_INT < 27 || Api27Impl.isAlreadyF16AndLinear(bitmap2)) {
                    }
                    Rect rect6 = rect2;
                    new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect5, rect6, paint3);
                    rect5.set(rect6);
                    r16 = r43;
                    Bitmap bitmap3 = bitmapCopyBitmapIfHardware;
                    bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
                    rect4 = rect6;
                    rect3 = rect5;
                    paint = paint3;
                    bitmap2 = bitmap3;
                } else {
                    rect2 = rect4;
                }
                if (!z11 || (z12 && r13 == 0)) {
                    bitmapCreateBitmap = bitmap2;
                }
                Rect rect62 = rect2;
                new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect5, rect62, paint3);
                rect5.set(rect62);
                r16 = r43;
                Bitmap bitmap32 = bitmapCopyBitmapIfHardware;
                bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
                rect4 = rect62;
                rect3 = rect5;
                paint = paint3;
                bitmap2 = bitmap32;
            }
            if (bitmap2 != bitmap && bitmap2 != null) {
                bitmap2.recycle();
            }
            int r33 = sizeAtStep(r72, r22, r122 > 0 ? r13 : r122, r92);
            int r11 = sizeAtStep(r82, r23, r43 > 0 ? r13 : r43, r10);
            if (Build.VERSION.SDK_INT >= 27) {
                bitmapCreateBitmap = Api27Impl.createBitmapWithSourceColorspace(r33, r11, bitmap, z10 && !z11);
            } else {
                bitmapCreateBitmap = Bitmap.createBitmap(r33, r11, bitmapCopyBitmapIfHardware.getConfig());
            }
            Rect rect622 = rect2;
            new Canvas(bitmapCreateBitmap).drawBitmap(bitmapCopyBitmapIfHardware, rect5, rect622, paint3);
            rect5.set(rect622);
            r16 = r43;
            Bitmap bitmap322 = bitmapCopyBitmapIfHardware;
            bitmapCopyBitmapIfHardware = bitmapCreateBitmap;
            rect4 = rect622;
            rect3 = rect5;
            paint = paint3;
            bitmap2 = bitmap322;
        }
        if (bitmap2 != bitmap && bitmap2 != null) {
            bitmap2.recycle();
        }
        return bitmapCopyBitmapIfHardware;
    }

    public static int getAllocationByteCount(@NonNull Bitmap bitmap) {
        return Api19Impl.getAllocationByteCount(bitmap);
    }

    public static boolean hasMipMap(@NonNull Bitmap bitmap) {
        return Api17Impl.hasMipMap(bitmap);
    }

    public static void setHasMipMap(@NonNull Bitmap bitmap, boolean z10) {
        Api17Impl.setHasMipMap(bitmap, z10);
    }

    @VisibleForTesting
    public static int sizeAtStep(int r12, int r22, int r32, int r42) {
        return r32 == 0 ? r22 : r32 > 0 ? r12 * (1 << (r42 - r32)) : r22 << ((-r32) - 1);
    }
}
