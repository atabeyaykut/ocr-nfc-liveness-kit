package c5;

import androidx.annotation.WorkerThread;
import java.io.IOException;
import java.net.URL;
import java.util.Map;

@WorkerThread
/* loaded from: classes.dex */
public final class y5 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final URL f2148a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ z5 f2149b;

    /* renamed from: c, reason: collision with root package name */
    public final c0.c f2150c;

    public y5(z5 z5Var, String str, URL url, c0.c cVar) {
        this.f2149b = z5Var;
        r3.r.f(str);
        this.f2148a = url;
        this.f2150c = cVar;
    }

    public final void a(final int r92, final IOException iOException, final byte[] bArr, final Map map) throws IllegalStateException {
        h4 h4Var = ((i4) this.f2149b.f2115a).f1636k;
        i4.e(h4Var);
        h4Var.p(new Runnable() { // from class: c5.x5
            /* JADX WARN: Removed duplicated region for block: B:10:0x0028  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 290
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: c5.x5.run():void");
            }
        });
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00a3  */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.Throwable {
        /*
            r10 = this;
            c5.z5 r0 = r10.f2149b
            c5.z4 r1 = r0.f2115a
            c5.i4 r1 = (c5.i4) r1
            c5.h4 r1 = r1.f1636k
            c5.i4.e(r1)
            r1.g()
            c5.z4 r0 = r0.f2115a
            r1 = 0
            r2 = 0
            java.net.URL r3 = r10.f2148a     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            java.net.URLConnection r3 = r3.openConnection()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            boolean r4 = r3 instanceof java.net.HttpURLConnection     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            if (r4 == 0) goto L8a
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r3.setDefaultUseCaches(r1)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r4 = r0
            c5.i4 r4 = (c5.i4) r4     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r4.getClass()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r4 = 60000(0xea60, float:8.4078E-41)
            r3.setConnectTimeout(r4)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            c5.i4 r0 = (c5.i4) r0     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r0.getClass()     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r0 = 61000(0xee48, float:8.5479E-41)
            r3.setReadTimeout(r0)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r3.setInstanceFollowRedirects(r1)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            r0 = 1
            r3.setDoInput(r0)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            int r0 = r3.getResponseCode()     // Catch: java.lang.Throwable -> L86 java.io.IOException -> L88
            java.util.Map r4 = r3.getHeaderFields()     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L80
            java.io.ByteArrayOutputStream r5 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L6e
            r5.<init>()     // Catch: java.lang.Throwable -> L6e
            java.io.InputStream r6 = r3.getInputStream()     // Catch: java.lang.Throwable -> L6e
            r7 = 1024(0x400, float:1.435E-42)
            byte[] r7 = new byte[r7]     // Catch: java.lang.Throwable -> L6c
        L54:
            int r8 = r6.read(r7)     // Catch: java.lang.Throwable -> L6c
            if (r8 <= 0) goto L5e
            r5.write(r7, r1, r8)     // Catch: java.lang.Throwable -> L6c
            goto L54
        L5e:
            byte[] r1 = r5.toByteArray()     // Catch: java.lang.Throwable -> L6c
            r6.close()     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
            r3.disconnect()
            r10.a(r0, r2, r1, r4)
            return
        L6c:
            r1 = move-exception
            goto L70
        L6e:
            r1 = move-exception
            r6 = r2
        L70:
            if (r6 == 0) goto L75
            r6.close()     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
        L75:
            throw r1     // Catch: java.lang.Throwable -> L76 java.io.IOException -> L78
        L76:
            r1 = move-exception
            goto L7c
        L78:
            r1 = move-exception
            goto L82
        L7a:
            r1 = move-exception
            r4 = r2
        L7c:
            r9 = r1
            r1 = r0
            r0 = r9
            goto L95
        L80:
            r1 = move-exception
            r4 = r2
        L82:
            r9 = r1
            r1 = r0
            r0 = r9
            goto La1
        L86:
            r0 = move-exception
            goto L94
        L88:
            r0 = move-exception
            goto La0
        L8a:
            java.io.IOException r0 = new java.io.IOException     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            java.lang.String r3 = "Failed to obtain HTTP connection"
            r0.<init>(r3)     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
            throw r0     // Catch: java.lang.Throwable -> L92 java.io.IOException -> L9e
        L92:
            r0 = move-exception
            r3 = r2
        L94:
            r4 = r2
        L95:
            if (r3 == 0) goto L9a
            r3.disconnect()
        L9a:
            r10.a(r1, r2, r2, r4)
            throw r0
        L9e:
            r0 = move-exception
            r3 = r2
        La0:
            r4 = r2
        La1:
            if (r3 == 0) goto La6
            r3.disconnect()
        La6:
            r10.a(r1, r0, r2, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: c5.y5.run():void");
    }
}
