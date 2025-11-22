package p2;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import c5.w;
import com.github.dhaval2404.imagepicker.ImagePickerActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import kotlin.jvm.internal.h;
import mc.j;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;

/* loaded from: classes.dex */
public final class d extends a {

    /* renamed from: b, reason: collision with root package name */
    public final int f12225b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12226c;

    /* renamed from: d, reason: collision with root package name */
    public final long f12227d;

    /* renamed from: e, reason: collision with root package name */
    public final File f12228e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(ImagePickerActivity activity) {
        super(activity);
        h.f(activity, "activity");
        Intent intent = activity.getIntent();
        h.e(intent, "activity.intent");
        Bundle extras = intent.getExtras();
        extras = extras == null ? new Bundle() : extras;
        this.f12225b = extras.getInt("extra.max_width", 0);
        this.f12226c = extras.getInt("extra.max_height", 0);
        this.f12227d = extras.getLong("extra.image_max_size", 0L);
        this.f12228e = a(extras.getString("extra.save_directory"));
    }

    public final File d(File file, int r82) {
        int r42;
        List listT = b8.f.T(new int[]{2448, 3264}, new int[]{2008, 3032}, new int[]{1944, 2580}, new int[]{1680, 2240}, new int[]{1536, 2048}, new int[]{1200, 1600}, new int[]{1024, 1392}, new int[]{960, 1280}, new int[]{768, 1024}, new int[]{600, 800}, new int[]{480, 640}, new int[]{240, DilithiumEngine.DilithiumPolyT1PackedBytes}, new int[]{120, 160}, new int[]{60, 80}, new int[]{30, 40});
        FileOutputStream fileOutputStream = null;
        if (r82 >= listT.size()) {
            return null;
        }
        int[] r83 = (int[]) listT.get(r82);
        int r02 = r83[0];
        int r84 = r83[1];
        int r12 = this.f12225b;
        if (r12 > 0 && (r42 = this.f12226c) > 0 && (r02 > r12 || r84 > r42)) {
            r02 = r12;
            r84 = r42;
        }
        Bitmap.CompressFormat compressFormat = Bitmap.CompressFormat.JPEG;
        String absolutePath = file.getAbsolutePath();
        h.e(absolutePath, "file.absolutePath");
        if (j.w(absolutePath, ".png", false)) {
            compressFormat = Bitmap.CompressFormat.PNG;
        }
        Uri uriFromFile = Uri.fromFile(file);
        h.e(uriFromFile, "Uri.fromFile(file)");
        File fileR = w.r(this.f12228e, w.q(uriFromFile));
        if (fileR == null) {
            return null;
        }
        float f = r02;
        float f10 = r84;
        String absolutePath2 = fileR.getAbsolutePath();
        h.e(absolutePath2, "compressFile.absolutePath");
        h.f(compressFormat, "compressFormat");
        File parentFile = new File(absolutePath2).getParentFile();
        if (parentFile != null && !parentFile.exists()) {
            parentFile.mkdirs();
        }
        try {
            FileOutputStream fileOutputStream2 = new FileOutputStream(absolutePath2);
            try {
                Bitmap bitmapA = q2.b.a(file, f, f10);
                if (bitmapA != null) {
                    bitmapA.compress(compressFormat, 100, fileOutputStream2);
                }
                fileOutputStream2.flush();
                fileOutputStream2.close();
                return new File(absolutePath2);
            } catch (Throwable th2) {
                th = th2;
                fileOutputStream = fileOutputStream2;
                if (fileOutputStream != null) {
                    fileOutputStream.flush();
                    fileOutputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean e(android.net.Uri r11) throws java.lang.Throwable {
        /*
            r10 = this;
            r0 = 0
            long r2 = r10.f12227d
            r4 = 0
            r5 = 1
            int r6 = (r2 > r0 ? 1 : (r2 == r0 ? 0 : -1))
            if (r6 <= 0) goto Lc
            r6 = 1
            goto Ld
        Lc:
            r6 = 0
        Ld:
            r7 = 0
            if (r6 == 0) goto L41
            java.lang.String r6 = r11.getScheme()
            java.lang.String r8 = "file"
            boolean r6 = mc.j.x(r8, r6)
            if (r6 == 0) goto L2e
            java.lang.String r6 = c5.v.t(r10, r11)
            if (r6 == 0) goto L2c
            java.io.File r8 = new java.io.File
            r8.<init>(r6)
            androidx.documentfile.provider.DocumentFile r6 = androidx.documentfile.provider.DocumentFile.fromFile(r8)
            goto L32
        L2c:
            r6 = r7
            goto L32
        L2e:
            androidx.documentfile.provider.DocumentFile r6 = androidx.documentfile.provider.DocumentFile.fromSingleUri(r10, r11)
        L32:
            if (r6 == 0) goto L39
            long r8 = r6.length()
            goto L3a
        L39:
            r8 = r0
        L3a:
            long r8 = r8 - r2
            int r2 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r2 <= 0) goto L41
            r0 = 1
            goto L42
        L41:
            r0 = 0
        L42:
            if (r0 != 0) goto L78
            int r1 = r10.f12225b
            if (r1 <= 0) goto L78
            int r2 = r10.f12226c
            if (r2 <= 0) goto L78
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r0.inJustDecodeBounds = r5
            android.content.ContentResolver r3 = r10.getContentResolver()
            java.io.InputStream r11 = r3.openInputStream(r11)
            android.graphics.BitmapFactory.decodeStream(r11, r7, r0)
            int r11 = r0.outWidth
            java.lang.Integer r11 = java.lang.Integer.valueOf(r11)
            int r0 = r0.outHeight
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            int r11 = r11.intValue()
            if (r11 > r1) goto L76
            int r11 = r0.intValue()
            if (r11 <= r2) goto L77
        L76:
            r4 = 1
        L77:
            return r4
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p2.d.e(android.net.Uri):boolean");
    }
}
