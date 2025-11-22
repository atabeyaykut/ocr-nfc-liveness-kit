package mb;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.NoSuchElementException;
import mb.c;

/* loaded from: classes2.dex */
public class o extends c {

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f10305b;

    /* renamed from: c, reason: collision with root package name */
    public int f10306c = 0;

    public class a implements c.a {

        /* renamed from: a, reason: collision with root package name */
        public int f10307a = 0;

        /* renamed from: b, reason: collision with root package name */
        public final int f10308b;

        public a() {
            this.f10308b = o.this.f10305b.length;
        }

        public final byte a() {
            try {
                byte[] bArr = o.this.f10305b;
                int r12 = this.f10307a;
                this.f10307a = r12 + 1;
                return bArr[r12];
            } catch (ArrayIndexOutOfBoundsException e10) {
                throw new NoSuchElementException(e10.getMessage());
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10307a < this.f10308b;
        }

        @Override // java.util.Iterator
        public final Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public o(byte[] bArr) {
        this.f10305b = bArr;
    }

    @Override // mb.c
    public final int A(int r32, int r42, int r52) {
        int I = I() + r42;
        for (int r43 = I; r43 < I + r52; r43++) {
            r32 = (r32 * 31) + this.f10305b[r43];
        }
        return r32;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x001b, code lost:
    
        if (r1[r11] > (-65)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0051, code lost:
    
        if (r1[r11] <= (-65)) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0095, code lost:
    
        if (r1[r11] > (-65)) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0098, code lost:
    
        r11 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0086  */
    @Override // mb.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int C(int r10, int r11, int r12) {
        /*
            r9 = this;
            r0 = 0
            int r11 = r11 + r0
            int r12 = r12 + r11
            byte[] r1 = r9.f10305b
            if (r10 == 0) goto L9c
            if (r11 < r12) goto Lb
            goto La0
        Lb:
            byte r2 = (byte) r10
            r3 = -1
            r4 = -65
            r5 = -32
            if (r2 >= r5) goto L1f
            r10 = -62
            if (r2 < r10) goto L9a
            int r10 = r11 + 1
            r11 = r1[r11]
            if (r11 <= r4) goto L98
            goto L9a
        L1f:
            r6 = -16
            r7 = -12
            if (r2 >= r6) goto L54
            int r10 = r10 >> 8
            int r10 = ~r10
            byte r10 = (byte) r10
            if (r10 != 0) goto L3f
            int r10 = r11 + 1
            r11 = r1[r11]
            if (r10 < r12) goto L3c
            if (r2 > r7) goto L9a
            if (r11 <= r4) goto L37
            goto L9a
        L37:
            int r10 = r11 << 8
        L39:
            r10 = r10 ^ r2
            goto La0
        L3c:
            r8 = r11
            r11 = r10
            r10 = r8
        L3f:
            if (r10 > r4) goto L9a
            r0 = -96
            if (r2 != r5) goto L47
            if (r10 < r0) goto L9a
        L47:
            r5 = -19
            if (r2 != r5) goto L4d
            if (r10 >= r0) goto L9a
        L4d:
            int r10 = r11 + 1
            r11 = r1[r11]
            if (r11 <= r4) goto L98
            goto L9a
        L54:
            int r5 = r10 >> 8
            int r5 = ~r5
            byte r5 = (byte) r5
            if (r5 != 0) goto L6a
            int r10 = r11 + 1
            r5 = r1[r11]
            if (r10 < r12) goto L68
            if (r2 > r7) goto L9a
            if (r5 <= r4) goto L65
            goto L9a
        L65:
            int r10 = r5 << 8
            goto L39
        L68:
            r11 = r10
            goto L6d
        L6a:
            int r10 = r10 >> 16
            byte r0 = (byte) r10
        L6d:
            if (r0 != 0) goto L84
            int r10 = r11 + 1
            r0 = r1[r11]
            if (r10 < r12) goto L83
            if (r2 > r7) goto L9a
            if (r5 > r4) goto L9a
            if (r0 <= r4) goto L7c
            goto L9a
        L7c:
            int r10 = r5 << 8
            r10 = r10 ^ r2
            int r11 = r0 << 16
            r10 = r10 ^ r11
            goto La0
        L83:
            r11 = r10
        L84:
            if (r5 > r4) goto L9a
            int r10 = r2 << 28
            int r5 = r5 + 112
            int r5 = r5 + r10
            int r10 = r5 >> 30
            if (r10 != 0) goto L9a
            if (r0 > r4) goto L9a
            int r10 = r11 + 1
            r11 = r1[r11]
            if (r11 <= r4) goto L98
            goto L9a
        L98:
            r11 = r10
            goto L9c
        L9a:
            r10 = -1
            goto La0
        L9c:
            int r10 = b8.f.a0(r1, r11, r12)
        La0:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: mb.o.C(int, int, int):int");
    }

    @Override // mb.c
    public final int D() {
        return this.f10306c;
    }

    @Override // mb.c
    public final String E() throws UnsupportedEncodingException {
        byte[] bArr = this.f10305b;
        return new String(bArr, 0, bArr.length, "UTF-8");
    }

    @Override // mb.c
    public final void G(OutputStream outputStream, int r32, int r42) throws IOException {
        outputStream.write(this.f10305b, I() + r32, r42);
    }

    public final boolean H(o oVar, int r52, int r6) {
        if (r6 > oVar.size()) {
            int size = size();
            StringBuilder sb2 = new StringBuilder(40);
            sb2.append("Length too large: ");
            sb2.append(r6);
            sb2.append(size);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (r52 + r6 <= oVar.size()) {
            int I = I() + r6;
            int I2 = I();
            int I3 = oVar.I() + r52;
            while (I2 < I) {
                if (this.f10305b[I2] != oVar.f10305b[I3]) {
                    return false;
                }
                I2++;
                I3++;
            }
            return true;
        }
        int size2 = oVar.size();
        StringBuilder sb3 = new StringBuilder(59);
        sb3.append("Ran off end of other: ");
        sb3.append(r52);
        sb3.append(", ");
        sb3.append(r6);
        sb3.append(", ");
        sb3.append(size2);
        throw new IllegalArgumentException(sb3.toString());
    }

    public int I() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c) || size() != ((c) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof o) {
            return H((o) obj, 0, size());
        }
        if (obj instanceof s) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(obj.getClass());
        throw new IllegalArgumentException(androidx.camera.camera2.internal.c.h(new StringBuilder(strValueOf.length() + 49), "Has a new type of ByteString been created? Found ", strValueOf));
    }

    public final int hashCode() {
        int r02 = this.f10306c;
        if (r02 == 0) {
            int size = size();
            r02 = A(size, 0, size);
            if (r02 == 0) {
                r02 = 1;
            }
            this.f10306c = r02;
        }
        return r02;
    }

    @Override // mb.c
    public void o(int r22, int r32, byte[] bArr, int r52) {
        System.arraycopy(this.f10305b, r22, bArr, r32, r52);
    }

    @Override // mb.c
    public int size() {
        return this.f10305b.length;
    }

    @Override // mb.c
    public final int u() {
        return 0;
    }

    @Override // mb.c
    public final boolean w() {
        return true;
    }

    @Override // mb.c
    public final boolean x() {
        byte[] bArr = this.f10305b;
        return b8.f.a0(bArr, 0, bArr.length + 0) == 0;
    }

    @Override // mb.c, java.lang.Iterable
    /* renamed from: y */
    public c.a iterator() {
        return new a();
    }
}
