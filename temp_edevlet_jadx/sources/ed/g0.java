package ed;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes2.dex */
public final class g0 extends h {

    /* renamed from: e, reason: collision with root package name */
    public final transient byte[][] f5314e;
    public final transient int[] f;

    public g0(byte[][] bArr, int[] r32) {
        super(h.f5315d.f5316a);
        this.f5314e = bArr;
        this.f = r32;
    }

    @Override // ed.h
    public final boolean A(int r82, int r92, byte[] other, int r11) {
        kotlin.jvm.internal.h.f(other, "other");
        if (r82 < 0 || r82 > r() - r11 || r92 < 0 || r92 > other.length - r11) {
            return false;
        }
        int r112 = r11 + r82;
        int r12 = a6.a.y(this, r82);
        while (r82 < r112) {
            int[] r22 = this.f;
            int r32 = r12 == 0 ? 0 : r22[r12 - 1];
            int r42 = r22[r12] - r32;
            byte[][] bArr = this.f5314e;
            int r23 = r22[bArr.length + r12];
            int r43 = Math.min(r112, r42 + r32) - r82;
            if (!a6.a.e((r82 - r32) + r23, bArr[r12], r92, other, r43)) {
                return false;
            }
            r92 += r43;
            r82 += r43;
            r12++;
        }
        return true;
    }

    @Override // ed.h
    public final boolean B(int r92, h other, int r11) {
        kotlin.jvm.internal.h.f(other, "other");
        if (r92 < 0 || r92 > r() - r11) {
            return false;
        }
        int r112 = r11 + r92;
        int r12 = a6.a.y(this, r92);
        int r22 = 0;
        while (r92 < r112) {
            int[] r32 = this.f;
            int r42 = r12 == 0 ? 0 : r32[r12 - 1];
            int r52 = r32[r12] - r42;
            byte[][] bArr = this.f5314e;
            int r33 = r32[bArr.length + r12];
            int r53 = Math.min(r112, r52 + r42) - r92;
            if (!other.A(r22, (r92 - r42) + r33, bArr[r12], r53)) {
                return false;
            }
            r22 += r53;
            r92 += r53;
            r12++;
        }
        return true;
    }

    @Override // ed.h
    public final h C(int r13, int r14) {
        int r142 = a6.a.x(this, r14);
        if (!(r13 >= 0)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("beginIndex=", r13, " < 0").toString());
        }
        if (!(r142 <= r())) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("endIndex=", r142, " > length(");
            sbE.append(r());
            sbE.append(')');
            throw new IllegalArgumentException(sbE.toString().toString());
        }
        int r12 = r142 - r13;
        if (!(r12 >= 0)) {
            throw new IllegalArgumentException(androidx.constraintlayout.core.a.c("endIndex=", r142, " < beginIndex=", r13).toString());
        }
        if (r13 == 0 && r142 == r()) {
            return this;
        }
        if (r13 == r142) {
            return h.f5315d;
        }
        int r22 = a6.a.y(this, r13);
        int r143 = a6.a.y(this, r142 - 1);
        byte[][] bArr = this.f5314e;
        byte[][] bArr2 = (byte[][]) m9.i.l0(bArr, r22, r143 + 1);
        int[] r52 = new int[bArr2.length * 2];
        int[] r6 = this.f;
        if (r22 <= r143) {
            int r72 = 0;
            int r82 = r22;
            while (true) {
                int r92 = r82 + 1;
                r52[r72] = Math.min(r6[r82] - r13, r12);
                int r10 = r72 + 1;
                r52[r72 + bArr2.length] = r6[bArr.length + r82];
                if (r82 == r143) {
                    break;
                }
                r82 = r92;
                r72 = r10;
            }
        }
        int r02 = r22 != 0 ? r6[r22 - 1] : 0;
        int length = bArr2.length;
        r52[length] = (r13 - r02) + r52[length];
        return new g0(bArr2, r52);
    }

    @Override // ed.h
    public final h F() {
        return K().F();
    }

    @Override // ed.h
    public final void H(e buffer, int r12) {
        kotlin.jvm.internal.h.f(buffer, "buffer");
        int r13 = 0 + r12;
        int r22 = a6.a.y(this, 0);
        int r32 = 0;
        while (r32 < r13) {
            int[] r42 = this.f;
            int r52 = r22 == 0 ? 0 : r42[r22 - 1];
            int r6 = r42[r22] - r52;
            byte[][] bArr = this.f5314e;
            int r43 = r42[bArr.length + r22];
            int r62 = Math.min(r13, r6 + r52) - r32;
            int r53 = (r32 - r52) + r43;
            e0 e0Var = new e0(bArr[r22], r53, r53 + r62, true);
            e0 e0Var2 = buffer.f5303a;
            if (e0Var2 == null) {
                e0Var.f5310g = e0Var;
                e0Var.f = e0Var;
                buffer.f5303a = e0Var;
            } else {
                e0 e0Var3 = e0Var2.f5310g;
                kotlin.jvm.internal.h.c(e0Var3);
                e0Var3.b(e0Var);
            }
            r32 += r62;
            r22++;
        }
        buffer.f5304b += r12;
    }

    public final byte[] J() {
        byte[] bArr = new byte[r()];
        byte[][] bArr2 = this.f5314e;
        int length = bArr2.length;
        int r32 = 0;
        int r42 = 0;
        int r52 = 0;
        while (r32 < length) {
            int[] r72 = this.f;
            int r6 = r72[length + r32];
            int r73 = r72[r32];
            int r43 = r73 - r42;
            m9.i.h0(r52, bArr2[r32], r6, bArr, r6 + r43);
            r52 += r43;
            r32++;
            r42 = r73;
        }
        return bArr;
    }

    public final h K() {
        return new h(J());
    }

    @Override // ed.h
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (!(obj instanceof h)) {
                return false;
            }
            h hVar = (h) obj;
            if (hVar.r() != r() || !B(0, hVar, r())) {
                return false;
            }
        }
        return true;
    }

    @Override // ed.h
    public final int hashCode() {
        int r02 = this.f5317b;
        if (r02 != 0) {
            return r02;
        }
        byte[][] bArr = this.f5314e;
        int length = bArr.length;
        int r22 = 0;
        int r32 = 1;
        int r42 = 0;
        while (r22 < length) {
            int[] r6 = this.f;
            int r52 = r6[length + r22];
            int r62 = r6[r22];
            byte[] bArr2 = bArr[r22];
            int r43 = (r62 - r42) + r52;
            while (r52 < r43) {
                r32 = (r32 * 31) + bArr2[r52];
                r52++;
            }
            r22++;
            r42 = r62;
        }
        this.f5317b = r32;
        return r32;
    }

    @Override // ed.h
    public final String n() {
        return K().n();
    }

    @Override // ed.h
    public final h q(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        byte[][] bArr = this.f5314e;
        int length = bArr.length;
        int r22 = 0;
        int r32 = 0;
        while (r22 < length) {
            int[] r52 = this.f;
            int r42 = r52[length + r22];
            int r53 = r52[r22];
            messageDigest.update(bArr[r22], r42, r53 - r32);
            r22++;
            r32 = r53;
        }
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.h.e(digestBytes, "digestBytes");
        return new h(digestBytes);
    }

    @Override // ed.h
    public final int r() {
        return this.f[this.f5314e.length - 1];
    }

    @Override // ed.h
    public final String t() {
        return K().t();
    }

    @Override // ed.h
    public final String toString() {
        return K().toString();
    }

    @Override // ed.h
    public final int u(int r22, byte[] other) {
        kotlin.jvm.internal.h.f(other, "other");
        return K().u(r22, other);
    }

    @Override // ed.h
    public final byte[] w() {
        return J();
    }

    @Override // ed.h
    public final byte x(int r10) {
        byte[][] bArr = this.f5314e;
        int length = bArr.length - 1;
        int[] r22 = this.f;
        a6.a.g(r22[length], r10, 1L);
        int r12 = a6.a.y(this, r10);
        return bArr[r12][(r10 - (r12 == 0 ? 0 : r22[r12 - 1])) + r22[bArr.length + r12]];
    }

    @Override // ed.h
    public final int y(int r22, byte[] other) {
        kotlin.jvm.internal.h.f(other, "other");
        return K().y(r22, other);
    }
}
