package org.bouncycastle.pqc.crypto.ntru;

import org.bouncycastle.crypto.EncapsulatedSecretExtractor;
import org.bouncycastle.crypto.digests.SHA3Digest;
import org.bouncycastle.pqc.math.ntru.parameters.NTRUParameterSet;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class NTRUKEMExtractor implements EncapsulatedSecretExtractor {
    private final NTRUPrivateKeyParameters ntruPrivateKey;
    private final NTRUParameters params;

    public NTRUKEMExtractor(NTRUPrivateKeyParameters nTRUPrivateKeyParameters) {
        this.params = nTRUPrivateKeyParameters.getParameters();
        this.ntruPrivateKey = nTRUPrivateKeyParameters;
    }

    private void cmov(byte[] bArr, byte[] bArr2, byte b10) {
        byte b11 = (byte) ((~b10) + 1);
        for (int r02 = 0; r02 < bArr.length; r02++) {
            byte b12 = bArr[r02];
            bArr[r02] = (byte) (b12 ^ ((bArr2[r02] ^ b12) & b11));
        }
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public byte[] extractSecret(byte[] bArr) {
        NTRUParameterSet nTRUParameterSet = this.params.parameterSet;
        byte[] bArr2 = this.ntruPrivateKey.privateKey;
        int r32 = nTRUParameterSet.ntruCiphertextBytes() + nTRUParameterSet.prfKeyBytes();
        byte[] bArr3 = new byte[r32];
        OWCPADecryptResult oWCPADecryptResultDecrypt = new NTRUOWCPA(nTRUParameterSet).decrypt(bArr, this.ntruPrivateKey.privateKey);
        byte[] bArr4 = oWCPADecryptResultDecrypt.rm;
        int r42 = oWCPADecryptResultDecrypt.fail;
        SHA3Digest sHA3Digest = new SHA3Digest(256);
        byte[] bArr5 = new byte[sHA3Digest.getDigestSize()];
        sHA3Digest.update(bArr4, 0, bArr4.length);
        sHA3Digest.doFinal(bArr5, 0);
        for (int r82 = 0; r82 < nTRUParameterSet.prfKeyBytes(); r82++) {
            bArr3[r82] = bArr2[nTRUParameterSet.owcpaSecretKeyBytes() + r82];
        }
        for (int r12 = 0; r12 < nTRUParameterSet.ntruCiphertextBytes(); r12++) {
            bArr3[nTRUParameterSet.prfKeyBytes() + r12] = bArr[r12];
        }
        sHA3Digest.reset();
        sHA3Digest.update(bArr3, 0, r32);
        sHA3Digest.doFinal(bArr4, 0);
        cmov(bArr5, bArr4, (byte) r42);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr5, 0, nTRUParameterSet.sharedKeyBytes());
        Arrays.clear(bArr5);
        return bArrCopyOfRange;
    }

    @Override // org.bouncycastle.crypto.EncapsulatedSecretExtractor
    public int getEncapsulationLength() {
        return this.params.parameterSet.ntruCiphertextBytes();
    }
}
