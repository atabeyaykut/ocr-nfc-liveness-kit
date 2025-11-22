package l8;

import java.io.IOException;

/* loaded from: classes2.dex */
public final class w extends y {

    /* renamed from: l, reason: collision with root package name */
    public static final String[] f9538l = new String[128];

    /* renamed from: j, reason: collision with root package name */
    public final ed.f f9539j;

    /* renamed from: k, reason: collision with root package name */
    public String f9540k;

    static {
        for (int r12 = 0; r12 <= 31; r12++) {
            f9538l[r12] = String.format("\\u%04x", Integer.valueOf(r12));
        }
        String[] strArr = f9538l;
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
    }

    public w(ed.e eVar) {
        this.f9539j = eVar;
        j(6);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void v(ed.f r7, java.lang.String r8) throws java.io.IOException {
        /*
            java.lang.String[] r0 = l8.w.f9538l
            r1 = 34
            r7.writeByte(r1)
            int r2 = r8.length()
            r3 = 0
            r4 = 0
        Ld:
            if (r3 >= r2) goto L36
            char r5 = r8.charAt(r3)
            r6 = 128(0x80, float:1.8E-43)
            if (r5 >= r6) goto L1c
            r5 = r0[r5]
            if (r5 != 0) goto L29
            goto L33
        L1c:
            r6 = 8232(0x2028, float:1.1535E-41)
            if (r5 != r6) goto L23
            java.lang.String r5 = "\\u2028"
            goto L29
        L23:
            r6 = 8233(0x2029, float:1.1537E-41)
            if (r5 != r6) goto L33
            java.lang.String r5 = "\\u2029"
        L29:
            if (r4 >= r3) goto L2e
            r7.X(r4, r3, r8)
        L2e:
            r7.S(r5)
            int r4 = r3 + 1
        L33:
            int r3 = r3 + 1
            goto Ld
        L36:
            if (r4 >= r2) goto L3b
            r7.X(r4, r2, r8)
        L3b:
            r7.writeByte(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: l8.w.v(ed.f, java.lang.String):void");
    }

    @Override // l8.y
    public final y a() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
        }
        y();
        t(1, 2, "[");
        return this;
    }

    @Override // l8.y
    public final y b() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
        }
        y();
        t(3, 5, "{");
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f9539j.close();
        int r02 = this.f9543a;
        if (r02 > 1 || (r02 == 1 && this.f9544b[r02 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f9543a = 0;
    }

    @Override // l8.y
    public final y d() throws IOException {
        s(1, 2, "]");
        return this;
    }

    @Override // l8.y
    public final y e() throws IOException {
        this.f9548g = false;
        s(3, 5, "}");
        return this;
    }

    @Override // l8.y
    public final y f(String str) throws IOException {
        if (str == null) {
            throw new NullPointerException("name == null");
        }
        if (this.f9543a == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        int i10 = i();
        if ((i10 != 3 && i10 != 5) || this.f9540k != null) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.f9540k = str;
        this.f9545c[this.f9543a - 1] = str;
        this.f9548g = false;
        return this;
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.f9543a == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
        this.f9539j.flush();
    }

    @Override // l8.y
    public final y g() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
        }
        if (this.f9540k != null) {
            if (!this.f) {
                this.f9540k = null;
                return this;
            }
            y();
        }
        r();
        this.f9539j.S("null");
        int[] r02 = this.f9546d;
        int r12 = this.f9543a - 1;
        r02[r12] = r02[r12] + 1;
        return this;
    }

    @Override // l8.y
    public final y m(double d10) throws IOException {
        if (!this.f9547e && (Double.isNaN(d10) || Double.isInfinite(d10))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
        if (this.f9548g) {
            f(Double.toString(d10));
            return this;
        }
        y();
        r();
        this.f9539j.S(Double.toString(d10));
        int[] r42 = this.f9546d;
        int r52 = this.f9543a - 1;
        r42[r52] = r42[r52] + 1;
        return this;
    }

    @Override // l8.y
    public final y n(long j10) throws IOException {
        if (this.f9548g) {
            f(Long.toString(j10));
            return this;
        }
        y();
        r();
        this.f9539j.S(Long.toString(j10));
        int[] r22 = this.f9546d;
        int r32 = this.f9543a - 1;
        r22[r32] = r22[r32] + 1;
        return this;
    }

    @Override // l8.y
    public final y o(Number number) throws IOException {
        if (number == null) {
            g();
            return this;
        }
        String string = number.toString();
        if (!this.f9547e && (string.equals("-Infinity") || string.equals("Infinity") || string.equals("NaN"))) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + number);
        }
        if (this.f9548g) {
            f(string);
            return this;
        }
        y();
        r();
        this.f9539j.S(string);
        int[] r42 = this.f9546d;
        int r02 = this.f9543a - 1;
        r42[r02] = r42[r02] + 1;
        return this;
    }

    @Override // l8.y
    public final y p(String str) throws IOException {
        if (str == null) {
            g();
            return this;
        }
        if (this.f9548g) {
            f(str);
            return this;
        }
        y();
        r();
        v(this.f9539j, str);
        int[] r32 = this.f9546d;
        int r02 = this.f9543a - 1;
        r32[r02] = r32[r02] + 1;
        return this;
    }

    @Override // l8.y
    public final y q(boolean z10) throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("Boolean cannot be used as a map key in JSON at path " + getPath());
        }
        y();
        r();
        this.f9539j.S(z10 ? "true" : "false");
        int[] r32 = this.f9546d;
        int r02 = this.f9543a - 1;
        r32[r02] = r32[r02] + 1;
        return this;
    }

    public final void r() throws IOException {
        int i10 = i();
        int r22 = 2;
        if (i10 != 1) {
            ed.f fVar = this.f9539j;
            if (i10 == 2) {
                fVar.writeByte(44);
                return;
            }
            if (i10 == 4) {
                fVar.S(":");
                k(5);
                return;
            }
            r22 = 7;
            if (i10 != 6) {
                if (i10 != 7) {
                    throw new IllegalStateException("Nesting problem.");
                }
                if (!this.f9547e) {
                    throw new IllegalStateException("JSON must have only one top-level value.");
                }
            }
        }
        k(r22);
    }

    public final void s(int r22, int r32, String str) throws IOException {
        int i10 = i();
        if (i10 != r32 && i10 != r22) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f9540k != null) {
            throw new IllegalStateException("Dangling name: " + this.f9540k);
        }
        int r23 = this.f9543a;
        int r33 = ~this.f9549h;
        if (r23 == r33) {
            this.f9549h = r33;
            return;
        }
        int r24 = r23 - 1;
        this.f9543a = r24;
        this.f9545c[r24] = null;
        int[] r34 = this.f9546d;
        int r25 = r24 - 1;
        r34[r25] = r34[r25] + 1;
        this.f9539j.S(str);
    }

    public final void t(int r42, int r52, String str) throws IOException {
        int r02;
        int r03 = this.f9543a;
        int r12 = this.f9549h;
        if (r03 == r12 && ((r02 = this.f9544b[r03 - 1]) == r42 || r02 == r52)) {
            this.f9549h = ~r12;
            return;
        }
        r();
        c();
        j(r42);
        this.f9546d[this.f9543a - 1] = 0;
        this.f9539j.S(str);
    }

    public final void y() throws IOException {
        if (this.f9540k != null) {
            int i10 = i();
            ed.f fVar = this.f9539j;
            if (i10 == 5) {
                fVar.writeByte(44);
            } else if (i10 != 3) {
                throw new IllegalStateException("Nesting problem.");
            }
            k(4);
            v(fVar, this.f9540k);
            this.f9540k = null;
        }
    }
}
