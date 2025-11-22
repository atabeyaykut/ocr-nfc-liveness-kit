package e1;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class c implements v0.k<Bitmap> {

    /* renamed from: b, reason: collision with root package name */
    public static final v0.g<Integer> f5029b = v0.g.a(90, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality");

    /* renamed from: c, reason: collision with root package name */
    public static final v0.g<Bitmap.CompressFormat> f5030c = new v0.g<>("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat", null, v0.g.f18201e);

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final y0.b f5031a;

    public c(@NonNull y0.b bVar) {
        this.f5031a = bVar;
    }

    @Override // v0.k
    @NonNull
    public final v0.c a(@NonNull v0.h hVar) {
        return v0.c.TRANSFORMED;
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0077 A[Catch: all -> 0x00be, TRY_LEAVE, TryCatch #6 {, blocks: (B:10:0x0028, B:23:0x0056, B:36:0x0071, B:38:0x0077, B:42:0x00ba, B:43:0x00bd, B:33:0x006c), top: B:57:0x0028 }] */
    @Override // v0.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b(@androidx.annotation.NonNull java.lang.Object r10, @androidx.annotation.NonNull java.io.File r11, @androidx.annotation.NonNull v0.h r12) {
        /*
            r9 = this;
            x0.w r10 = (x0.w) r10
            java.lang.String r0 = "BitmapEncoder"
            java.lang.String r1 = "Compressed with type: "
            java.lang.Object r10 = r10.get()
            android.graphics.Bitmap r10 = (android.graphics.Bitmap) r10
            v0.g<android.graphics.Bitmap$CompressFormat> r2 = e1.c.f5030c
            java.lang.Object r3 = r12.c(r2)
            android.graphics.Bitmap$CompressFormat r3 = (android.graphics.Bitmap.CompressFormat) r3
            if (r3 == 0) goto L17
            goto L22
        L17:
            boolean r3 = r10.hasAlpha()
            if (r3 == 0) goto L20
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.PNG
            goto L22
        L20:
            android.graphics.Bitmap$CompressFormat r3 = android.graphics.Bitmap.CompressFormat.JPEG
        L22:
            r10.getWidth()
            r10.getHeight()
            int r4 = q1.h.f13308b     // Catch: java.lang.Throwable -> Lbe
            long r4 = android.os.SystemClock.elapsedRealtimeNanos()     // Catch: java.lang.Throwable -> Lbe
            v0.g<java.lang.Integer> r6 = e1.c.f5029b     // Catch: java.lang.Throwable -> Lbe
            java.lang.Object r6 = r12.c(r6)     // Catch: java.lang.Throwable -> Lbe
            java.lang.Integer r6 = (java.lang.Integer) r6     // Catch: java.lang.Throwable -> Lbe
            int r6 = r6.intValue()     // Catch: java.lang.Throwable -> Lbe
            r7 = 0
            java.io.FileOutputStream r8 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r8.<init>(r11)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            y0.b r11 = r9.f5031a
            if (r11 == 0) goto L4f
            com.bumptech.glide.load.data.c r7 = new com.bumptech.glide.load.data.c     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            r7.<init>(r8, r11)     // Catch: java.lang.Throwable -> L4a java.io.IOException -> L4c
            goto L50
        L4a:
            r10 = move-exception
            goto Lb8
        L4c:
            r11 = move-exception
            r7 = r8
            goto L5e
        L4f:
            r7 = r8
        L50:
            r10.compress(r3, r6, r7)     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r7.close()     // Catch: java.lang.Throwable -> L5b java.io.IOException -> L5d
            r7.close()     // Catch: java.io.IOException -> L59 java.lang.Throwable -> Lbe
        L59:
            r11 = 1
            goto L70
        L5b:
            r10 = move-exception
            goto Lb7
        L5d:
            r11 = move-exception
        L5e:
            r6 = 3
            boolean r6 = android.util.Log.isLoggable(r0, r6)     // Catch: java.lang.Throwable -> L5b
            if (r6 == 0) goto L6a
            java.lang.String r6 = "Failed to encode Bitmap"
            android.util.Log.d(r0, r6, r11)     // Catch: java.lang.Throwable -> L5b
        L6a:
            if (r7 == 0) goto L6f
            r7.close()     // Catch: java.io.IOException -> L6f java.lang.Throwable -> Lbe
        L6f:
            r11 = 0
        L70:
            r6 = 2
            boolean r6 = android.util.Log.isLoggable(r0, r6)     // Catch: java.lang.Throwable -> Lbe
            if (r6 == 0) goto Lb6
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbe
            r6.<init>(r1)     // Catch: java.lang.Throwable -> Lbe
            r6.append(r3)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r1 = " of size "
            r6.append(r1)     // Catch: java.lang.Throwable -> Lbe
            int r1 = q1.m.c(r10)     // Catch: java.lang.Throwable -> Lbe
            r6.append(r1)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r1 = " in "
            r6.append(r1)     // Catch: java.lang.Throwable -> Lbe
            double r3 = q1.h.a(r4)     // Catch: java.lang.Throwable -> Lbe
            r6.append(r3)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r1 = ", options format: "
            r6.append(r1)     // Catch: java.lang.Throwable -> Lbe
            java.lang.Object r12 = r12.c(r2)     // Catch: java.lang.Throwable -> Lbe
            r6.append(r12)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r12 = ", hasAlpha: "
            r6.append(r12)     // Catch: java.lang.Throwable -> Lbe
            boolean r10 = r10.hasAlpha()     // Catch: java.lang.Throwable -> Lbe
            r6.append(r10)     // Catch: java.lang.Throwable -> Lbe
            java.lang.String r10 = r6.toString()     // Catch: java.lang.Throwable -> Lbe
            android.util.Log.v(r0, r10)     // Catch: java.lang.Throwable -> Lbe
        Lb6:
            return r11
        Lb7:
            r8 = r7
        Lb8:
            if (r8 == 0) goto Lbd
            r8.close()     // Catch: java.io.IOException -> Lbd java.lang.Throwable -> Lbe
        Lbd:
            throw r10     // Catch: java.lang.Throwable -> Lbe
        Lbe:
            r10 = move-exception
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.c.b(java.lang.Object, java.io.File, v0.h):boolean");
    }
}
