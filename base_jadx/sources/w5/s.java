package w5;

import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import net.sf.scuba.smartcards.ISOFileInfo;

@Immutable
/* loaded from: classes2.dex */
public final class s implements t5.a {

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f18770a;

    /* renamed from: b, reason: collision with root package name */
    public byte[] f18771b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f18772c;

    public s(byte[] bArr) throws GeneralSecurityException {
        a0.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f18770a = secretKeySpec;
        Cipher cipherA = n.f18767e.a("AES/ECB/NoPadding");
        cipherA.init(1, secretKeySpec);
        byte[] bArrM = c5.w.m(cipherA.doFinal(new byte[16]));
        this.f18771b = bArrM;
        this.f18772c = c5.w.m(bArrM);
    }

    @Override // t5.a
    public final byte[] a(int r92, byte[] bArr) throws GeneralSecurityException {
        byte[] bArrE;
        if (r92 > 16) {
            throw new InvalidAlgorithmParameterException("outputLength too large, max is 16 bytes");
        }
        Cipher cipherA = n.f18767e.a("AES/ECB/NoPadding");
        cipherA.init(1, this.f18770a);
        int r22 = Math.max(1, (int) Math.ceil(bArr.length / 16.0d));
        if (r22 * 16 == bArr.length) {
            bArrE = h.d((r22 - 1) * 16, bArr, 0, this.f18771b, 16);
        } else {
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, (r22 - 1) * 16, bArr.length);
            if (bArrCopyOfRange.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArrCopyOfRange, 16);
            bArrCopyOf[bArrCopyOfRange.length] = ISOFileInfo.DATA_BYTES1;
            bArrE = h.e(bArrCopyOf, this.f18772c);
        }
        byte[] bArrDoFinal = new byte[16];
        for (int r52 = 0; r52 < r22 - 1; r52++) {
            bArrDoFinal = cipherA.doFinal(h.d(0, bArrDoFinal, r52 * 16, bArr, 16));
        }
        return Arrays.copyOf(cipherA.doFinal(h.e(bArrE, bArrDoFinal)), r92);
    }
}
