package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class x implements Serializable, Iterable<Byte> {

    /* renamed from: b, reason: collision with root package name */
    public static final c0 f3341b = new c0(x0.f3345b);

    /* renamed from: c, reason: collision with root package name */
    public static final a0 f3342c;

    /* renamed from: a, reason: collision with root package name */
    public int f3343a = 0;

    static {
        int r12 = 0;
        f3342c = r.a() ? new b0.a(r12) : new z(r12);
    }

    public static c0 u(byte[] bArr, int r32, int r42) {
        return new c0(f3342c.a(bArr, r32, r42));
    }

    public abstract boolean equals(Object obj);

    public abstract int h(int r12, int r22);

    public final int hashCode() {
        int r02 = this.f3343a;
        if (r02 == 0) {
            int size = size();
            r02 = h(size, size);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f3343a = r02;
        }
        return r02;
    }

    @Override // java.lang.Iterable
    public final /* synthetic */ Iterator<Byte> iterator() {
        return new y(this);
    }

    public abstract String l(Charset charset);

    public abstract void m(w wVar) throws IOException;

    public abstract boolean o();

    public abstract int size();

    public final String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    public abstract byte w(int r12);
}
