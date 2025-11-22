package org.bouncycastle.pqc.crypto.frodo;

import androidx.camera.core.impl.a;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
abstract class FrodoMatrixGenerator {

    /* renamed from: n, reason: collision with root package name */
    int f11881n;

    /* renamed from: q, reason: collision with root package name */
    int f11882q;

    public static class Aes128MatrixGenerator extends FrodoMatrixGenerator {
        public Aes128MatrixGenerator(int r12, int r22) {
            super(r12, r22);
        }

        @Override // org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator
        public short[] genMatrix(byte[] bArr) throws IllegalStateException, DataLengthException, IllegalArgumentException {
            int r02 = this.f11881n;
            short[] sArr = new short[r02 * r02];
            byte[] bArr2 = new byte[16];
            byte[] bArr3 = new byte[16];
            AESEngine aESEngine = new AESEngine();
            aESEngine.init(true, new KeyParameter(bArr));
            for (int r52 = 0; r52 < this.f11881n; r52++) {
                Pack.shortToLittleEndian((short) r52, bArr2, 0);
                for (int r6 = 0; r6 < this.f11881n; r6 += 8) {
                    Pack.shortToLittleEndian((short) r6, bArr2, 2);
                    aESEngine.processBlock(bArr2, 0, bArr3, 0);
                    for (int r72 = 0; r72 < 8; r72++) {
                        sArr[a.d(this.f11881n, r52, r6, r72)] = (short) (Pack.littleEndianToShort(bArr3, r72 * 2) & (this.f11882q - 1));
                    }
                }
            }
            return sArr;
        }
    }

    public static class Shake128MatrixGenerator extends FrodoMatrixGenerator {
        public Shake128MatrixGenerator(int r12, int r22) {
            super(r12, r22);
        }

        @Override // org.bouncycastle.pqc.crypto.frodo.FrodoMatrixGenerator
        public short[] genMatrix(byte[] bArr) {
            int r02 = this.f11881n;
            short[] sArr = new short[r02 * r02];
            int r03 = (r02 * 16) / 8;
            byte[] bArr2 = new byte[r03];
            int length = bArr.length + 2;
            byte[] bArr3 = new byte[length];
            System.arraycopy(bArr, 0, bArr3, 2, bArr.length);
            SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
            for (short s7 = 0; s7 < this.f11881n; s7 = (short) (s7 + 1)) {
                Pack.shortToLittleEndian(s7, bArr3, 0);
                sHAKEDigest.update(bArr3, 0, length);
                sHAKEDigest.doFinal(bArr2, 0, r03);
                short s10 = 0;
                while (true) {
                    int r82 = this.f11881n;
                    if (s10 < r82) {
                        sArr[(r82 * s7) + s10] = (short) (Pack.littleEndianToShort(bArr2, s10 * 2) & (this.f11882q - 1));
                        s10 = (short) (s10 + 1);
                    }
                }
            }
            return sArr;
        }
    }

    public FrodoMatrixGenerator(int r12, int r22) {
        this.f11881n = r12;
        this.f11882q = r22;
    }

    public abstract short[] genMatrix(byte[] bArr);
}
