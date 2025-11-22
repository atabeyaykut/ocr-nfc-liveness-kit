package kd;

import android.content.Context;
import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class m implements Serializable {

    /* renamed from: b, reason: collision with root package name */
    public transient e f8898b;

    /* renamed from: e, reason: collision with root package name */
    public long f8901e;
    public long f;

    /* renamed from: g, reason: collision with root package name */
    public long f8902g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f8903h;

    /* renamed from: j, reason: collision with root package name */
    public transient Context f8904j;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8897a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public HashSet f8899c = new HashSet();

    /* renamed from: d, reason: collision with root package name */
    public c f8900d = new c(true);

    public m(Context context) {
        this.f8904j = context;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:4|100|(9:97|5|109|6|107|7|111|8|(2:103|10))|101|64|(1:68)|69|(1:71)|72|73) */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 5, insn: 0x007c: MOVE (r3 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:125), block:B:55:0x007c */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0093 A[EXC_TOP_SPLITTER, PHI: r5 r6
      0x0093: PHI (r5v5 ??) = (r5v2 ??), (r5v4 ??), (r5v11 ??), (r5v11 ??), (r5v11 ??) binds: [B:52:0x0078, B:63:0x0092, B:9:0x001a, B:88:0x0093, B:10:0x001c] A[DONT_GENERATE, DONT_INLINE]
      0x0093: PHI (r6v7 kd.m) = (r6v2 kd.m), (r6v3 kd.m), (r6v19 kd.m), (r6v19 kd.m), (r6v19 kd.m) binds: [B:52:0x0078, B:63:0x0092, B:9:0x001a, B:88:0x0093, B:10:0x001c] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:114:? A[Catch: all -> 0x00ea, SYNTHETIC, TRY_ENTER, TryCatch #4 {, blocks: (B:10:0x001c, B:64:0x0093, B:68:0x009a, B:69:0x009f, B:71:0x00a3, B:72:0x00ab, B:73:0x00e0, B:49:0x0073, B:59:0x008b, B:78:0x00e6, B:84:0x00ef, B:85:0x00f2), top: B:97:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0057 A[Catch: all -> 0x007b, TryCatch #9 {all -> 0x007b, blocks: (B:7:0x0012, B:8:0x0018, B:44:0x0053, B:46:0x0057, B:47:0x0061), top: B:100:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0061 A[Catch: all -> 0x007b, TRY_LEAVE, TryCatch #9 {all -> 0x007b, blocks: (B:7:0x0012, B:8:0x0018, B:44:0x0053, B:46:0x0057, B:47:0x0061), top: B:100:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:68:0x009a A[Catch: all -> 0x00ea, TRY_ENTER, TryCatch #4 {, blocks: (B:10:0x001c, B:64:0x0093, B:68:0x009a, B:69:0x009f, B:71:0x00a3, B:72:0x00ab, B:73:0x00e0, B:49:0x0073, B:59:0x008b, B:78:0x00e6, B:84:0x00ef, B:85:0x00f2), top: B:97:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x00a3 A[Catch: all -> 0x00ea, TryCatch #4 {, blocks: (B:10:0x001c, B:64:0x0093, B:68:0x009a, B:69:0x009f, B:71:0x00a3, B:72:0x00ab, B:73:0x00e0, B:49:0x0073, B:59:0x008b, B:78:0x00e6, B:84:0x00ef, B:85:0x00f2), top: B:97:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0073 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x00ef A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x00e6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r5v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static kd.m d(android.content.Context r11) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kd.m.d(android.content.Context):kd.m");
    }

    public final Boolean a() {
        return Boolean.valueOf(this.f8903h);
    }

    public final int b() {
        long jLongValue;
        Long lValueOf;
        if (a().booleanValue()) {
            jLongValue = Long.valueOf(this.f8902g).longValue();
            lValueOf = Long.valueOf(this.f8901e);
        } else {
            jLongValue = Long.valueOf(this.f).longValue();
            lValueOf = 0L;
        }
        long jLongValue2 = lValueOf.longValue() + jLongValue;
        if (jLongValue2 > 300000) {
            return (int) jLongValue2;
        }
        return 300000;
    }

    public final int c() {
        id.b.a("m", "ScanState says background mode for ScanJob is " + a(), new Object[0]);
        long jLongValue = (a().booleanValue() ? Long.valueOf(this.f8902g) : Long.valueOf(this.f)).longValue();
        if (a().booleanValue() || jLongValue >= 300000) {
            return (int) jLongValue;
        }
        return 300000;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x009d A[Catch: all -> 0x00c4, TryCatch #1 {, blocks: (B:9:0x001b, B:10:0x001e, B:29:0x004f, B:31:0x009d, B:32:0x00a6, B:34:0x00ac, B:35:0x00b5, B:36:0x00ba, B:24:0x0047, B:41:0x00c0, B:47:0x00c9, B:48:0x00cc), top: B:54:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00ac A[Catch: all -> 0x00c4, TryCatch #1 {, blocks: (B:9:0x001b, B:10:0x001e, B:29:0x004f, B:31:0x009d, B:32:0x00a6, B:34:0x00ac, B:35:0x00b5, B:36:0x00ba, B:24:0x0047, B:41:0x00c0, B:47:0x00c9, B:48:0x00cc), top: B:54:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00c9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[Catch: all -> 0x00c4, SYNTHETIC, TRY_ENTER, TryCatch #1 {, blocks: (B:9:0x001b, B:10:0x001e, B:29:0x004f, B:31:0x009d, B:32:0x00a6, B:34:0x00ac, B:35:0x00b5, B:36:0x00ba, B:24:0x0047, B:41:0x00c0, B:47:0x00c9, B:48:0x00cc), top: B:54:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e() {
        /*
            r11 = this;
            java.lang.String r0 = "Perm file is "
            java.lang.String r1 = "Temp file is "
            java.lang.Class<kd.m> r2 = kd.m.class
            monitor-enter(r2)
            r3 = 0
            r4 = 0
            android.content.Context r5 = r11.f8904j     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L31
            java.lang.String r6 = "android-beacon-library-scan-state-temp"
            java.io.FileOutputStream r5 = r5.openFileOutput(r6, r3)     // Catch: java.lang.Throwable -> L2d java.io.IOException -> L31
            java.io.ObjectOutputStream r6 = new java.io.ObjectOutputStream     // Catch: java.lang.Throwable -> L24 java.io.IOException -> L28
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L24 java.io.IOException -> L28
            r6.writeObject(r11)     // Catch: java.io.IOException -> L22 java.lang.Throwable -> Lbc
            if (r5 == 0) goto L1e
            r5.close()     // Catch: java.io.IOException -> L1e java.lang.Throwable -> Lc4
        L1e:
            r6.close()     // Catch: java.io.IOException -> L4f java.lang.Throwable -> Lc4
            goto L4f
        L22:
            r4 = move-exception
            goto L35
        L24:
            r0 = move-exception
            r6 = r4
            goto Lbd
        L28:
            r6 = move-exception
            r10 = r6
            r6 = r4
            r4 = r10
            goto L35
        L2d:
            r0 = move-exception
            r6 = r4
            goto Lbe
        L31:
            r5 = move-exception
            r6 = r4
            r4 = r5
            r5 = r6
        L35:
            java.lang.String r7 = "m"
            java.lang.String r8 = "Error while saving scan status to file: "
            r9 = 1
            java.lang.Object[] r9 = new java.lang.Object[r9]     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r4 = r4.getMessage()     // Catch: java.lang.Throwable -> Lbc
            r9[r3] = r4     // Catch: java.lang.Throwable -> Lbc
            id.b.c(r7, r8, r9)     // Catch: java.lang.Throwable -> Lbc
            if (r5 == 0) goto L4c
            r5.close()     // Catch: java.io.IOException -> L4b java.lang.Throwable -> Lc4
            goto L4c
        L4b:
        L4c:
            if (r6 == 0) goto L4f
            goto L1e
        L4f:
            java.io.File r4 = new java.io.File     // Catch: java.lang.Throwable -> Lc4
            android.content.Context r5 = r11.f8904j     // Catch: java.lang.Throwable -> Lc4
            java.io.File r5 = r5.getFilesDir()     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r6 = "android-beacon-library-scan-state"
            r4.<init>(r5, r6)     // Catch: java.lang.Throwable -> Lc4
            java.io.File r5 = new java.io.File     // Catch: java.lang.Throwable -> Lc4
            android.content.Context r6 = r11.f8904j     // Catch: java.lang.Throwable -> Lc4
            java.io.File r6 = r6.getFilesDir()     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r7 = "android-beacon-library-scan-state-temp"
            r5.<init>(r6, r7)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r6 = "m"
            java.lang.StringBuilder r7 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc4
            r7.<init>(r1)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = r5.getAbsolutePath()     // Catch: java.lang.Throwable -> Lc4
            r7.append(r1)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = r7.toString()     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r7 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lc4
            id.b.a(r6, r1, r7)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r1 = "m"
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lc4
            r6.<init>(r0)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r0 = r4.getAbsolutePath()     // Catch: java.lang.Throwable -> Lc4
            r6.append(r0)     // Catch: java.lang.Throwable -> Lc4
            java.lang.String r0 = r6.toString()     // Catch: java.lang.Throwable -> Lc4
            java.lang.Object[] r6 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lc4
            id.b.a(r1, r0, r6)     // Catch: java.lang.Throwable -> Lc4
            boolean r0 = r4.delete()     // Catch: java.lang.Throwable -> Lc4
            if (r0 != 0) goto La6
            java.lang.String r0 = "m"
            java.lang.String r1 = "Error while saving scan status to file: Cannot delete existing file."
            java.lang.Object[] r6 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lc4
            id.b.c(r0, r1, r6)     // Catch: java.lang.Throwable -> Lc4
        La6:
            boolean r0 = r5.renameTo(r4)     // Catch: java.lang.Throwable -> Lc4
            if (r0 != 0) goto Lb5
            java.lang.String r0 = "m"
            java.lang.String r1 = "Error while saving scan status to file: Cannot rename temp file."
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> Lc4
            id.b.c(r0, r1, r3)     // Catch: java.lang.Throwable -> Lc4
        Lb5:
            kd.e r0 = r11.f8898b     // Catch: java.lang.Throwable -> Lc4
            r0.i()     // Catch: java.lang.Throwable -> Lc4
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc4
            return
        Lbc:
            r0 = move-exception
        Lbd:
            r4 = r5
        Lbe:
            if (r4 == 0) goto Lc7
            r4.close()     // Catch: java.lang.Throwable -> Lc4 java.io.IOException -> Lc6
            goto Lc7
        Lc4:
            r0 = move-exception
            goto Lcd
        Lc6:
        Lc7:
            if (r6 == 0) goto Lcc
            r6.close()     // Catch: java.lang.Throwable -> Lc4 java.io.IOException -> Lcc
        Lcc:
            throw r0     // Catch: java.lang.Throwable -> Lc4
        Lcd:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> Lc4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kd.m.e():void");
    }
}
