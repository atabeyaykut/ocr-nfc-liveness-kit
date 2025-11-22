package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;
import java.util.Locale;

/* loaded from: classes.dex */
public abstract class v5 implements Iterable<Byte>, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final u5 f3791b = new u5(x6.f3836b);

    /* renamed from: a, reason: collision with root package name */
    public int f3792a = 0;

    static {
        int r02 = n5.f3640a;
    }

    public static u5 A(byte[] bArr, int r42, int r52) {
        z(r42, r42 + r52, bArr.length);
        byte[] bArr2 = new byte[r52];
        System.arraycopy(bArr, r42, bArr2, 0, r52);
        return new u5(bArr2);
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

    public abstract boolean equals(Object obj);

    public abstract byte h(int r12);

    public final int hashCode() {
        int r02 = this.f3792a;
        if (r02 == 0) {
            int r03 = m();
            r02 = o(r03, r03);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f3792a = r02;
        }
        return r02;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new r5(this);
    }

    public abstract byte l(int r12);

    public abstract int m();

    public abstract int o(int r12, int r22);

    public final String toString() {
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(m());
        objArr[2] = m() <= 50 ? c5.w.L(this) : c5.w.L(u()).concat("...");
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract u5 u();

    public abstract String w(Charset charset);

    public abstract void x(z5 z5Var) throws IOException;

    public abstract boolean y();
}
