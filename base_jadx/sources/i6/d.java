package i6;

import android.util.Log;
import h6.e;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;

/* loaded from: classes2.dex */
public final class d implements i6.a {

    /* renamed from: d, reason: collision with root package name */
    public static final Charset f7300d = Charset.forName("UTF-8");

    /* renamed from: a, reason: collision with root package name */
    public final File f7301a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7302b = 65536;

    /* renamed from: c, reason: collision with root package name */
    public c f7303c;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final byte[] f7304a;

        /* renamed from: b, reason: collision with root package name */
        public final int f7305b;

        public a(byte[] bArr, int r22) {
            this.f7304a = bArr;
            this.f7305b = r22;
        }
    }

    public d(File file) {
        this.f7301a = file;
    }

    @Override // i6.a
    public final void a() throws IOException {
        e.a(this.f7303c, "There was a problem closing the Crashlytics log file.");
        this.f7303c = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0012  */
    @Override // i6.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String b() {
        /*
            r10 = this;
            java.io.File r0 = r10.f7301a
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto Lb
            goto L12
        Lb:
            r10.d()
            i6.c r0 = r10.f7303c
            if (r0 != 0) goto L14
        L12:
            r4 = r2
            goto L6a
        L14:
            r3 = 1
            int[] r3 = new int[r3]
            r3[r1] = r1
            int r0 = r0.k()
            byte[] r0 = new byte[r0]
            i6.c r4 = r10.f7303c     // Catch: java.io.IOException -> L5b
            monitor-enter(r4)     // Catch: java.io.IOException -> L5b
            i6.c$a r5 = r4.f7292d     // Catch: java.lang.Throwable -> L58
            int r5 = r5.f7295a     // Catch: java.lang.Throwable -> L58
            r6 = 0
        L27:
            int r7 = r4.f7291c     // Catch: java.lang.Throwable -> L58
            if (r6 >= r7) goto L56
            i6.c$a r5 = r4.e(r5)     // Catch: java.lang.Throwable -> L58
            i6.c$b r7 = new i6.c$b     // Catch: java.lang.Throwable -> L58
            r7.<init>(r5)     // Catch: java.lang.Throwable -> L58
            int r8 = r5.f7296b     // Catch: java.lang.Throwable -> L58
            r9 = r3[r1]     // Catch: java.lang.Throwable -> L51
            r7.read(r0, r9, r8)     // Catch: java.lang.Throwable -> L51
            r9 = r3[r1]     // Catch: java.lang.Throwable -> L51
            int r9 = r9 + r8
            r3[r1] = r9     // Catch: java.lang.Throwable -> L51
            r7.close()     // Catch: java.lang.Throwable -> L58
            int r7 = r5.f7295a     // Catch: java.lang.Throwable -> L58
            int r7 = r7 + 4
            int r5 = r5.f7296b     // Catch: java.lang.Throwable -> L58
            int r7 = r7 + r5
            int r5 = r4.m(r7)     // Catch: java.lang.Throwable -> L58
            int r6 = r6 + 1
            goto L27
        L51:
            r5 = move-exception
            r7.close()     // Catch: java.lang.Throwable -> L58
            throw r5     // Catch: java.lang.Throwable -> L58
        L56:
            monitor-exit(r4)     // Catch: java.io.IOException -> L5b
            goto L63
        L58:
            r5 = move-exception
            monitor-exit(r4)     // Catch: java.io.IOException -> L5b
            throw r5     // Catch: java.io.IOException -> L5b
        L5b:
            r4 = move-exception
            java.lang.String r5 = "FirebaseCrashlytics"
            java.lang.String r6 = "A problem occurred while reading the Crashlytics log file."
            android.util.Log.e(r5, r6, r4)
        L63:
            i6.d$a r4 = new i6.d$a
            r3 = r3[r1]
            r4.<init>(r0, r3)
        L6a:
            if (r4 != 0) goto L6e
            r3 = r2
            goto L77
        L6e:
            int r0 = r4.f7305b
            byte[] r3 = new byte[r0]
            byte[] r4 = r4.f7304a
            java.lang.System.arraycopy(r4, r1, r3, r1, r0)
        L77:
            if (r3 == 0) goto L80
            java.lang.String r2 = new java.lang.String
            java.nio.charset.Charset r0 = i6.d.f7300d
            r2.<init>(r3, r0)
        L80:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: i6.d.b():java.lang.String");
    }

    @Override // i6.a
    public final void c(long j10, String str) {
        d();
        int r12 = this.f7302b;
        if (this.f7303c == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            int r32 = r12 / 4;
            if (str.length() > r32) {
                str = "..." + str.substring(str.length() - r32);
            }
            this.f7303c.a(String.format(Locale.US, "%d %s%n", Long.valueOf(j10), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f7300d));
            while (!this.f7303c.d() && this.f7303c.k() > r12) {
                this.f7303c.g();
            }
        } catch (IOException e10) {
            Log.e("FirebaseCrashlytics", "There was a problem writing to the Crashlytics log.", e10);
        }
    }

    public final void d() {
        File file = this.f7301a;
        if (this.f7303c == null) {
            try {
                this.f7303c = new c(file);
            } catch (IOException e10) {
                Log.e("FirebaseCrashlytics", "Could not open log file: " + file, e10);
            }
        }
    }
}
