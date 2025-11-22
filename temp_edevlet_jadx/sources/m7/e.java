package m7;

import java.io.IOException;
import java.io.Reader;
import java.util.Iterator;
import java.util.Map;
import l7.i;

/* loaded from: classes2.dex */
public final class e extends q7.a {

    /* renamed from: x, reason: collision with root package name */
    public static final Object f10056x;

    /* renamed from: s, reason: collision with root package name */
    public Object[] f10057s;

    /* renamed from: t, reason: collision with root package name */
    public int f10058t;

    /* renamed from: v, reason: collision with root package name */
    public String[] f10059v;
    public int[] w;

    public static class a extends Reader {
        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            throw new AssertionError();
        }

        @Override // java.io.Reader
        public final int read(char[] cArr, int r22, int r32) throws IOException {
            throw new AssertionError();
        }
    }

    static {
        new a();
        f10056x = new Object();
    }

    private String k() {
        return " at path " + getPath();
    }

    @Override // q7.a
    public final int B() throws IOException {
        if (this.f10058t == 0) {
            return 10;
        }
        Object objC0 = c0();
        if (objC0 instanceof Iterator) {
            boolean z10 = this.f10057s[this.f10058t - 2] instanceof j7.o;
            Iterator it = (Iterator) objC0;
            if (!it.hasNext()) {
                return z10 ? 4 : 2;
            }
            if (z10) {
                return 5;
            }
            e0(it.next());
            return B();
        }
        if (objC0 instanceof j7.o) {
            return 3;
        }
        if (objC0 instanceof j7.j) {
            return 1;
        }
        if (!(objC0 instanceof j7.q)) {
            if (objC0 instanceof j7.n) {
                return 9;
            }
            if (objC0 == f10056x) {
                throw new IllegalStateException("JsonReader is closed");
            }
            throw new AssertionError();
        }
        Object obj = ((j7.q) objC0).f8303a;
        if (obj instanceof String) {
            return 6;
        }
        if (obj instanceof Boolean) {
            return 8;
        }
        if (obj instanceof Number) {
            return 7;
        }
        throw new AssertionError();
    }

    @Override // q7.a
    public final void P() throws IOException {
        if (B() == 5) {
            q();
            this.f10059v[this.f10058t - 2] = "null";
        } else {
            d0();
            int r02 = this.f10058t;
            if (r02 > 0) {
                this.f10059v[r02 - 1] = "null";
            }
        }
        int r03 = this.f10058t;
        if (r03 > 0) {
            int[] r12 = this.w;
            int r04 = r03 - 1;
            r12[r04] = r12[r04] + 1;
        }
    }

    public final void Z(int r42) throws IOException {
        if (B() == r42) {
            return;
        }
        throw new IllegalStateException("Expected " + androidx.fragment.app.a.j(r42) + " but was " + androidx.fragment.app.a.j(B()) + k());
    }

    @Override // q7.a
    public final void a() throws IOException {
        Z(1);
        e0(((j7.j) c0()).iterator());
        this.w[this.f10058t - 1] = 0;
    }

    @Override // q7.a
    public final void b() throws IOException {
        Z(3);
        e0(new i.b.a((i.b) ((j7.o) c0()).f8301a.entrySet()));
    }

    public final Object c0() {
        return this.f10057s[this.f10058t - 1];
    }

    @Override // q7.a, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f10057s = new Object[]{f10056x};
        this.f10058t = 1;
    }

    public final Object d0() {
        Object[] objArr = this.f10057s;
        int r12 = this.f10058t - 1;
        this.f10058t = r12;
        Object obj = objArr[r12];
        objArr[r12] = null;
        return obj;
    }

    @Override // q7.a
    public final void e() throws IOException {
        Z(2);
        d0();
        d0();
        int r02 = this.f10058t;
        if (r02 > 0) {
            int[] r12 = this.w;
            int r03 = r02 - 1;
            r12[r03] = r12[r03] + 1;
        }
    }

    public final void e0(Object obj) {
        int r02 = this.f10058t;
        Object[] objArr = this.f10057s;
        if (r02 == objArr.length) {
            Object[] objArr2 = new Object[r02 * 2];
            int[] r32 = new int[r02 * 2];
            String[] strArr = new String[r02 * 2];
            System.arraycopy(objArr, 0, objArr2, 0, r02);
            System.arraycopy(this.w, 0, r32, 0, this.f10058t);
            System.arraycopy(this.f10059v, 0, strArr, 0, this.f10058t);
            this.f10057s = objArr2;
            this.w = r32;
            this.f10059v = strArr;
        }
        Object[] objArr3 = this.f10057s;
        int r12 = this.f10058t;
        this.f10058t = r12 + 1;
        objArr3[r12] = obj;
    }

    @Override // q7.a
    public final void f() throws IOException {
        Z(4);
        d0();
        d0();
        int r02 = this.f10058t;
        if (r02 > 0) {
            int[] r12 = this.w;
            int r03 = r02 - 1;
            r12[r03] = r12[r03] + 1;
        }
    }

    @Override // q7.a
    public final String getPath() {
        StringBuilder sb2 = new StringBuilder("$");
        int r12 = 0;
        while (r12 < this.f10058t) {
            Object[] objArr = this.f10057s;
            Object obj = objArr[r12];
            if (obj instanceof j7.j) {
                r12++;
                if (objArr[r12] instanceof Iterator) {
                    sb2.append('[');
                    sb2.append(this.w[r12]);
                    sb2.append(']');
                }
            } else if (obj instanceof j7.o) {
                r12++;
                if (objArr[r12] instanceof Iterator) {
                    sb2.append('.');
                    String str = this.f10059v[r12];
                    if (str != null) {
                        sb2.append(str);
                    }
                }
            }
            r12++;
        }
        return sb2.toString();
    }

    @Override // q7.a
    public final boolean i() throws IOException {
        int r02 = B();
        return (r02 == 4 || r02 == 2) ? false : true;
    }

    @Override // q7.a
    public final boolean m() throws IOException {
        Z(8);
        boolean zH = ((j7.q) d0()).h();
        int r12 = this.f10058t;
        if (r12 > 0) {
            int[] r22 = this.w;
            int r13 = r12 - 1;
            r22[r13] = r22[r13] + 1;
        }
        return zH;
    }

    @Override // q7.a
    public final double n() throws IOException {
        int r02 = B();
        if (r02 != 7 && r02 != 6) {
            throw new IllegalStateException("Expected " + androidx.fragment.app.a.j(7) + " but was " + androidx.fragment.app.a.j(r02) + k());
        }
        j7.q qVar = (j7.q) c0();
        double dDoubleValue = qVar.f8303a instanceof Number ? qVar.l().doubleValue() : Double.parseDouble(qVar.m());
        if (!this.f13409b && (Double.isNaN(dDoubleValue) || Double.isInfinite(dDoubleValue))) {
            throw new NumberFormatException("JSON forbids NaN and infinities: " + dDoubleValue);
        }
        d0();
        int r22 = this.f10058t;
        if (r22 > 0) {
            int[] r32 = this.w;
            int r23 = r22 - 1;
            r32[r23] = r32[r23] + 1;
        }
        return dDoubleValue;
    }

    @Override // q7.a
    public final int o() throws IOException {
        int r02 = B();
        if (r02 != 7 && r02 != 6) {
            throw new IllegalStateException("Expected " + androidx.fragment.app.a.j(7) + " but was " + androidx.fragment.app.a.j(r02) + k());
        }
        j7.q qVar = (j7.q) c0();
        int r03 = qVar.f8303a instanceof Number ? qVar.l().intValue() : Integer.parseInt(qVar.m());
        d0();
        int r12 = this.f10058t;
        if (r12 > 0) {
            int[] r22 = this.w;
            int r13 = r12 - 1;
            r22[r13] = r22[r13] + 1;
        }
        return r03;
    }

    @Override // q7.a
    public final long p() throws IOException {
        int r02 = B();
        if (r02 != 7 && r02 != 6) {
            throw new IllegalStateException("Expected " + androidx.fragment.app.a.j(7) + " but was " + androidx.fragment.app.a.j(r02) + k());
        }
        j7.q qVar = (j7.q) c0();
        long jLongValue = qVar.f8303a instanceof Number ? qVar.l().longValue() : Long.parseLong(qVar.m());
        d0();
        int r22 = this.f10058t;
        if (r22 > 0) {
            int[] r32 = this.w;
            int r23 = r22 - 1;
            r32[r23] = r32[r23] + 1;
        }
        return jLongValue;
    }

    @Override // q7.a
    public final String q() throws IOException {
        Z(5);
        Map.Entry entry = (Map.Entry) ((Iterator) c0()).next();
        String str = (String) entry.getKey();
        this.f10059v[this.f10058t - 1] = str;
        e0(entry.getValue());
        return str;
    }

    @Override // q7.a
    public final void s() throws IOException {
        Z(9);
        d0();
        int r02 = this.f10058t;
        if (r02 > 0) {
            int[] r12 = this.w;
            int r03 = r02 - 1;
            r12[r03] = r12[r03] + 1;
        }
    }

    @Override // q7.a
    public final String toString() {
        return e.class.getSimpleName();
    }

    @Override // q7.a
    public final String v() throws IOException {
        int r02 = B();
        if (r02 != 6 && r02 != 7) {
            throw new IllegalStateException("Expected " + androidx.fragment.app.a.j(6) + " but was " + androidx.fragment.app.a.j(r02) + k());
        }
        String strM = ((j7.q) d0()).m();
        int r12 = this.f10058t;
        if (r12 > 0) {
            int[] r22 = this.w;
            int r13 = r12 - 1;
            r22[r13] = r22[r13] + 1;
        }
        return strM;
    }
}
