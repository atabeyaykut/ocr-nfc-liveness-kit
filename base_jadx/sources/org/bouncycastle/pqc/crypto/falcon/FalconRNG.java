package org.bouncycastle.pqc.crypto.falcon;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
class FalconRNG {

    /* renamed from: bd, reason: collision with root package name */
    byte[] f11872bd = new byte[512];
    long bdummy_u64 = 0;
    int ptr = 0;

    /* renamed from: sd, reason: collision with root package name */
    byte[] f11873sd = new byte[256];
    long sdummy_u64 = 0;
    int type = 0;
    FalconConversions convertor = new FalconConversions();

    private void QROUND(int r32, int r42, int r52, int r6, int[] r72) {
        int r02 = r72[r32] + r72[r42];
        r72[r32] = r02;
        int r03 = r02 ^ r72[r6];
        r72[r6] = r03;
        int r04 = (r03 >>> 16) | (r03 << 16);
        r72[r6] = r04;
        int r12 = r72[r52] + r04;
        r72[r52] = r12;
        int r05 = r72[r42] ^ r12;
        r72[r42] = r05;
        int r06 = (r05 >>> 20) | (r05 << 12);
        r72[r42] = r06;
        int r13 = r72[r32] + r06;
        r72[r32] = r13;
        int r33 = r72[r6] ^ r13;
        r72[r6] = r33;
        int r34 = (r33 >>> 24) | (r33 << 8);
        r72[r6] = r34;
        int r62 = r72[r52] + r34;
        r72[r52] = r62;
        int r35 = r72[r42] ^ r62;
        r72[r42] = r35;
        r72[r42] = (r35 >>> 25) | (r35 << 7);
    }

    public void prng_get_bytes(byte[] bArr, int r52, int r6) {
        while (r6 > 0) {
            byte[] bArr2 = this.f11872bd;
            int length = bArr2.length - this.ptr;
            if (length > r6) {
                length = r6;
            }
            System.arraycopy(bArr2, 0, bArr, r52, length);
            r52 += length;
            r6 -= length;
            int r02 = this.ptr + length;
            this.ptr = r02;
            if (r02 == this.f11872bd.length) {
                prng_refill();
            }
        }
    }

    public long prng_get_u64() {
        int r02 = this.ptr;
        if (r02 >= this.f11872bd.length - 9) {
            prng_refill();
            r02 = 0;
        }
        this.ptr = r02 + 8;
        byte[] bArr = this.f11872bd;
        return ((bArr[r02 + 7] & 255) << 56) | (bArr[r02 + 0] & 255) | ((bArr[r02 + 1] & 255) << 8) | ((bArr[r02 + 2] & 255) << 16) | ((bArr[r02 + 3] & 255) << 24) | ((bArr[r02 + 4] & 255) << 32) | ((bArr[r02 + 5] & 255) << 40) | ((bArr[r02 + 6] & 255) << 48);
    }

    public byte prng_get_u8() {
        byte[] bArr = this.f11872bd;
        int r12 = this.ptr;
        int r22 = r12 + 1;
        this.ptr = r22;
        byte b10 = bArr[r12];
        if (r22 == bArr.length) {
            prng_refill();
        }
        return b10;
    }

    public void prng_init(SHAKE256 shake256) {
        byte[] bArr = new byte[56];
        shake256.inner_shake256_extract(bArr, 0, 56);
        for (int r11 = 0; r11 < 14; r11++) {
            int r02 = r11 << 2;
            System.arraycopy(this.convertor.int_to_bytes(((bArr[r02 + 1] & 255) << 8) | (bArr[r02 + 0] & 255) | ((bArr[r02 + 2] & 255) << 16) | ((bArr[r02 + 3] & 255) << 24)), 0, this.f11873sd, r02, 4);
        }
        System.arraycopy(this.convertor.long_to_bytes((this.convertor.bytes_to_int(this.f11873sd, 48) & BodyPartID.bodyIdMax) + ((BodyPartID.bodyIdMax & this.convertor.bytes_to_int(this.f11873sd, 52)) << 32)), 0, this.f11873sd, 48, 8);
        prng_refill();
    }

    public void prng_refill() {
        int[] r82 = {1634760805, 857760878, 2036477234, 1797285236};
        long jBytes_to_long = this.convertor.bytes_to_long(this.f11873sd, 48);
        for (int r13 = 0; r13 < 8; r13++) {
            int[] r15 = new int[16];
            System.arraycopy(r82, 0, r15, 0, 4);
            System.arraycopy(this.convertor.bytes_to_int_array(this.f11873sd, 0, 12), 0, r15, 4, 12);
            int r42 = (int) jBytes_to_long;
            r15[14] = r15[14] ^ r42;
            int r32 = (int) (jBytes_to_long >>> 32);
            r15[15] = r15[15] ^ r32;
            int r22 = 0;
            while (r22 < 10) {
                QROUND(0, 4, 8, 12, r15);
                QROUND(1, 5, 9, 13, r15);
                QROUND(2, 6, 10, 14, r15);
                QROUND(3, 7, 11, 15, r15);
                QROUND(0, 5, 10, 15, r15);
                QROUND(1, 6, 11, 12, r15);
                QROUND(2, 7, 8, 13, r15);
                QROUND(3, 4, 9, 14, r15);
                r22++;
                r32 = r32;
                r42 = r42;
            }
            int r17 = r32;
            int r18 = r42;
            for (int r02 = 0; r02 < 4; r02++) {
                r15[r02] = r15[r02] + r82[r02];
            }
            for (int r03 = 4; r03 < 14; r03++) {
                r15[r03] = r15[r03] + this.convertor.bytes_to_int(this.f11873sd, (r03 * 4) - 16);
            }
            r15[14] = r15[14] + (this.convertor.bytes_to_int(this.f11873sd, 40) ^ r18);
            r15[15] = r15[15] + (this.convertor.bytes_to_int(this.f11873sd, 44) ^ r17);
            jBytes_to_long++;
            for (int r04 = 0; r04 < 16; r04++) {
                byte[] bArr = this.f11872bd;
                int r23 = (r13 << 2) + (r04 << 5);
                int r43 = r15[r04];
                bArr[r23 + 0] = (byte) r43;
                bArr[r23 + 1] = (byte) (r43 >>> 8);
                bArr[r23 + 2] = (byte) (r43 >>> 16);
                bArr[r23 + 3] = (byte) (r43 >>> 24);
            }
        }
        System.arraycopy(this.convertor.long_to_bytes(jBytes_to_long), 0, this.f11873sd, 48, 8);
        this.ptr = 0;
    }
}
