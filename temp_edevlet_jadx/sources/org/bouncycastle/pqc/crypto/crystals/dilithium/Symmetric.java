package org.bouncycastle.pqc.crypto.crystals.dilithium;

import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.StreamCipher;
import org.bouncycastle.crypto.digests.SHAKEDigest;
import org.bouncycastle.crypto.engines.AESEngine;
import org.bouncycastle.crypto.modes.SICBlockCipher;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.params.ParametersWithIV;
import org.jmrtd.cbeff.ISO781611;

/* loaded from: classes2.dex */
abstract class Symmetric {
    final int stream128BlockBytes;
    final int stream256BlockBytes;

    @Deprecated
    public static class AesSymmetric extends Symmetric {
        private final StreamCipher cipher;

        public AesSymmetric() {
            super(64, 64);
            this.cipher = SICBlockCipher.newInstance(AESEngine.newInstance());
        }

        private void aes128(byte[] bArr, int r82, int r92) throws DataLengthException {
            this.cipher.processBytes(new byte[r92], 0, r92, bArr, r82);
        }

        private void streamInit(byte[] bArr, short s7) throws IllegalArgumentException {
            byte[] bArr2 = new byte[12];
            bArr2[0] = (byte) s7;
            bArr2[1] = (byte) (s7 >> 8);
            this.cipher.init(true, new ParametersWithIV(new KeyParameter(bArr, 0, 32), bArr2));
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream128init(byte[] bArr, short s7) throws IllegalArgumentException {
            streamInit(bArr, s7);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream128squeezeBlocks(byte[] bArr, int r22, int r32) throws DataLengthException {
            aes128(bArr, r22, r32);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream256init(byte[] bArr, short s7) throws IllegalArgumentException {
            streamInit(bArr, s7);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream256squeezeBlocks(byte[] bArr, int r22, int r32) throws DataLengthException {
            aes128(bArr, r22, r32);
        }
    }

    public static class ShakeSymmetric extends Symmetric {
        private final SHAKEDigest digest128;
        private final SHAKEDigest digest256;

        public ShakeSymmetric() {
            super(168, ISO781611.FORMAT_TYPE_TAG);
            this.digest128 = new SHAKEDigest(128);
            this.digest256 = new SHAKEDigest(256);
        }

        private void streamInit(SHAKEDigest sHAKEDigest, byte[] bArr, short s7) {
            sHAKEDigest.reset();
            sHAKEDigest.update(bArr, 0, bArr.length);
            sHAKEDigest.update(new byte[]{(byte) s7, (byte) (s7 >> 8)}, 0, 2);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream128init(byte[] bArr, short s7) {
            streamInit(this.digest128, bArr, s7);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream128squeezeBlocks(byte[] bArr, int r32, int r42) {
            this.digest128.doOutput(bArr, r32, r42);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream256init(byte[] bArr, short s7) {
            streamInit(this.digest256, bArr, s7);
        }

        @Override // org.bouncycastle.pqc.crypto.crystals.dilithium.Symmetric
        public void stream256squeezeBlocks(byte[] bArr, int r32, int r42) {
            this.digest256.doOutput(bArr, r32, r42);
        }
    }

    public Symmetric(int r12, int r22) {
        this.stream128BlockBytes = r12;
        this.stream256BlockBytes = r22;
    }

    public abstract void stream128init(byte[] bArr, short s7);

    public abstract void stream128squeezeBlocks(byte[] bArr, int r22, int r32);

    public abstract void stream256init(byte[] bArr, short s7);

    public abstract void stream256squeezeBlocks(byte[] bArr, int r22, int r32);
}
