package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class p0 implements Serializable, Iterable<Byte> {

    /* renamed from: b, reason: collision with root package name */
    public static final s0 f4044b = new s0(m1.f4036b);

    /* renamed from: c, reason: collision with root package name */
    public static final r0 f4045c;

    /* renamed from: a, reason: collision with root package name */
    public int f4046a = 0;

    static {
        Object obj = null;
        f4045c = i0.a() ? new com.google.android.gms.internal.clearcut.z(obj) : new com.google.android.gms.internal.clearcut.d0(obj);
    }

    public static s0 o(byte[] bArr, int r32, int r42) {
        z(r32, r32 + r42, bArr.length);
        return new s0(f4045c.b(bArr, r32, r42));
    }

    public static int z(int r32, int r42, int r52) {
        int r02 = r42 - r32;
        if ((r32 | r42 | r02 | (r52 - r42)) >= 0) {
            return r02;
        }
        if (r32 >= 0) {
            if (r42 < r32) {
                throw new IndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.e(66, "Beginning index larger than ending index: ", r32, ", ", r42));
            }
            throw new IndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.e(37, "End index: ", r42, " >= ", r52));
        }
        StringBuilder sb2 = new StringBuilder(32);
        sb2.append("Beginning index: ");
        sb2.append(r32);
        sb2.append(" < 0");
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public abstract boolean c();

    public abstract boolean equals(Object obj);

    public abstract byte h(int r12);

    public final int hashCode() {
        int r02 = this.f4046a;
        if (r02 == 0) {
            int r03 = x();
            r02 = l(r03, r03);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f4046a = r02;
        }
        return r02;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new o0(this);
    }

    public abstract int l(int r12, int r22);

    public abstract s0 m();

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(x());
        objArr[2] = x() <= 50 ? x5.a.w(this) : String.valueOf(x5.a.w(m())).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract String u(Charset charset);

    public abstract void w(m0 m0Var) throws IOException;

    public abstract int x();

    public abstract byte y(int r12);
}
