package w5;

import java.security.InvalidKeyException;

/* loaded from: classes2.dex */
public final class i extends j {
    public i(byte[] bArr, int r22) throws InvalidKeyException {
        super(bArr, r22);
    }

    @Override // w5.j
    public final int[] d(int[] r6, int r72) {
        if (r6.length != 3) {
            throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(r6.length * 32)));
        }
        int[] r02 = new int[16];
        int[] r12 = j.f18757c;
        System.arraycopy(r12, 0, r02, 0, r12.length);
        System.arraycopy(this.f18758a, 0, r02, r12.length, 8);
        r02[12] = r72;
        System.arraycopy(r6, 0, r02, 13, r6.length);
        return r02;
    }

    @Override // w5.j
    public final int g() {
        return 12;
    }
}
