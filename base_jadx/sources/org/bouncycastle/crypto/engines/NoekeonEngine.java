package org.bouncycastle.crypto.engines;

import ab.b;
import net.sf.scuba.smartcards.ISO7816;
import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.CryptoServicesRegistrar;
import org.bouncycastle.crypto.DataLengthException;
import org.bouncycastle.crypto.OutputLengthException;
import org.bouncycastle.crypto.constraints.DefaultServiceProperties;
import org.bouncycastle.crypto.params.KeyParameter;
import org.bouncycastle.crypto.signers.PSSSigner;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public class NoekeonEngine implements BlockCipher {
    private static final int SIZE = 16;
    private static final byte[] roundConstants = {ISOFileInfo.DATA_BYTES1, 27, 54, 108, ISO7816.INS_LOAD_KEY_FILE, ISOFileInfo.AB, 77, -102, 47, 94, PSSSigner.TRAILER_IMPLICIT, 99, -58, -105, 53, 106, -44};
    private boolean _forEncryption;

    /* renamed from: k, reason: collision with root package name */
    private final int[] f11531k = new int[4];
    private boolean _initialised = false;

    private int decryptBlock(byte[] bArr, int r21, byte[] bArr2, int r23) {
        int r32 = Pack.bigEndianToInt(bArr, r21);
        int r42 = Pack.bigEndianToInt(bArr, r21 + 4);
        int r52 = Pack.bigEndianToInt(bArr, r21 + 8);
        int r02 = Pack.bigEndianToInt(bArr, r21 + 12);
        int[] r72 = this.f11531k;
        int r82 = r72[0];
        int r10 = r72[1];
        int r12 = r72[2];
        int r73 = r72[3];
        int r14 = 16;
        while (true) {
            int r15 = r32 ^ r52;
            int r152 = r15 ^ (Integers.rotateLeft(r15, 8) ^ Integers.rotateLeft(r15, 24));
            int r43 = r42 ^ r10;
            int r03 = r02 ^ r73;
            int r13 = r43 ^ r03;
            int r92 = (Integers.rotateLeft(r13, 24) ^ Integers.rotateLeft(r13, 8)) ^ r13;
            int r44 = r43 ^ r152;
            int r53 = (r52 ^ r12) ^ r92;
            int r04 = r03 ^ r152;
            int r33 = ((r32 ^ r82) ^ r92) ^ (roundConstants[r14] & 255);
            r14--;
            if (r14 < 0) {
                Pack.intToBigEndian(r33, bArr2, r23);
                Pack.intToBigEndian(r44, bArr2, r23 + 4);
                Pack.intToBigEndian(r53, bArr2, r23 + 8);
                Pack.intToBigEndian(r04, bArr2, r23 + 12);
                return 16;
            }
            int r45 = Integers.rotateLeft(r44, 1);
            int r54 = Integers.rotateLeft(r53, 5);
            int r05 = Integers.rotateLeft(r04, 2);
            int r46 = r45 ^ (r05 | r54);
            int r153 = ~r46;
            int r34 = r33 ^ (r54 & r153);
            int r55 = (r54 ^ (r153 ^ r05)) ^ r34;
            int r47 = r46 ^ (r34 | r55);
            int r06 = r05 ^ (r55 & r47);
            r42 = Integers.rotateLeft(r47, 31);
            r52 = Integers.rotateLeft(r55, 27);
            int r35 = Integers.rotateLeft(r34, 30);
            r32 = r06;
            r02 = r35;
        }
    }

    private int encryptBlock(byte[] bArr, int r21, byte[] bArr2, int r23) {
        int r32 = Pack.bigEndianToInt(bArr, r21);
        int r42 = Pack.bigEndianToInt(bArr, r21 + 4);
        int r52 = Pack.bigEndianToInt(bArr, r21 + 8);
        int r02 = Pack.bigEndianToInt(bArr, r21 + 12);
        int[] r72 = this.f11531k;
        int r82 = 0;
        int r92 = r72[0];
        int r11 = r72[1];
        int r13 = r72[2];
        int r73 = r72[3];
        while (true) {
            int r33 = r32 ^ (roundConstants[r82] & 255);
            int r14 = r33 ^ r52;
            int r142 = r14 ^ (Integers.rotateLeft(r14, 8) ^ Integers.rotateLeft(r14, 24));
            int r43 = r42 ^ r11;
            int r03 = r02 ^ r73;
            int r10 = r43 ^ r03;
            int r102 = r10 ^ (Integers.rotateLeft(r10, 24) ^ Integers.rotateLeft(r10, 8));
            int r34 = (r33 ^ r92) ^ r102;
            int r44 = r43 ^ r142;
            int r53 = (r52 ^ r13) ^ r102;
            int r04 = r03 ^ r142;
            r82++;
            if (r82 > 16) {
                Pack.intToBigEndian(r34, bArr2, r23);
                Pack.intToBigEndian(r44, bArr2, r23 + 4);
                Pack.intToBigEndian(r53, bArr2, r23 + 8);
                Pack.intToBigEndian(r04, bArr2, r23 + 12);
                return 16;
            }
            int r45 = Integers.rotateLeft(r44, 1);
            int r54 = Integers.rotateLeft(r53, 5);
            int r05 = Integers.rotateLeft(r04, 2);
            int r46 = r45 ^ (r05 | r54);
            int r143 = ~r46;
            int r35 = r34 ^ (r54 & r143);
            int r55 = (r54 ^ (r143 ^ r05)) ^ r35;
            int r47 = r46 ^ (r35 | r55);
            int r06 = r05 ^ (r55 & r47);
            r42 = Integers.rotateLeft(r47, 31);
            r52 = Integers.rotateLeft(r55, 27);
            int r36 = Integers.rotateLeft(r35, 30);
            r32 = r06;
            r02 = r36;
        }
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "Noekeon";
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int getBlockSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void init(boolean z10, CipherParameters cipherParameters) {
        if (!(cipherParameters instanceof KeyParameter)) {
            throw new IllegalArgumentException(b.g(cipherParameters, "invalid parameter passed to Noekeon init - "));
        }
        byte[] key = ((KeyParameter) cipherParameters).getKey();
        if (key.length != 16) {
            throw new IllegalArgumentException("Key length not 128 bits.");
        }
        Pack.bigEndianToInt(key, 0, this.f11531k, 0, 4);
        if (!z10) {
            int[] r12 = this.f11531k;
            int r22 = r12[0];
            int r42 = r12[1];
            int r6 = r12[2];
            int r13 = r12[3];
            int r82 = r22 ^ r6;
            int r83 = r82 ^ (Integers.rotateLeft(r82, 8) ^ Integers.rotateLeft(r82, 24));
            int r10 = r42 ^ r13;
            int r92 = (Integers.rotateLeft(r10, 8) ^ Integers.rotateLeft(r10, 24)) ^ r10;
            int r43 = r42 ^ r83;
            int r14 = r13 ^ r83;
            int[] r84 = this.f11531k;
            r84[0] = r22 ^ r92;
            r84[1] = r43;
            r84[2] = r6 ^ r92;
            r84[3] = r14;
        }
        this._forEncryption = z10;
        this._initialised = true;
        CryptoServicesRegistrar.checkConstraints(new DefaultServiceProperties(getAlgorithmName(), 128, cipherParameters, Utils.getPurpose(z10)));
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int r32, byte[] bArr2, int r52) {
        if (!this._initialised) {
            throw new IllegalStateException(getAlgorithmName() + " not initialised");
        }
        if (r32 > bArr.length - 16) {
            throw new DataLengthException("input buffer too short");
        }
        if (r52 <= bArr2.length - 16) {
            return this._forEncryption ? encryptBlock(bArr, r32, bArr2, r52) : decryptBlock(bArr, r32, bArr2, r52);
        }
        throw new OutputLengthException("output buffer too short");
    }

    @Override // org.bouncycastle.crypto.BlockCipher
    public void reset() {
    }
}
