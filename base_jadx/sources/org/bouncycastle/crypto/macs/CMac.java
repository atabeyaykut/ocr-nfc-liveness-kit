package org.bouncycastle.crypto.macs;

import android.support.v4.media.a;
import org.bouncycastle.asn1.BERTags;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.CBCBlockCipher;
import org.bouncycastle.crypto.paddings.ISO7816d4Padding;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.pqc.crypto.crystals.dilithium.DilithiumEngine;
import org.bouncycastle.pqc.crypto.crystals.kyber.KyberEngine;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class CMac implements Mac {
    private byte[] Lu;
    private byte[] Lu2;
    private byte[] ZEROES;
    private byte[] buf;
    private int bufOff;
    private BlockCipher cipher;
    private byte[] mac;
    private int macSize;
    private byte[] poly;

    public CMac(BlockCipher blockCipher) {
        this(blockCipher, blockCipher.getBlockSize() * 8);
    }

    public CMac(BlockCipher blockCipher, int r42) {
        if (r42 % 8 != 0) {
            throw new IllegalArgumentException("MAC size must be multiple of 8");
        }
        if (r42 > blockCipher.getBlockSize() * 8) {
            throw new IllegalArgumentException("MAC size must be less or equal to " + (blockCipher.getBlockSize() * 8));
        }
        this.cipher = CBCBlockCipher.newInstance(blockCipher);
        this.macSize = r42 / 8;
        this.poly = lookupPoly(blockCipher.getBlockSize());
        this.mac = new byte[blockCipher.getBlockSize()];
        this.buf = new byte[blockCipher.getBlockSize()];
        this.ZEROES = new byte[blockCipher.getBlockSize()];
        this.bufOff = 0;
    }

    private byte[] doubleLu(byte[] bArr) {
        byte[] bArr2 = new byte[bArr.length];
        int r12 = (-shiftLeft(bArr, bArr2)) & 255;
        int length = bArr.length - 3;
        byte b10 = bArr2[length];
        byte[] bArr3 = this.poly;
        bArr2[length] = (byte) (b10 ^ (bArr3[1] & r12));
        int length2 = bArr.length - 2;
        bArr2[length2] = (byte) ((bArr3[2] & r12) ^ bArr2[length2]);
        int length3 = bArr.length - 1;
        bArr2[length3] = (byte) ((r12 & bArr3[3]) ^ bArr2[length3]);
        return bArr2;
    }

    private static byte[] lookupPoly(int r22) {
        int r23 = r22 * 8;
        int r02 = 135;
        switch (r23) {
            case 64:
            case DilithiumEngine.DilithiumPolyT1PackedBytes /* 320 */:
                r02 = 27;
                break;
            case 128:
            case 192:
                break;
            case 160:
                r02 = 45;
                break;
            case BERTags.FLAGS /* 224 */:
                r02 = 777;
                break;
            case 256:
                r02 = 1061;
                break;
            case KyberEngine.KyberPolyBytes /* 384 */:
                r02 = 4109;
                break;
            case 448:
                r02 = 2129;
                break;
            case 512:
                r02 = 293;
                break;
            case 768:
                r02 = 655377;
                break;
            case 1024:
                r02 = 524355;
                break;
            case 2048:
                r02 = 548865;
                break;
            default:
                throw new IllegalArgumentException(a.d("Unknown block size for CMAC: ", r23));
        }
        return Pack.intToBigEndian(r02);
    }

    private static int shiftLeft(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int r12 = 0;
        while (true) {
            length--;
            if (length < 0) {
                return r12;
            }
            int r22 = bArr[length] & 255;
            bArr2[length] = (byte) (r12 | (r22 << 1));
            r12 = (r22 >>> 7) & 1;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int r82) throws IllegalStateException, DataLengthException {
        byte[] bArr2;
        if (this.bufOff == this.cipher.getBlockSize()) {
            bArr2 = this.Lu;
        } else {
            new ISO7816d4Padding().addPadding(this.buf, this.bufOff);
            bArr2 = this.Lu2;
        }
        int r22 = 0;
        while (true) {
            byte[] bArr3 = this.mac;
            if (r22 >= bArr3.length) {
                this.cipher.processBlock(this.buf, 0, bArr3, 0);
                System.arraycopy(this.mac, 0, bArr, r82, this.macSize);
                reset();
                return this.macSize;
            }
            byte[] bArr4 = this.buf;
            bArr4[r22] = (byte) (bArr4[r22] ^ bArr2[r22]);
            r22++;
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.cipher.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.macSize;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, DataLengthException, IllegalArgumentException {
        validate(cipherParameters);
        this.cipher.init(true, cipherParameters);
        byte[] bArr = this.ZEROES;
        byte[] bArr2 = new byte[bArr.length];
        this.cipher.processBlock(bArr, 0, bArr2, 0);
        byte[] bArrDoubleLu = doubleLu(bArr2);
        this.Lu = bArrDoubleLu;
        this.Lu2 = doubleLu(bArrDoubleLu);
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        int r12 = 0;
        while (true) {
            byte[] bArr = this.buf;
            if (r12 >= bArr.length) {
                this.bufOff = 0;
                this.cipher.reset();
                return;
            } else {
                bArr[r12] = 0;
                r12++;
            }
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b10) throws IllegalStateException, DataLengthException {
        int r02 = this.bufOff;
        byte[] bArr = this.buf;
        if (r02 == bArr.length) {
            this.cipher.processBlock(bArr, 0, this.mac, 0);
            this.bufOff = 0;
        }
        byte[] bArr2 = this.buf;
        int r12 = this.bufOff;
        this.bufOff = r12 + 1;
        bArr2[r12] = b10;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int r82, int r92) throws IllegalStateException, DataLengthException {
        if (r92 < 0) {
            throw new IllegalArgumentException("Can't have a negative input length!");
        }
        int blockSize = this.cipher.getBlockSize();
        int r12 = this.bufOff;
        int r22 = blockSize - r12;
        if (r92 > r22) {
            System.arraycopy(bArr, r82, this.buf, r12, r22);
            this.cipher.processBlock(this.buf, 0, this.mac, 0);
            this.bufOff = 0;
            r92 -= r22;
            r82 += r22;
            while (r92 > blockSize) {
                this.cipher.processBlock(bArr, r82, this.mac, 0);
                r92 -= blockSize;
                r82 += blockSize;
            }
        }
        System.arraycopy(bArr, r82, this.buf, this.bufOff, r92);
        this.bufOff += r92;
    }

    public void validate(CipherParameters cipherParameters) {
        if (cipherParameters != null && !(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException("CMac mode only permits key to be set.");
        }
    }
}
