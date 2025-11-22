package l8;

import java.io.IOException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class x extends y {

    /* renamed from: j, reason: collision with root package name */
    public Object[] f9541j = new Object[32];

    /* renamed from: k, reason: collision with root package name */
    public String f9542k;

    public x() {
        j(6);
    }

    @Override // l8.y
    public final y a() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("Array cannot be used as a map key in JSON at path " + getPath());
        }
        int r02 = this.f9543a;
        int r12 = this.f9549h;
        if (r02 == r12 && this.f9544b[r02 - 1] == 1) {
            this.f9549h = ~r12;
            return this;
        }
        c();
        ArrayList arrayList = new ArrayList();
        r(arrayList);
        Object[] objArr = this.f9541j;
        int r32 = this.f9543a;
        objArr[r32] = arrayList;
        this.f9546d[r32] = 0;
        j(1);
        return this;
    }

    @Override // l8.y
    public final y b() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("Object cannot be used as a map key in JSON at path " + getPath());
        }
        int r02 = this.f9543a;
        int r12 = this.f9549h;
        if (r02 == r12 && this.f9544b[r02 - 1] == 3) {
            this.f9549h = ~r12;
            return this;
        }
        c();
        z zVar = new z();
        r(zVar);
        this.f9541j[this.f9543a] = zVar;
        j(3);
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        int r02 = this.f9543a;
        if (r02 > 1 || (r02 == 1 && this.f9544b[r02 - 1] != 7)) {
            throw new IOException("Incomplete document");
        }
        this.f9543a = 0;
    }

    @Override // l8.y
    public final y d() throws IOException {
        if (i() != 1) {
            throw new IllegalStateException("Nesting problem.");
        }
        int r02 = this.f9543a;
        int r22 = this.f9549h;
        if (r02 == (~r22)) {
            this.f9549h = ~r22;
            return this;
        }
        int r03 = r02 - 1;
        this.f9543a = r03;
        this.f9541j[r03] = null;
        int[] r23 = this.f9546d;
        int r04 = r03 - 1;
        r23[r04] = r23[r04] + 1;
        return this;
    }

    @Override // l8.y
    public final y e() throws IOException {
        if (i() != 3) {
            throw new IllegalStateException("Nesting problem.");
        }
        if (this.f9542k != null) {
            throw new IllegalStateException("Dangling name: " + this.f9542k);
        }
        int r02 = this.f9543a;
        int r12 = this.f9549h;
        if (r02 == (~r12)) {
            this.f9549h = ~r12;
            return this;
        }
        this.f9548g = false;
        int r03 = r02 - 1;
        this.f9543a = r03;
        this.f9541j[r03] = null;
        this.f9545c[r03] = null;
        int[] r13 = this.f9546d;
        int r04 = r03 - 1;
        r13[r04] = r13[r04] + 1;
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
        if (i() != 3 || this.f9542k != null) {
            throw new IllegalStateException("Nesting problem.");
        }
        this.f9542k = str;
        this.f9545c[this.f9543a - 1] = str;
        this.f9548g = false;
        return this;
    }

    @Override // java.io.Flushable
    public final void flush() throws IOException {
        if (this.f9543a == 0) {
            throw new IllegalStateException("JsonWriter is closed.");
        }
    }

    @Override // l8.y
    public final y g() throws IOException {
        if (this.f9548g) {
            throw new IllegalStateException("null cannot be used as a map key in JSON at path " + getPath());
        }
        r(null);
        int[] r02 = this.f9546d;
        int r12 = this.f9543a - 1;
        r02[r12] = r02[r12] + 1;
        return this;
    }

    @Override // l8.y
    public final y m(double d10) throws IOException {
        if (!this.f9547e && (Double.isNaN(d10) || d10 == Double.NEGATIVE_INFINITY || d10 == Double.POSITIVE_INFINITY)) {
            throw new IllegalArgumentException("Numeric values must be finite, but was " + d10);
        }
        if (this.f9548g) {
            f(Double.toString(d10));
            return this;
        }
        r(Double.valueOf(d10));
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
        r(Long.valueOf(j10));
        int[] r22 = this.f9546d;
        int r32 = this.f9543a - 1;
        r22[r32] = r22[r32] + 1;
        return this;
    }

    @Override // l8.y
    public final y o(Number number) throws IOException {
        if ((number instanceof Byte) || (number instanceof Short) || (number instanceof Integer) || (number instanceof Long)) {
            n(number.longValue());
            return this;
        }
        if ((number instanceof Float) || (number instanceof Double)) {
            m(number.doubleValue());
            return this;
        }
        if (number == null) {
            g();
            return this;
        }
        BigDecimal bigDecimal = number instanceof BigDecimal ? (BigDecimal) number : new BigDecimal(number.toString());
        if (this.f9548g) {
            f(bigDecimal.toString());
            return this;
        }
        r(bigDecimal);
        int[] r32 = this.f9546d;
        int r02 = this.f9543a - 1;
        r32[r02] = r32[r02] + 1;
        return this;
    }

    @Override // l8.y
    public final y p(String str) throws IOException {
        if (this.f9548g) {
            f(str);
            return this;
        }
        r(str);
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
        r(Boolean.valueOf(z10));
        int[] r32 = this.f9546d;
        int r02 = this.f9543a - 1;
        r32[r02] = r32[r02] + 1;
        return this;
    }

    public final void r(Object obj) {
        String str;
        Object objPut;
        int i10 = i();
        int r12 = this.f9543a;
        if (r12 == 1) {
            if (i10 != 6) {
                throw new IllegalStateException("JSON must have only one top-level value.");
            }
            this.f9544b[r12 - 1] = 7;
            this.f9541j[r12 - 1] = obj;
            return;
        }
        if (i10 != 3 || (str = this.f9542k) == null) {
            if (i10 != 1) {
                throw new IllegalStateException("Nesting problem.");
            }
            ((List) this.f9541j[r12 - 1]).add(obj);
        } else {
            if ((obj == null && !this.f) || (objPut = ((Map) this.f9541j[r12 - 1]).put(str, obj)) == null) {
                this.f9542k = null;
                return;
            }
            throw new IllegalArgumentException("Map key '" + this.f9542k + "' has multiple values at path " + getPath() + ": " + objPut + " and " + obj);
        }
    }
}
