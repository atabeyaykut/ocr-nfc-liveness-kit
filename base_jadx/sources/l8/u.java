package l8;

import ed.x;
import java.io.Closeable;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class u implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public int f9510a;

    /* renamed from: b, reason: collision with root package name */
    public int[] f9511b;

    /* renamed from: c, reason: collision with root package name */
    public String[] f9512c;

    /* renamed from: d, reason: collision with root package name */
    public int[] f9513d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f9514e;
    public boolean f;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final String[] f9515a;

        /* renamed from: b, reason: collision with root package name */
        public final ed.x f9516b;

        public a(String[] strArr, ed.x xVar) {
            this.f9515a = strArr;
            this.f9516b = xVar;
        }

        public static a a(String... strArr) {
            try {
                ed.h[] hVarArr = new ed.h[strArr.length];
                ed.e eVar = new ed.e();
                for (int r22 = 0; r22 < strArr.length; r22++) {
                    w.v(eVar, strArr[r22]);
                    eVar.readByte();
                    hVarArr[r22] = eVar.n();
                }
                return new a((String[]) strArr.clone(), x.a.b(hVarArr));
            } catch (IOException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public enum b {
        BEGIN_ARRAY,
        END_ARRAY,
        BEGIN_OBJECT,
        END_OBJECT,
        NAME,
        STRING,
        NUMBER,
        BOOLEAN,
        NULL,
        END_DOCUMENT
    }

    public u() {
        this.f9511b = new int[32];
        this.f9512c = new String[32];
        this.f9513d = new int[32];
    }

    public u(u uVar) {
        this.f9510a = uVar.f9510a;
        this.f9511b = (int[]) uVar.f9511b.clone();
        this.f9512c = (String[]) uVar.f9512c.clone();
        this.f9513d = (int[]) uVar.f9513d.clone();
        this.f9514e = uVar.f9514e;
        this.f = uVar.f;
    }

    public abstract void a() throws IOException;

    public abstract void b() throws IOException;

    public abstract void c() throws IOException;

    public abstract void d() throws IOException;

    public abstract boolean e() throws IOException;

    public abstract double f() throws IOException;

    public abstract int g() throws IOException;

    public final String getPath() {
        return c5.w.s(this.f9510a, this.f9511b, this.f9512c, this.f9513d);
    }

    public abstract void i() throws IOException;

    public abstract String j() throws IOException;

    public abstract b k() throws IOException;

    public final void m(int r42) {
        int r02 = this.f9510a;
        int[] r12 = this.f9511b;
        if (r02 == r12.length) {
            if (r02 == 256) {
                throw new r("Nesting too deep at " + getPath());
            }
            this.f9511b = Arrays.copyOf(r12, r12.length * 2);
            String[] strArr = this.f9512c;
            this.f9512c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
            int[] r03 = this.f9513d;
            this.f9513d = Arrays.copyOf(r03, r03.length * 2);
        }
        int[] r04 = this.f9511b;
        int r13 = this.f9510a;
        this.f9510a = r13 + 1;
        r04[r13] = r42;
    }

    public abstract int n(a aVar) throws IOException;

    public abstract void o() throws IOException;

    public abstract void p() throws IOException;

    public final void q(String str) throws s {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " at path ");
        sbI.append(getPath());
        throw new s(sbI.toString());
    }
}
