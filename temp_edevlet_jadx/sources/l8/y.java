package l8;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public abstract class y implements Closeable, Flushable {

    /* renamed from: e, reason: collision with root package name */
    public boolean f9547e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f9548g;

    /* renamed from: a, reason: collision with root package name */
    public int f9543a = 0;

    /* renamed from: b, reason: collision with root package name */
    public int[] f9544b = new int[32];

    /* renamed from: c, reason: collision with root package name */
    public String[] f9545c = new String[32];

    /* renamed from: d, reason: collision with root package name */
    public int[] f9546d = new int[32];

    /* renamed from: h, reason: collision with root package name */
    public int f9549h = -1;

    public abstract y a() throws IOException;

    public abstract y b() throws IOException;

    public final void c() {
        int r02 = this.f9543a;
        int[] r12 = this.f9544b;
        if (r02 != r12.length) {
            return;
        }
        if (r02 == 256) {
            throw new r("Nesting too deep at " + getPath() + ": circular reference?");
        }
        this.f9544b = Arrays.copyOf(r12, r12.length * 2);
        String[] strArr = this.f9545c;
        this.f9545c = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        int[] r03 = this.f9546d;
        this.f9546d = Arrays.copyOf(r03, r03.length * 2);
        if (this instanceof x) {
            x xVar = (x) this;
            Object[] objArr = xVar.f9541j;
            xVar.f9541j = Arrays.copyOf(objArr, objArr.length * 2);
        }
    }

    public abstract y d() throws IOException;

    public abstract y e() throws IOException;

    public abstract y f(String str) throws IOException;

    public abstract y g() throws IOException;

    public final String getPath() {
        return c5.w.s(this.f9543a, this.f9544b, this.f9545c, this.f9546d);
    }

    public final int i() {
        int r02 = this.f9543a;
        if (r02 != 0) {
            return this.f9544b[r02 - 1];
        }
        throw new IllegalStateException("JsonWriter is closed.");
    }

    public final void j(int r42) {
        int[] r02 = this.f9544b;
        int r12 = this.f9543a;
        this.f9543a = r12 + 1;
        r02[r12] = r42;
    }

    public final void k(int r32) {
        this.f9544b[this.f9543a - 1] = r32;
    }

    public abstract y m(double d10) throws IOException;

    public abstract y n(long j10) throws IOException;

    public abstract y o(Number number) throws IOException;

    public abstract y p(String str) throws IOException;

    public abstract y q(boolean z10) throws IOException;
}
