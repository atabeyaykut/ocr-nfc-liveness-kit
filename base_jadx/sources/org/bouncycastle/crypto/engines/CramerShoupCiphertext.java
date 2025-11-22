package org.bouncycastle.crypto.engines;

import java.math.BigInteger;
import org.bouncycastle.util.Arrays;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class CramerShoupCiphertext {

    /* renamed from: e, reason: collision with root package name */
    BigInteger f11506e;

    /* renamed from: u1, reason: collision with root package name */
    BigInteger f11507u1;

    /* renamed from: u2, reason: collision with root package name */
    BigInteger f11508u2;

    /* renamed from: v, reason: collision with root package name */
    BigInteger f11509v;

    public CramerShoupCiphertext() {
    }

    public CramerShoupCiphertext(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f11507u1 = bigInteger;
        this.f11508u2 = bigInteger2;
        this.f11506e = bigInteger3;
        this.f11509v = bigInteger4;
    }

    public CramerShoupCiphertext(byte[] bArr) {
        int r02 = Pack.bigEndianToInt(bArr, 0) + 4;
        this.f11507u1 = new BigInteger(Arrays.copyOfRange(bArr, 4, r02));
        int r22 = Pack.bigEndianToInt(bArr, r02);
        int r03 = r02 + 4;
        int r23 = r22 + r03;
        this.f11508u2 = new BigInteger(Arrays.copyOfRange(bArr, r03, r23));
        int r04 = Pack.bigEndianToInt(bArr, r23);
        int r24 = r23 + 4;
        int r05 = r04 + r24;
        this.f11506e = new BigInteger(Arrays.copyOfRange(bArr, r24, r05));
        int r25 = Pack.bigEndianToInt(bArr, r05);
        int r06 = r05 + 4;
        this.f11509v = new BigInteger(Arrays.copyOfRange(bArr, r06, r25 + r06));
    }

    public BigInteger getE() {
        return this.f11506e;
    }

    public BigInteger getU1() {
        return this.f11507u1;
    }

    public BigInteger getU2() {
        return this.f11508u2;
    }

    public BigInteger getV() {
        return this.f11509v;
    }

    public void setE(BigInteger bigInteger) {
        this.f11506e = bigInteger;
    }

    public void setU1(BigInteger bigInteger) {
        this.f11507u1 = bigInteger;
    }

    public void setU2(BigInteger bigInteger) {
        this.f11508u2 = bigInteger;
    }

    public void setV(BigInteger bigInteger) {
        this.f11509v = bigInteger;
    }

    public byte[] toByteArray() {
        byte[] byteArray = this.f11507u1.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.f11508u2.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.f11506e.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.f11509v.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[length + length2 + length3 + length4 + 16];
        Pack.intToBigEndian(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        int r12 = length + 4;
        Pack.intToBigEndian(length2, bArr, r12);
        int r13 = r12 + 4;
        System.arraycopy(byteArray2, 0, bArr, r13, length2);
        int r14 = r13 + length2;
        Pack.intToBigEndian(length3, bArr, r14);
        int r15 = r14 + 4;
        System.arraycopy(byteArray3, 0, bArr, r15, length3);
        int r16 = r15 + length3;
        Pack.intToBigEndian(length4, bArr, r16);
        System.arraycopy(byteArray4, 0, bArr, r16 + 4, length4);
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.f11507u1.toString());
        stringBuffer.append("\nu2: " + this.f11508u2.toString());
        stringBuffer.append("\ne: " + this.f11506e.toString());
        stringBuffer.append("\nv: " + this.f11509v.toString());
        return stringBuffer.toString();
    }
}
