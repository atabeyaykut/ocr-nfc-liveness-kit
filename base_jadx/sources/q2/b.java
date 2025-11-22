package q2;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import java.io.File;
import java.io.IOException;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class b {
    public static Bitmap a(File file, float f, float f10) throws IOException {
        int r15;
        int r14;
        int r6;
        Bitmap bitmapCreateBitmap;
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        Bitmap bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        int r32 = options.outHeight;
        int r42 = options.outWidth;
        float f11 = r42;
        float f12 = r32;
        float f13 = f11 / f12;
        float f14 = f / f10;
        if (f12 <= f10 && f11 <= f) {
            r15 = r32;
            r14 = r42;
        } else if (f13 < f14) {
            r14 = (int) ((f10 / f12) * f11);
            r15 = (int) f10;
        } else {
            if (f13 > f14) {
                f10 = (f / f11) * f12;
            }
            r15 = (int) f10;
            r14 = (int) f;
        }
        if (r32 > r15 || r42 > r14) {
            int r33 = r32 / 2;
            int r43 = r42 / 2;
            r6 = 1;
            while (r33 / r6 >= r15 && r43 / r6 >= r14) {
                r6 *= 2;
            }
        } else {
            r6 = 1;
        }
        options.inSampleSize = r6;
        options.inJustDecodeBounds = false;
        if (bitmapDecodeFile != null) {
            int r72 = (options.outHeight / r6) * (options.outWidth / r6);
            Bitmap.Config config = bitmapDecodeFile.getConfig();
            h.e(config, "candidate.config");
            int r44 = a.f13322a[config.ordinal()];
            if (r72 * (r44 != 1 ? (r44 == 2 || r44 == 3) ? 2 : 1 : 4) <= bitmapDecodeFile.getAllocationByteCount()) {
                options.inMutable = true;
                options.inBitmap = bitmapDecodeFile;
            }
        }
        options.inTempStorage = new byte[16384];
        try {
            bitmapDecodeFile = BitmapFactory.decodeFile(file.getAbsolutePath(), options);
        } catch (OutOfMemoryError e10) {
            e10.printStackTrace();
        }
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(r14, r15, Bitmap.Config.ARGB_8888);
        } catch (OutOfMemoryError e11) {
            e11.printStackTrace();
            bitmapCreateBitmap = null;
        }
        Bitmap bitmap = bitmapCreateBitmap;
        float f15 = r14;
        float f16 = f15 / options.outWidth;
        float f17 = r15;
        float f18 = f17 / options.outHeight;
        float f19 = f15 / 2.0f;
        float f20 = f17 / 2.0f;
        Matrix matrix = new Matrix();
        matrix.setScale(f16, f18, f19, f20);
        h.c(bitmap);
        Canvas canvas = new Canvas(bitmap);
        canvas.setMatrix(matrix);
        h.c(bitmapDecodeFile);
        canvas.drawBitmap(bitmapDecodeFile, f19 - (bitmapDecodeFile.getWidth() / 2), f20 - (bitmapDecodeFile.getHeight() / 2), new Paint(2));
        bitmapDecodeFile.recycle();
        return Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), new Matrix(), true);
    }
}
