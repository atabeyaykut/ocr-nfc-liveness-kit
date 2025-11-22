package o0;

import ed.x;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public abstract class c implements Closeable {

    /* renamed from: e, reason: collision with root package name */
    public static final String[] f11043e = new String[128];

    /* renamed from: a, reason: collision with root package name */
    public int f11044a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f11045b = new int[32];

    /* renamed from: c, reason: collision with root package name */
    public String[] f11046c = new String[32];

    /* renamed from: d, reason: collision with root package name */
    public int[] f11047d = new int[32];

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f11048a;

        /* renamed from: b, reason: collision with root package name */
        public final x f11049b;

        public a(String[] strArr, x xVar) {
            this.f11048a = strArr;
            this.f11049b = xVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:19:0x003a A[Catch: IOException -> 0x0069, TryCatch #0 {IOException -> 0x0069, blocks: (B:2:0x0000, B:3:0x000a, B:5:0x000d, B:7:0x001e, B:9:0x0026, B:21:0x0042, B:19:0x003a, B:20:0x003d, B:23:0x0047, B:24:0x004a, B:25:0x0059), top: B:30:0x0000 }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static o0.c.a a(java.lang.String... r12) {
            /*
                int r0 = r12.length     // Catch: java.io.IOException -> L69
                ed.h[] r0 = new ed.h[r0]     // Catch: java.io.IOException -> L69
                ed.e r1 = new ed.e     // Catch: java.io.IOException -> L69
                r1.<init>()     // Catch: java.io.IOException -> L69
                r2 = 0
                r3 = 0
            La:
                int r4 = r12.length     // Catch: java.io.IOException -> L69
                if (r3 >= r4) goto L59
                r4 = r12[r3]     // Catch: java.io.IOException -> L69
                java.lang.String[] r5 = o0.c.f11043e     // Catch: java.io.IOException -> L69
                r6 = 34
                r1.O(r6)     // Catch: java.io.IOException -> L69
                int r7 = r4.length()     // Catch: java.io.IOException -> L69
                r8 = 0
                r9 = 0
            L1c:
                if (r8 >= r7) goto L45
                char r10 = r4.charAt(r8)     // Catch: java.io.IOException -> L69
                r11 = 128(0x80, float:1.8E-43)
                if (r10 >= r11) goto L2b
                r10 = r5[r10]     // Catch: java.io.IOException -> L69
                if (r10 != 0) goto L38
                goto L42
            L2b:
                r11 = 8232(0x2028, float:1.1535E-41)
                if (r10 != r11) goto L32
                java.lang.String r10 = "\\u2028"
                goto L38
            L32:
                r11 = 8233(0x2029, float:1.1537E-41)
                if (r10 != r11) goto L42
                java.lang.String r10 = "\\u2029"
            L38:
                if (r9 >= r8) goto L3d
                r1.e0(r9, r8, r4)     // Catch: java.io.IOException -> L69
            L3d:
                r1.i0(r10)     // Catch: java.io.IOException -> L69
                int r9 = r8 + 1
            L42:
                int r8 = r8 + 1
                goto L1c
            L45:
                if (r9 >= r7) goto L4a
                r1.e0(r9, r7, r4)     // Catch: java.io.IOException -> L69
            L4a:
                r1.O(r6)     // Catch: java.io.IOException -> L69
                r1.readByte()     // Catch: java.io.IOException -> L69
                ed.h r4 = r1.n()     // Catch: java.io.IOException -> L69
                r0[r3] = r4     // Catch: java.io.IOException -> L69
                int r3 = r3 + 1
                goto La
            L59:
                o0.c$a r1 = new o0.c$a     // Catch: java.io.IOException -> L69
                java.lang.Object r12 = r12.clone()     // Catch: java.io.IOException -> L69
                java.lang.String[] r12 = (java.lang.String[]) r12     // Catch: java.io.IOException -> L69
                ed.x r0 = ed.x.a.b(r0)     // Catch: java.io.IOException -> L69
                r1.<init>(r12, r0)     // Catch: java.io.IOException -> L69
                return r1
            L69:
                r12 = move-exception
                java.lang.AssertionError r0 = new java.lang.AssertionError
                r0.<init>(r12)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: o0.c.a.a(java.lang.String[]):o0.c$a");
        }
    }

    static {
        for (int r12 = 0; r12 <= 31; r12++) {
            f11043e[r12] = String.format("\\u%04x", Integer.valueOf(r12));
        }
        String[] strArr = f11043e;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public abstract void a() throws IOException;

    public abstract void b() throws IOException;

    public abstract void c() throws IOException;

    public abstract void d() throws IOException;

    public abstract boolean e() throws IOException;

    public abstract boolean f() throws IOException;

    public abstract double g() throws IOException;

    public final String getPath() {
        int r02 = this.f11044a;
        int[] r12 = this.f11045b;
        String[] strArr = this.f11046c;
        int[] r32 = this.f11047d;
        StringBuilder sb2 = new StringBuilder("$");
        for (int r52 = 0; r52 < r02; r52++) {
            int r6 = r12[r52];
            if (r6 == 1 || r6 == 2) {
                sb2.append('[');
                sb2.append(r32[r52]);
                sb2.append(']');
            } else if (r6 == 3 || r6 == 4 || r6 == 5) {
                sb2.append('.');
                String str = strArr[r52];
                if (str != null) {
                    sb2.append(str);
                }
            }
        }
        return sb2.toString();
    }

    public abstract int i() throws IOException;

    public abstract String j() throws IOException;

    public abstract int k() throws IOException;

    public final void m(int r42) {
        int r02 = this.f11044a;
        int[] r12 = this.f11045b;
        if (r02 == r12.length) {
            if (r02 == 256) {
                throw new o0.a("Nesting too deep at " + getPath());
            }
            this.f11045b = Arrays.copyOf(r12, r12.length * 2);
            String[] strArr = this.f11046c;
            this.f11046c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] r03 = this.f11047d;
            this.f11047d = Arrays.copyOf(r03, r03.length * 2);
        }
        int[] r04 = this.f11045b;
        int r13 = this.f11044a;
        this.f11044a = r13 + 1;
        r04[r13] = r42;
    }

    public abstract int n(a aVar) throws IOException;

    public abstract void o() throws IOException;

    public abstract void p() throws IOException;

    public final void q(String str) throws b {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " at path ");
        sbI.append(getPath());
        throw new b(sbI.toString());
    }
}
