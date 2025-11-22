package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.j;
import java.io.IOException;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Locale;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class i implements Iterable<Byte>, Serializable {

    /* renamed from: b, reason: collision with root package name */
    public static final f f4287b = new f(z.f4406b);

    /* renamed from: c, reason: collision with root package name */
    public static final d f4288c;

    /* renamed from: a, reason: collision with root package name */
    public int f4289a = 0;

    public static abstract class a implements Iterator {
        @Override // java.util.Iterator
        public final Object next() {
            h hVar = (h) this;
            int r12 = hVar.f4266a;
            if (r12 >= hVar.f4267b) {
                throw new NoSuchElementException();
            }
            hVar.f4266a = r12 + 1;
            return Byte.valueOf(hVar.f4268c.u(r12));
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public static final class b implements d {
        @Override // com.google.crypto.tink.shaded.protobuf.i.d
        public final byte[] a(byte[] bArr, int r22, int r32) {
            return Arrays.copyOfRange(bArr, r22, r32 + r22);
        }
    }

    public static final class c extends f {

        /* renamed from: e, reason: collision with root package name */
        public final int f4290e;
        public final int f;

        public c(byte[] bArr, int r32, int r42) {
            super(bArr);
            i.l(r32, r32 + r42, bArr.length);
            this.f4290e = r32;
            this.f = r42;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i.f
        public final int E() {
            return this.f4290e;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i.f, com.google.crypto.tink.shaded.protobuf.i
        public final byte h(int r52) {
            int r12 = this.f;
            if (((r12 - (r52 + 1)) | r52) >= 0) {
                return this.f4291d[this.f4290e + r52];
            }
            if (r52 < 0) {
                throw new ArrayIndexOutOfBoundsException(android.support.v4.media.a.d("Index < 0: ", r52));
            }
            throw new ArrayIndexOutOfBoundsException(androidx.constraintlayout.core.a.c("Index > length: ", r52, ", ", r12));
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i.f, com.google.crypto.tink.shaded.protobuf.i
        public final void o(byte[] bArr, int r52) {
            System.arraycopy(this.f4291d, this.f4290e + 0, bArr, 0, r52);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i.f, com.google.crypto.tink.shaded.protobuf.i
        public final int size() {
            return this.f;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i.f, com.google.crypto.tink.shaded.protobuf.i
        public final byte u(int r22) {
            return this.f4291d[this.f4290e + r22];
        }
    }

    public interface d {
        byte[] a(byte[] bArr, int r22, int r32);
    }

    public static abstract class e extends i {
    }

    public static class f extends e {

        /* renamed from: d, reason: collision with root package name */
        public final byte[] f4291d;

        public f(byte[] bArr) {
            bArr.getClass();
            this.f4291d = bArr;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final String C(Charset charset) {
            return new String(this.f4291d, E(), size(), charset);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final void D(com.google.crypto.tink.shaded.protobuf.g gVar) throws IOException {
            gVar.a(this.f4291d, E(), size());
        }

        public int E() {
            return 0;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof i) || size() != ((i) obj).size()) {
                return false;
            }
            if (size() == 0) {
                return true;
            }
            if (!(obj instanceof f)) {
                return obj.equals(this);
            }
            f fVar = (f) obj;
            int r12 = this.f4289a;
            int r32 = fVar.f4289a;
            if (r12 != 0 && r32 != 0 && r12 != r32) {
                return false;
            }
            int size = size();
            if (size > fVar.size()) {
                throw new IllegalArgumentException("Length too large: " + size + size());
            }
            if (0 + size > fVar.size()) {
                StringBuilder sbE = androidx.appcompat.widget.v.e("Ran off end of other: 0, ", size, ", ");
                sbE.append(fVar.size());
                throw new IllegalArgumentException(sbE.toString());
            }
            int r33 = E() + size;
            int r13 = E();
            int r42 = fVar.E() + 0;
            while (r13 < r33) {
                if (this.f4291d[r13] != fVar.f4291d[r42]) {
                    return false;
                }
                r13++;
                r42++;
            }
            return true;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public byte h(int r22) {
            return this.f4291d[r22];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public void o(byte[] bArr, int r42) {
            System.arraycopy(this.f4291d, 0, bArr, 0, r42);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public int size() {
            return this.f4291d.length;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public byte u(int r22) {
            return this.f4291d[r22];
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final boolean w() {
            int r02 = E();
            return o1.d(this.f4291d, r02, size() + r02);
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final j.a x() {
            int r02 = E();
            int size = size();
            j.a aVar = new j.a(this.f4291d, r02, size, true);
            try {
                aVar.g(size);
                return aVar;
            } catch (a0 e10) {
                throw new IllegalArgumentException(e10);
            }
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final int y(int r42, int r52) {
            int r02 = E() + 0;
            Charset charset = z.f4405a;
            for (int r12 = r02; r12 < r02 + r52; r12++) {
                r42 = (r42 * 31) + this.f4291d[r12];
            }
            return r42;
        }

        @Override // com.google.crypto.tink.shaded.protobuf.i
        public final f z(int r42) {
            int r43 = i.l(0, r42, size());
            if (r43 == 0) {
                return i.f4287b;
            }
            return new c(this.f4291d, E() + 0, r43);
        }
    }

    public static final class g implements d {
        @Override // com.google.crypto.tink.shaded.protobuf.i.d
        public final byte[] a(byte[] bArr, int r42, int r52) {
            byte[] bArr2 = new byte[r52];
            System.arraycopy(bArr, r42, bArr2, 0, r52);
            return bArr2;
        }
    }

    static {
        f4288c = com.google.crypto.tink.shaded.protobuf.d.a() ? new g() : new b();
    }

    public static int l(int r32, int r42, int r52) {
        int r02 = r42 - r32;
        if ((r32 | r42 | r02 | (r52 - r42)) >= 0) {
            return r02;
        }
        if (r32 < 0) {
            throw new IndexOutOfBoundsException(androidx.appcompat.graphics.drawable.a.f("Beginning index: ", r32, " < 0"));
        }
        if (r42 < r32) {
            throw new IndexOutOfBoundsException(androidx.constraintlayout.core.a.c("Beginning index larger than ending index: ", r32, ", ", r42));
        }
        throw new IndexOutOfBoundsException(androidx.constraintlayout.core.a.c("End index: ", r42, " >= ", r52));
    }

    public static f m(byte[] bArr, int r32, int r42) {
        l(r32, r32 + r42, bArr.length);
        return new f(f4288c.a(bArr, r32, r42));
    }

    public final byte[] A() {
        int size = size();
        if (size == 0) {
            return z.f4406b;
        }
        byte[] bArr = new byte[size];
        o(bArr, size);
        return bArr;
    }

    public abstract String C(Charset charset);

    public abstract void D(com.google.crypto.tink.shaded.protobuf.g gVar) throws IOException;

    public abstract boolean equals(Object obj);

    public abstract byte h(int r12);

    public final int hashCode() {
        int r02 = this.f4289a;
        if (r02 == 0) {
            int size = size();
            r02 = y(size, size);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f4289a = r02;
        }
        return r02;
    }

    @Override // java.lang.Iterable
    public final Iterator<Byte> iterator() {
        return new h(this);
    }

    public abstract void o(byte[] bArr, int r22);

    public abstract int size();

    public final String toString() {
        String strK;
        Locale locale = Locale.ROOT;
        Object[] objArr = new Object[3];
        objArr[0] = Integer.toHexString(System.identityHashCode(this));
        objArr[1] = Integer.valueOf(size());
        if (size() <= 50) {
            strK = a0.b.k(this);
        } else {
            strK = a0.b.k(z(47)) + "...";
        }
        objArr[2] = strK;
        return String.format(locale, "<ByteString@%s size=%d contents=\"%s\">", objArr);
    }

    public abstract byte u(int r12);

    public abstract boolean w();

    public abstract j.a x();

    public abstract int y(int r12, int r22);

    public abstract f z(int r12);
}
