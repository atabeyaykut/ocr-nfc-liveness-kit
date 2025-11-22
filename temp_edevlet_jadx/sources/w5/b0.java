package w5;

import java.security.InvalidKeyException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class b0 extends j {
    public b0(byte[] bArr, int r22) throws InvalidKeyException {
        super(bArr, r22);
    }

    @Override // w5.j
    public final int[] d(int[] r14, int r15) {
        if (r14.length != 6) {
            throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(r14.length * 32)));
        }
        int[] r42 = new int[16];
        int[] r02 = new int[16];
        int[] r52 = j.f18757c;
        System.arraycopy(r52, 0, r02, 0, r52.length);
        System.arraycopy(this.f18758a, 0, r02, r52.length, 8);
        r02[12] = r14[0];
        r02[13] = r14[1];
        r02[14] = r14[2];
        r02[15] = r14[3];
        j.j(r02);
        r02[4] = r02[12];
        r02[5] = r02[13];
        r02[6] = r02[14];
        r02[7] = r02[15];
        int[] r03 = Arrays.copyOf(r02, 8);
        System.arraycopy(r52, 0, r42, 0, r52.length);
        System.arraycopy(r03, 0, r42, r52.length, 8);
        r42[12] = r15;
        r42[13] = 0;
        r42[14] = r14[4];
        r42[15] = r14[5];
        return r42;
    }

    @Override // w5.j
    public final int g() {
        return 24;
    }
}
