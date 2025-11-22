package org.bson.types;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class Decimal128 extends Number implements Comparable<Decimal128> {

    /* renamed from: a, reason: collision with root package name */
    public final long f12070a;

    /* renamed from: b, reason: collision with root package name */
    public final long f12071b;

    static {
        new BigInteger("10");
        new BigInteger("1");
        new BigInteger("0");
        new HashSet(Collections.singletonList("nan"));
        new HashSet(Collections.singletonList("-nan"));
        new HashSet(Arrays.asList("inf", "+inf", "infinity", "+infinity"));
        new HashSet(Arrays.asList("-inf", "-infinity"));
        fromIEEE754BIDEncoding(8646911284551352320L, 0L);
        fromIEEE754BIDEncoding(-576460752303423488L, 0L);
        fromIEEE754BIDEncoding(-288230376151711744L, 0L);
        fromIEEE754BIDEncoding(8935141660703064064L, 0L);
        fromIEEE754BIDEncoding(3476778912330022912L, 0L);
        fromIEEE754BIDEncoding(-5746593124524752896L, 0L);
    }

    public Decimal128(long j10, long j11) {
        this.f12070a = j10;
        this.f12071b = j11;
    }

    public static Decimal128 fromIEEE754BIDEncoding(long j10, long j11) {
        return new Decimal128(j10, j11);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x0085 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0095  */
    @Override // java.lang.Comparable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compareTo(org.bson.types.Decimal128 r6) {
        /*
            r5 = this;
            org.bson.types.Decimal128 r6 = (org.bson.types.Decimal128) r6
            boolean r0 = r5.r()
            r1 = 1
            if (r0 == 0) goto L10
            boolean r6 = r6.r()
            r1 = r1 ^ r6
            goto La8
        L10:
            boolean r0 = r5.q()
            r2 = 0
            if (r0 == 0) goto L3f
            boolean r0 = r5.t()
            if (r0 == 0) goto L2a
            boolean r0 = r6.q()
            if (r0 == 0) goto La2
            boolean r6 = r6.t()
            if (r6 == 0) goto La2
            goto L85
        L2a:
            boolean r0 = r6.r()
            if (r0 == 0) goto L32
            goto La2
        L32:
            boolean r0 = r6.q()
            if (r0 == 0) goto La8
            boolean r6 = r6.t()
            if (r6 != 0) goto La8
            goto L85
        L3f:
            java.math.BigDecimal r0 = r5.n()
            java.math.BigDecimal r3 = r6.n()
            boolean r4 = r5.r()
            if (r4 != 0) goto L5d
            boolean r4 = r5.q()
            if (r4 != 0) goto L5d
            java.math.BigDecimal r4 = java.math.BigDecimal.ZERO
            int r4 = r0.compareTo(r4)
            if (r4 != 0) goto L5d
            r4 = 1
            goto L5e
        L5d:
            r4 = 0
        L5e:
            if (r4 == 0) goto L8e
            boolean r4 = r6.r()
            if (r4 != 0) goto L76
            boolean r4 = r6.q()
            if (r4 != 0) goto L76
            java.math.BigDecimal r4 = java.math.BigDecimal.ZERO
            int r4 = r3.compareTo(r4)
            if (r4 != 0) goto L76
            r4 = 1
            goto L77
        L76:
            r4 = 0
        L77:
            if (r4 == 0) goto L8e
            boolean r4 = r5.o(r0)
            if (r4 == 0) goto L87
            boolean r6 = r6.o(r3)
            if (r6 == 0) goto La2
        L85:
            r1 = 0
            goto La8
        L87:
            boolean r2 = r6.o(r3)
            if (r2 == 0) goto L8e
            goto La8
        L8e:
            boolean r2 = r6.r()
            if (r2 == 0) goto L95
            goto La2
        L95:
            boolean r2 = r6.q()
            if (r2 == 0) goto La4
            boolean r6 = r6.t()
            if (r6 == 0) goto La2
            goto La8
        La2:
            r1 = -1
            goto La8
        La4:
            int r1 = r0.compareTo(r3)
        La8:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: org.bson.types.Decimal128.compareTo(java.lang.Object):int");
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        if (r()) {
            return Double.NaN;
        }
        if (q()) {
            return t() ? Double.NEGATIVE_INFINITY : Double.POSITIVE_INFINITY;
        }
        BigDecimal bigDecimalN = n();
        if (o(bigDecimalN)) {
            return -0.0d;
        }
        return bigDecimalN.doubleValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Decimal128.class != obj.getClass()) {
            return false;
        }
        Decimal128 decimal128 = (Decimal128) obj;
        return this.f12070a == decimal128.f12070a && this.f12071b == decimal128.f12071b;
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return (float) doubleValue();
    }

    public final int hashCode() {
        long j10 = this.f12071b;
        int r12 = ((int) (j10 ^ (j10 >>> 32))) * 31;
        long j11 = this.f12070a;
        return r12 + ((int) (j11 ^ (j11 >>> 32)));
    }

    @Override // java.lang.Number
    public final int intValue() {
        return (int) doubleValue();
    }

    @Override // java.lang.Number
    public final long longValue() {
        return (long) doubleValue();
    }

    public final BigDecimal n() {
        long j10;
        char c10;
        long j11 = this.f12070a;
        if ((j11 & 6917529027641081856L) == 6917529027641081856L) {
            j10 = 2305807824841605120L & j11;
            c10 = '/';
        } else {
            j10 = 9223231299366420480L & j11;
            c10 = '1';
        }
        int r52 = -(((int) (j10 >>> c10)) - 6176);
        if ((j11 & 6917529027641081856L) == 6917529027641081856L) {
            return BigDecimal.valueOf(0L, r52);
        }
        int r6 = t() ? -1 : 1;
        byte[] bArr = new byte[15];
        long j12 = 255;
        for (int r12 = 14; r12 >= 7; r12--) {
            bArr[r12] = (byte) ((this.f12071b & j12) >>> ((14 - r12) << 3));
            j12 <<= 8;
        }
        long j13 = 255;
        for (int r10 = 6; r10 >= 1; r10--) {
            bArr[r10] = (byte) ((j11 & j13) >>> ((6 - r10) << 3));
            j13 <<= 8;
        }
        bArr[0] = (byte) ((j11 & 281474976710656L) >>> 48);
        return new BigDecimal(new BigInteger(r6, bArr), r52);
    }

    public final boolean o(BigDecimal bigDecimal) {
        return t() && bigDecimal.signum() == 0;
    }

    public final boolean q() {
        return (this.f12070a & 8646911284551352320L) == 8646911284551352320L;
    }

    public final boolean r() {
        return (this.f12070a & 8935141660703064064L) == 8935141660703064064L;
    }

    public final boolean t() {
        return (this.f12070a & Long.MIN_VALUE) == Long.MIN_VALUE;
    }

    public final String toString() {
        if (r()) {
            return "NaN";
        }
        if (q()) {
            return t() ? "-Infinity" : "Infinity";
        }
        StringBuilder sb2 = new StringBuilder();
        BigDecimal bigDecimalN = n();
        String string = bigDecimalN.unscaledValue().abs().toString();
        if (t()) {
            sb2.append('-');
        }
        int r12 = -bigDecimalN.scale();
        int length = (string.length() - 1) + r12;
        if (r12 > 0 || length < -6) {
            sb2.append(string.charAt(0));
            if (string.length() > 1) {
                sb2.append('.');
                sb2.append((CharSequence) string, 1, string.length());
            }
            sb2.append('E');
            if (length > 0) {
                sb2.append('+');
            }
            sb2.append(length);
        } else if (r12 == 0) {
            sb2.append(string);
        } else {
            int length2 = (-r12) - string.length();
            if (length2 >= 0) {
                sb2.append("0.");
                for (int r13 = 0; r13 < length2; r13++) {
                    sb2.append('0');
                }
                sb2.append((CharSequence) string, 0, string.length());
            } else {
                int r32 = -length2;
                sb2.append((CharSequence) string, 0, r32);
                sb2.append('.');
                sb2.append((CharSequence) string, r32, r32 - r12);
            }
        }
        return sb2.toString();
    }
}
