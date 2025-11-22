package w5;

import java.security.GeneralSecurityException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class p {
    public static byte[] a(byte[] bArr, byte[] bArr2, String str, byte[] bArr3, int r82) throws IllegalStateException, GeneralSecurityException {
        Mac macA = n.f.a(str);
        if (r82 > macA.getMacLength() * 255) {
            throw new GeneralSecurityException("size too large");
        }
        if (bArr2.length == 0) {
            macA.init(new SecretKeySpec(new byte[macA.getMacLength()], str));
        } else {
            macA.init(new SecretKeySpec(bArr2, str));
        }
        byte[] bArr4 = new byte[r82];
        macA.init(new SecretKeySpec(macA.doFinal(bArr), str));
        byte[] bArrDoFinal = new byte[0];
        int r12 = 1;
        int length = 0;
        while (true) {
            macA.update(bArrDoFinal);
            macA.update(bArr3);
            macA.update((byte) r12);
            bArrDoFinal = macA.doFinal();
            if (bArrDoFinal.length + length >= r82) {
                System.arraycopy(bArrDoFinal, 0, bArr4, length, r82 - length);
                return bArr4;
            }
            System.arraycopy(bArrDoFinal, 0, bArr4, length, bArrDoFinal.length);
            length += bArrDoFinal.length;
            r12++;
        }
    }
}
