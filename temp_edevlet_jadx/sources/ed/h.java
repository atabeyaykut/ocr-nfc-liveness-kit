package ed;

import java.io.Serializable;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public class h implements Serializable, Comparable<h> {

    /* renamed from: d, reason: collision with root package name */
    public static final h f5315d;

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f5316a;

    /* renamed from: b, reason: collision with root package name */
    public transient int f5317b;

    /* renamed from: c, reason: collision with root package name */
    public transient String f5318c;

    public static final class a {
        public static h a(String str) {
            int r12 = 0;
            if (!(str.length() % 2 == 0)) {
                throw new IllegalArgumentException(kotlin.jvm.internal.h.k(str, "Unexpected hex string: ").toString());
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            int r02 = length - 1;
            if (r02 >= 0) {
                while (true) {
                    int r42 = r12 + 1;
                    int r52 = r12 * 2;
                    bArr[r12] = (byte) (c5.u.j(str.charAt(r52 + 1)) + (c5.u.j(str.charAt(r52)) << 4));
                    if (r42 > r02) {
                        break;
                    }
                    r12 = r42;
                }
            }
            return new h(bArr);
        }

        public static h b(String str) {
            kotlin.jvm.internal.h.f(str, "<this>");
            byte[] bytes = str.getBytes(mc.a.f10357a);
            kotlin.jvm.internal.h.e(bytes, "(this as java.lang.String).getBytes(charset)");
            h hVar = new h(bytes);
            hVar.f5318c = str;
            return hVar;
        }

        public static h c(byte[] bArr) {
            h hVar = h.f5315d;
            int length = bArr.length;
            a6.a.g(bArr.length, 0, length);
            return new h(m9.i.k0(bArr, 0, length + 0));
        }
    }

    static {
        new a();
        f5315d = new h(new byte[0]);
    }

    public h(byte[] data) {
        kotlin.jvm.internal.h.f(data, "data");
        this.f5316a = data;
    }

    public static /* synthetic */ h E(h hVar, int r22, int r32, int r42) {
        if ((r42 & 1) != 0) {
            r22 = 0;
        }
        if ((r42 & 2) != 0) {
            r32 = -1234567890;
        }
        return hVar.C(r22, r32);
    }

    public static int v(h hVar, h other) {
        hVar.getClass();
        kotlin.jvm.internal.h.f(other, "other");
        return hVar.u(0, other.f5316a);
    }

    public static int z(h hVar, h other) {
        hVar.getClass();
        kotlin.jvm.internal.h.f(other, "other");
        return hVar.y(-1234567890, other.f5316a);
    }

    public boolean A(int r32, int r42, byte[] other, int r6) {
        kotlin.jvm.internal.h.f(other, "other");
        if (r32 >= 0) {
            byte[] bArr = this.f5316a;
            if (r32 <= bArr.length - r6 && r42 >= 0 && r42 <= other.length - r6 && a6.a.e(r32, bArr, r42, other, r6)) {
                return true;
            }
        }
        return false;
    }

    public boolean B(int r32, h other, int r52) {
        kotlin.jvm.internal.h.f(other, "other");
        return other.A(0, r32, this.f5316a, r52);
    }

    public h C(int r42, int r52) {
        int r53 = a6.a.x(this, r52);
        if (!(r42 >= 0)) {
            throw new IllegalArgumentException("beginIndex < 0".toString());
        }
        byte[] bArr = this.f5316a;
        if (!(r53 <= bArr.length)) {
            throw new IllegalArgumentException(androidx.constraintlayout.core.a.d(new StringBuilder("endIndex > length("), bArr.length, ')').toString());
        }
        if (r53 - r42 >= 0) {
            return (r42 == 0 && r53 == bArr.length) ? this : new h(m9.i.k0(bArr, r42, r53));
        }
        throw new IllegalArgumentException("endIndex < beginIndex".toString());
    }

    public h F() {
        byte b10;
        int r02 = 0;
        while (true) {
            byte[] bArr = this.f5316a;
            if (r02 >= bArr.length) {
                return this;
            }
            byte b11 = bArr[r02];
            byte b12 = (byte) 65;
            if (b11 >= b12 && b11 <= (b10 = (byte) 90)) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                kotlin.jvm.internal.h.e(bArrCopyOf, "java.util.Arrays.copyOf(this, size)");
                bArrCopyOf[r02] = (byte) (b11 + ISO7816.INS_VERIFY);
                for (int r52 = r02 + 1; r52 < bArrCopyOf.length; r52++) {
                    byte b13 = bArrCopyOf[r52];
                    if (b13 >= b12 && b13 <= b10) {
                        bArrCopyOf[r52] = (byte) (b13 + ISO7816.INS_VERIFY);
                    }
                }
                return new h(bArrCopyOf);
            }
            r02++;
        }
    }

    public final String G() {
        String str = this.f5318c;
        if (str != null) {
            return str;
        }
        byte[] bArrW = w();
        kotlin.jvm.internal.h.f(bArrW, "<this>");
        String str2 = new String(bArrW, mc.a.f10357a);
        this.f5318c = str2;
        return str2;
    }

    public void H(e buffer, int r42) {
        kotlin.jvm.internal.h.f(buffer, "buffer");
        buffer.m31write(this.f5316a, 0, r42);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof h) {
            h hVar = (h) obj;
            int r12 = hVar.r();
            byte[] bArr = this.f5316a;
            if (r12 == bArr.length && hVar.A(0, 0, bArr, bArr.length)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int r02 = this.f5317b;
        if (r02 != 0) {
            return r02;
        }
        int r03 = Arrays.hashCode(this.f5316a);
        this.f5317b = r03;
        return r03;
    }

    public String n() {
        byte[] map = m0.f5343a;
        byte[] bArr = this.f5316a;
        kotlin.jvm.internal.h.f(bArr, "<this>");
        kotlin.jvm.internal.h.f(map, "map");
        byte[] bArr2 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int r52 = 0;
        int r6 = 0;
        while (r52 < length) {
            int r72 = r52 + 1;
            byte b10 = bArr[r52];
            int r82 = r72 + 1;
            byte b11 = bArr[r72];
            int r92 = r82 + 1;
            byte b12 = bArr[r82];
            int r10 = r6 + 1;
            bArr2[r6] = map[(b10 & 255) >> 2];
            int r62 = r10 + 1;
            bArr2[r10] = map[((b10 & 3) << 4) | ((b11 & 255) >> 4)];
            int r53 = r62 + 1;
            bArr2[r62] = map[((b11 & PassportService.SFI_DG15) << 2) | ((b12 & 255) >> 6)];
            r6 = r53 + 1;
            bArr2[r53] = map[b12 & 63];
            r52 = r92;
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b13 = bArr[r52];
            int r42 = r6 + 1;
            bArr2[r6] = map[(b13 & 255) >> 2];
            int r32 = r42 + 1;
            bArr2[r42] = map[(b13 & 3) << 4];
            byte b14 = (byte) 61;
            bArr2[r32] = b14;
            bArr2[r32 + 1] = b14;
        } else if (length2 == 2) {
            int r43 = r52 + 1;
            byte b15 = bArr[r52];
            byte b16 = bArr[r43];
            int r44 = r6 + 1;
            bArr2[r6] = map[(b15 & 255) >> 2];
            int r63 = r44 + 1;
            bArr2[r44] = map[((b15 & 3) << 4) | ((b16 & 255) >> 4)];
            bArr2[r63] = map[(b16 & PassportService.SFI_DG15) << 2];
            bArr2[r63 + 1] = (byte) 61;
        }
        return new String(bArr2, mc.a.f10357a);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0030 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0032 A[ORIG_RETURN, RETURN] */
    @Override // java.lang.Comparable
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compareTo(ed.h r10) {
        /*
            r9 = this;
            java.lang.String r0 = "other"
            kotlin.jvm.internal.h.f(r10, r0)
            int r0 = r9.r()
            int r1 = r10.r()
            int r2 = java.lang.Math.min(r0, r1)
            r3 = 0
            r4 = 0
        L13:
            r5 = -1
            r6 = 1
            if (r4 >= r2) goto L2b
            byte r7 = r9.x(r4)
            r7 = r7 & 255(0xff, float:3.57E-43)
            byte r8 = r10.x(r4)
            r8 = r8 & 255(0xff, float:3.57E-43)
            if (r7 != r8) goto L28
            int r4 = r4 + 1
            goto L13
        L28:
            if (r7 >= r8) goto L32
            goto L30
        L2b:
            if (r0 != r1) goto L2e
            goto L33
        L2e:
            if (r0 >= r1) goto L32
        L30:
            r3 = -1
            goto L33
        L32:
            r3 = 1
        L33:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.h.compareTo(ed.h):int");
    }

    public h q(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.f5316a, 0, r());
        byte[] digestBytes = messageDigest.digest();
        kotlin.jvm.internal.h.e(digestBytes, "digestBytes");
        return new h(digestBytes);
    }

    public int r() {
        return this.f5316a.length;
    }

    public String t() {
        byte[] bArr = this.f5316a;
        char[] cArr = new char[bArr.length * 2];
        int length = bArr.length;
        int r32 = 0;
        int r42 = 0;
        while (r32 < length) {
            byte b10 = bArr[r32];
            r32++;
            int r6 = r42 + 1;
            char[] cArr2 = c5.u.f2019h;
            cArr[r42] = cArr2[(b10 >> 4) & 15];
            r42 = r6 + 1;
            cArr[r6] = cArr2[b10 & PassportService.SFI_DG15];
        }
        return new String(cArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:103:0x00da  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0166  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x020b  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:282:0x0226 A[EDGE_INSN: B:282:0x0226->B:247:0x0226 BREAK  A[LOOP:0: B:9:0x0014->B:317:0x0014], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:285:0x0226 A[EDGE_INSN: B:285:0x0226->B:247:0x0226 BREAK  A[LOOP:0: B:9:0x0014->B:317:0x0014, LOOP_LABEL: LOOP:0: B:9:0x0014->B:317:0x0014], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:293:0x0226 A[EDGE_INSN: B:293:0x0226->B:247:0x0226 BREAK  A[LOOP:0: B:9:0x0014->B:317:0x0014], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0226 A[EDGE_INSN: B:299:0x0226->B:247:0x0226 BREAK  A[LOOP:0: B:9:0x0014->B:317:0x0014], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:314:0x0226 A[EDGE_INSN: B:314:0x0226->B:247:0x0226 BREAK  A[LOOP:0: B:9:0x0014->B:317:0x0014], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            Method dump skipped, instructions count: 760
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.h.toString():java.lang.String");
    }

    public int u(int r6, byte[] other) {
        kotlin.jvm.internal.h.f(other, "other");
        byte[] bArr = this.f5316a;
        int length = bArr.length - other.length;
        int r62 = Math.max(r6, 0);
        if (r62 <= length) {
            while (true) {
                int r32 = r62 + 1;
                if (a6.a.e(r62, bArr, 0, other, other.length)) {
                    return r62;
                }
                if (r62 == length) {
                    break;
                }
                r62 = r32;
            }
        }
        return -1;
    }

    public byte[] w() {
        return this.f5316a;
    }

    public byte x(int r22) {
        return this.f5316a[r22];
    }

    public int y(int r52, byte[] other) {
        kotlin.jvm.internal.h.f(other, "other");
        int r53 = a6.a.x(this, r52);
        byte[] bArr = this.f5316a;
        int r54 = Math.min(r53, bArr.length - other.length);
        if (r54 >= 0) {
            while (true) {
                int r12 = r54 - 1;
                if (a6.a.e(r54, bArr, 0, other, other.length)) {
                    return r54;
                }
                if (r12 < 0) {
                    break;
                }
                r54 = r12;
            }
        }
        return -1;
    }
}
