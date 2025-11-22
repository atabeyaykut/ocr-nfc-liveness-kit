package l7;

import java.math.BigDecimal;

/* loaded from: classes2.dex */
public final class h extends Number {

    /* renamed from: a, reason: collision with root package name */
    public final String f9421a;

    public h(String str) {
        this.f9421a = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f9421a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        Object obj2 = ((h) obj).f9421a;
        String str = this.f9421a;
        return str == obj2 || str.equals(obj2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f9421a);
    }

    public final int hashCode() {
        return this.f9421a.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        String str = this.f9421a;
        try {
            try {
                return Integer.parseInt(str);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(str);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(str).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        String str = this.f9421a;
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return new BigDecimal(str).longValue();
        }
    }

    public final String toString() {
        return this.f9421a;
    }
}
