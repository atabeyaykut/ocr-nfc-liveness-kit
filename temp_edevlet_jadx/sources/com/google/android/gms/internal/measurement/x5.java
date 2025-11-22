package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.logging.Level;
import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes.dex */
public final class x5 extends z5 {

    /* renamed from: x, reason: collision with root package name */
    public final byte[] f3832x;

    /* renamed from: y, reason: collision with root package name */
    public final int f3833y;

    /* renamed from: z, reason: collision with root package name */
    public int f3834z;

    public x5(byte[] bArr, int r52) {
        super(0);
        int length = bArr.length;
        if (((length - r52) | r52) < 0) {
            throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(length), 0, Integer.valueOf(r52)));
        }
        this.f3832x = bArr;
        this.f3834z = 0;
        this.f3833y = r52;
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void I(byte b10) throws IOException {
        try {
            byte[] bArr = this.f3832x;
            int r12 = this.f3834z;
            this.f3834z = r12 + 1;
            bArr[r12] = b10;
        } catch (IndexOutOfBoundsException e10) {
            throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void J(int r12, boolean z10) throws IOException {
        U(r12 << 3);
        I(z10 ? (byte) 1 : (byte) 0);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void K(int r12, v5 v5Var) throws IOException {
        U((r12 << 3) | 2);
        U(v5Var.m());
        v5Var.x(this);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void L(int r12, int r22) throws IOException {
        U((r12 << 3) | 5);
        M(r22);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void M(int r52) throws IOException {
        try {
            byte[] bArr = this.f3832x;
            int r12 = this.f3834z;
            int r22 = r12 + 1;
            bArr[r12] = (byte) (r52 & 255);
            int r13 = r22 + 1;
            bArr[r22] = (byte) ((r52 >> 8) & 255);
            int r23 = r13 + 1;
            bArr[r13] = (byte) ((r52 >> 16) & 255);
            this.f3834z = r23 + 1;
            bArr[r23] = (byte) ((r52 >> 24) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void N(int r12, long j10) throws IOException {
        U((r12 << 3) | 1);
        O(j10);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void O(long j10) throws IOException {
        try {
            byte[] bArr = this.f3832x;
            int r12 = this.f3834z;
            int r22 = r12 + 1;
            bArr[r12] = (byte) (((int) j10) & 255);
            int r13 = r22 + 1;
            bArr[r22] = (byte) (((int) (j10 >> 8)) & 255);
            int r23 = r13 + 1;
            bArr[r13] = (byte) (((int) (j10 >> 16)) & 255);
            int r14 = r23 + 1;
            bArr[r23] = (byte) (((int) (j10 >> 24)) & 255);
            int r24 = r14 + 1;
            bArr[r14] = (byte) (((int) (j10 >> 32)) & 255);
            int r15 = r24 + 1;
            bArr[r24] = (byte) (((int) (j10 >> 40)) & 255);
            int r25 = r15 + 1;
            bArr[r15] = (byte) (((int) (j10 >> 48)) & 255);
            this.f3834z = r25 + 1;
            bArr[r25] = (byte) (((int) (j10 >> 56)) & 255);
        } catch (IndexOutOfBoundsException e10) {
            throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void P(int r12, int r22) throws IOException {
        U(r12 << 3);
        Q(r22);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void Q(int r32) throws IOException {
        if (r32 >= 0) {
            U(r32);
        } else {
            W(r32);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void R(int r82, String str) throws IOException {
        int r02;
        U((r82 << 3) | 2);
        int r83 = this.f3834z;
        try {
            int r03 = z5.G(str.length() * 3);
            int r12 = z5.G(str.length());
            int r22 = this.f3833y;
            byte[] bArr = this.f3832x;
            if (r12 == r03) {
                int r04 = r83 + r12;
                this.f3834z = r04;
                r02 = a9.a(str, bArr, r04, r22 - r04);
                this.f3834z = r83;
                U((r02 - r83) - r12);
            } else {
                U(a9.b(str));
                int r05 = this.f3834z;
                r02 = a9.a(str, bArr, r05, r22 - r05);
            }
            this.f3834z = r02;
        } catch (z8 e10) {
            this.f3834z = r83;
            z5.f3858v.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e10);
            byte[] bytes = str.getBytes(x6.f3835a);
            try {
                int length = bytes.length;
                U(length);
                b0(bytes, length);
            } catch (y5 e11) {
                throw e11;
            } catch (IndexOutOfBoundsException e12) {
                throw new y5(e12);
            }
        } catch (IndexOutOfBoundsException e13) {
            throw new y5(e13);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void S(int r12, int r22) throws IOException {
        U((r12 << 3) | r22);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void T(int r12, int r22) throws IOException {
        U(r12 << 3);
        U(r22);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void U(int r52) throws IOException {
        if (z5.w) {
            int r02 = n5.f3640a;
        }
        while (true) {
            int r03 = r52 & (-128);
            byte[] bArr = this.f3832x;
            if (r03 == 0) {
                int r04 = this.f3834z;
                this.f3834z = r04 + 1;
                bArr[r04] = (byte) r52;
                return;
            } else {
                try {
                    int r05 = this.f3834z;
                    this.f3834z = r05 + 1;
                    bArr[r05] = (byte) ((r52 & CertificateBody.profileType) | 128);
                    r52 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), 1), e10);
                }
            }
            throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), 1), e10);
        }
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void V(int r12, long j10) throws IOException {
        U(r12 << 3);
        W(j10);
    }

    @Override // com.google.android.gms.internal.measurement.z5
    public final void W(long j10) throws IOException {
        boolean z10 = z5.w;
        int r6 = this.f3833y;
        byte[] bArr = this.f3832x;
        if (!z10 || r6 - this.f3834z < 10) {
            while ((j10 & (-128)) != 0) {
                try {
                    int r02 = this.f3834z;
                    this.f3834z = r02 + 1;
                    bArr[r02] = (byte) ((((int) j10) & CertificateBody.profileType) | 128);
                    j10 >>>= 7;
                } catch (IndexOutOfBoundsException e10) {
                    throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(r6), 1), e10);
                }
            }
            int r03 = this.f3834z;
            this.f3834z = r03 + 1;
            bArr[r03] = (byte) j10;
            return;
        }
        while ((j10 & (-128)) != 0) {
            int r04 = this.f3834z;
            this.f3834z = r04 + 1;
            y8.f3847c.d(bArr, y8.f + r04, (byte) ((((int) j10) & CertificateBody.profileType) | 128));
            j10 >>>= 7;
        }
        int r05 = this.f3834z;
        this.f3834z = r05 + 1;
        y8.f3847c.d(bArr, y8.f + r05, (byte) j10);
    }

    public final void b0(byte[] bArr, int r6) throws IOException {
        try {
            System.arraycopy(bArr, 0, this.f3832x, this.f3834z, r6);
            this.f3834z += r6;
        } catch (IndexOutOfBoundsException e10) {
            throw new y5(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f3834z), Integer.valueOf(this.f3833y), Integer.valueOf(r6)), e10);
        }
    }
}
