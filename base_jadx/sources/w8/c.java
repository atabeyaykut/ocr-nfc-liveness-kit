package w8;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.ExifInterface;
import java.io.File;
import java.io.FileOutputStream;
import kotlin.jvm.internal.h;
import mc.n;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final String f18823a = File.separator;

    public static final Bitmap.CompressFormat a(File compressFormat) {
        h.g(compressFormat, "$this$compressFormat");
        String name = compressFormat.getName();
        h.e(name, "name");
        String lowerCase = n.d0('.', name, "").toLowerCase();
        h.b(lowerCase, "(this as java.lang.String).toLowerCase()");
        int r02 = lowerCase.hashCode();
        if (r02 != 111145) {
            if (r02 == 3645340 && lowerCase.equals("webp")) {
                return Bitmap.CompressFormat.WEBP;
            }
        } else if (lowerCase.equals("png")) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    public static final Bitmap b(File imageFile, Bitmap bitmap) {
        float f;
        h.g(imageFile, "imageFile");
        int attributeInt = new ExifInterface(imageFile.getAbsolutePath()).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 0);
        Matrix matrix = new Matrix();
        if (attributeInt == 3) {
            f = 180.0f;
        } else {
            if (attributeInt != 6) {
                if (attributeInt == 8) {
                    f = 270.0f;
                }
                Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
                h.b(bitmapCreateBitmap, "Bitmap.createBitmap(bitm…map.height, matrix, true)");
                return bitmapCreateBitmap;
            }
            f = 90.0f;
        }
        matrix.postRotate(f);
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        h.b(bitmapCreateBitmap2, "Bitmap.createBitmap(bitm…map.height, matrix, true)");
        return bitmapCreateBitmap2;
    }

    public static final File c(int r42, Bitmap.CompressFormat format, Bitmap bitmap, File imageFile) throws Throwable {
        File file;
        FileOutputStream fileOutputStream;
        h.g(imageFile, "imageFile");
        h.g(format, "format");
        if (format == a(imageFile)) {
            file = imageFile;
        } else {
            StringBuilder sb2 = new StringBuilder();
            String absolutePath = imageFile.getAbsolutePath();
            h.b(absolutePath, "imageFile.absolutePath");
            sb2.append(n.g0(absolutePath, absolutePath));
            sb2.append('.');
            int r22 = b.f18822a[format.ordinal()];
            sb2.append(r22 != 1 ? r22 != 2 ? "jpg" : "webp" : "png");
            file = new File(sb2.toString());
        }
        imageFile.delete();
        File parentFile = file.getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
        }
        try {
            fileOutputStream = new FileOutputStream(file.getAbsolutePath());
            try {
                bitmap.compress(format, r42, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return file;
            } catch (Throwable th2) {
                th = th2;
                if (fileOutputStream != null) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            fileOutputStream = null;
        }
    }
}
