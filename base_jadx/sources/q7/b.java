package q7;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.io.Writer;

/* loaded from: classes2.dex */
public class b implements Closeable, Flushable {

    /* renamed from: j, reason: collision with root package name */
    public static final String[] f13422j = new String[128];

    /* renamed from: k, reason: collision with root package name */
    public static final String[] f13423k;

    /* renamed from: a, reason: collision with root package name */
    public final Writer f13424a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f13425b;

    /* renamed from: c, reason: collision with root package name */
    public int f13426c;

    /* renamed from: d, reason: collision with root package name */
    public String f13427d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f13428e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public String f13429g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f13430h;

    static {
        for (int r12 = 0; r12 <= 31; r12++) {
            f13422j[r12] = String.format("\\u%04x", Integer.valueOf(r12));
        }
        String[] strArr = f13422j;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        String[] strArr2 = (String[]) strArr.clone();
        f13423k = strArr2;
        strArr2[60] = "\\u003c";
        strArr2[62] = "\\u003e";
        strArr2[38] = "\\u0026";
        strArr2[61] = "\\u003d";
        strArr2[39] = "\\u0027";
    }

    public b(Writer writer) {
        int[] r02 = new int[32];
        this.f13425b = r02;
        this.f13426c = 0;
        if (r02.length == 0) {
            int[] r22 = new int[0 * 2];
            System.arraycopy(r02, 0, r22, 0, 0);
            this.f13425b = r22;
        }
        int[] r03 = this.f13425b;
        int r12 = this.f13426c;
        this.f13426c = r12 + 1;
        r03[r12] = 6;
        this.f13427d = ":";
        this.f13430h = true;
        if (writer == null) {
            throw new NullPointerException("out == null");
        }
        this.f13424a = writer;
    }

    public final void a() throws IOException {
        int r02 = k();
        if (r02 != 1) {
            Writer writer = this.f13424a;
            if (r02 != 2) {
                if (r02 == 4) {
                    writer.append((CharSequence) this.f13427d);
                    this.f13425b[this.f13426c - 1] = 5;
                    return;
                }
                if (r02 != 6) {
                    if (r02 != 7) {
                        throw new IllegalStateException("Nesting problem.");
                    }
                    if (!this.f13428e) {
                        throw new IllegalStateException("JSON must have only one top-level value.");
                    }
                }
                this.f13425b[this.f13426c - 1] = 7;
                return;
            }
            writer.append(',');
        } else {
            this.f13425b[this.f13426c - 1] = 2;
        }
        i();
    }

    public void b() throws IOException {
        s();
        a();
        int r02 = this.f13426c;
        int[] r12 = this.f13425b;
        if (r02 == r12.length) {
            int[] r22 = new int[r02 * 2];
            System.arraycopy(r12, 0, r22, 0, r02);
            this.f13425b = r22;
        }
        int[] r03 = this.f13425b;
        int r13 = this.f13426c;
        this.f13426c = r13 + 1;
        r03[r13] = 1;
        this.f13424a.write("[");
    }

    public void c() throws IOException {
        s();
        a();
        int r02 = this.f13426c;
        int[] r12 = this.f13425b;
        if (r02 == r12.length) {
            int[] r22 = new int[r02 * 2];
            System.arraycopy(r12, 0, r22, 0, r02);
            this.f13425b = r22;
        }
        int[] r03 = this.f13425b;
        int r13 = this.f13426c;
        this.f13426c = r13 + 1;
        r03[r13] = 3;
        this.f13424a.write("{");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f13424a.close();
        int r02 = this.f13426c;
        if (r02 > 1 || (r02 == 1 && this.f13425b[r02 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f13426c = 0;
    }

    public final void d(int r22, int r32, String str) throws IOException {
        int r02 = k();
        if (r02 != r32 && r02 != r22) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f13429g != null) {
            throw new IllegalStateException("Dangling name: " + this.f13429g);
        }
        this.f13426c--;
        if (r02 == r32) {
            i();
        }
        this.f13424a.write(str);
    }

    public void e() throws IOException {
        d(1, 2, "]");
    }

    public void f() throws IOException {
        d(3, 5, "}");
    }

    public void flush() throws IOException {
        if (this.f13426c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f13424a.flush();
    }

    public void g(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f13429g != null) {
            throw new IllegalStateException();
        }
        if (this.f13426c == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f13429g = str;
    }

    public final void i() throws IOException {
    }

    public b j() throws IOException {
        if (this.f13429g != null) {
            if (!this.f13430h) {
                this.f13429g = null;
                return this;
            }
            s();
        }
        a();
        this.f13424a.write("null");
        return this;
    }

    public final int k() {
        int r02 = this.f13426c;
        if (r02 != 0) {
            return this.f13425b[r02 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(java.lang.String r9) throws java.io.IOException {
        /*
            r8 = this;
            boolean r0 = r8.f
            if (r0 == 0) goto L7
            java.lang.String[] r0 = q7.b.f13423k
            goto L9
        L7:
            java.lang.String[] r0 = q7.b.f13422j
        L9:
            java.io.Writer r1 = r8.f13424a
            java.lang.String r2 = "\""
            r1.write(r2)
            int r3 = r9.length()
            r4 = 0
            r5 = 0
        L16:
            if (r4 >= r3) goto L41
            char r6 = r9.charAt(r4)
            r7 = 128(0x80, float:1.8E-43)
            if (r6 >= r7) goto L25
            r6 = r0[r6]
            if (r6 != 0) goto L32
            goto L3e
        L25:
            r7 = 8232(0x2028, float:1.1535E-41)
            if (r6 != r7) goto L2c
            java.lang.String r6 = "\\u2028"
            goto L32
        L2c:
            r7 = 8233(0x2029, float:1.1537E-41)
            if (r6 != r7) goto L3e
            java.lang.String r6 = "\\u2029"
        L32:
            if (r5 >= r4) goto L39
            int r7 = r4 - r5
            r1.write(r9, r5, r7)
        L39:
            r1.write(r6)
            int r5 = r4 + 1
        L3e:
            int r4 = r4 + 1
            goto L16
        L41:
            if (r5 >= r3) goto L47
            int r3 = r3 - r5
            r1.write(r9, r5, r3)
        L47:
            r1.write(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: q7.b.m(java.lang.String):void");
    }

    public void n(long j10) throws IOException {
        s();
        a();
        this.f13424a.write(Long.toString(j10));
    }

    public void o(Boolean bool) throws IOException {
        if (bool == null) {
            j();
            return;
        }
        s();
        a();
        this.f13424a.write(bool.booleanValue() ? "true" : "false");
    }

    public void p(Number number) throws IOException {
        if (number == null) {
            j();
            return;
        }
        s();
        String string = number.toString();
        if (this.f13428e || !(string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            a();
            this.f13424a.append((CharSequence) string);
        } else {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
    }

    public void q(String str) throws IOException {
        if (str == null) {
            j();
            return;
        }
        s();
        a();
        m(str);
    }

    public void r(boolean z10) throws IOException {
        s();
        a();
        this.f13424a.write(z10 ? "true" : "false");
    }

    public final void s() throws IOException {
        if (this.f13429g != null) {
            int r02 = k();
            if (r02 == 5) {
                this.f13424a.write(44);
            } else if (r02 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            i();
            this.f13425b[this.f13426c - 1] = 4;
            m(this.f13429g);
            this.f13429g = null;
        }
    }
}
