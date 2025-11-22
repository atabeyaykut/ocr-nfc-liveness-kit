package w5;

import java.security.GeneralSecurityException;
import java.security.InvalidKeyException;
import java.util.Arrays;
import java.util.List;
import javax.crypto.AEADBadTagException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public final class f implements n5.c {

    /* renamed from: c, reason: collision with root package name */
    public static final List f18749c = Arrays.asList(64);

    /* renamed from: d, reason: collision with root package name */
    public static final byte[] f18750d = new byte[16];

    /* renamed from: e, reason: collision with root package name */
    public static final byte[] f18751e = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1};

    /* renamed from: a, reason: collision with root package name */
    public final s f18752a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f18753b;

    public f(byte[] bArr) throws GeneralSecurityException {
        if (!f18749c.contains(Integer.valueOf(bArr.length))) {
            throw new InvalidKeyException(androidx.browser.browseractions.a.b(new StringBuilder("invalid key size: "), bArr.length, " bytes; key must have 64 bytes"));
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, bArr.length / 2);
        this.f18753b = Arrays.copyOfRange(bArr, bArr.length / 2, bArr.length);
        this.f18752a = new s(bArrCopyOfRange);
    }

    @Override // n5.c
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        if (bArr.length > 2147483631) {
            throw new GeneralSecurityException("plaintext too long");
        }
        Cipher cipherA = n.f18767e.a("AES/CTR/NoPadding");
        byte[] bArrC = c(bArr2, bArr);
        byte[] bArr3 = (byte[]) bArrC.clone();
        bArr3[8] = (byte) (bArr3[8] & 127);
        bArr3[12] = (byte) (bArr3[12] & 127);
        cipherA.init(1, new SecretKeySpec(this.f18753b, "AES"), new IvParameterSpec(bArr3));
        return h.a(bArrC, cipherA.doFinal(bArr));
    }

    @Override // n5.c
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, ClassNotFoundException {
        boolean z10;
        if (bArr.length < 16) {
            throw new GeneralSecurityException("Ciphertext too short.");
        }
        Cipher cipherA = n.f18767e.a("AES/CTR/NoPadding");
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 16);
        byte[] bArr3 = (byte[]) bArrCopyOfRange.clone();
        bArr3[8] = (byte) (bArr3[8] & 127);
        bArr3[12] = (byte) (bArr3[12] & 127);
        cipherA.init(2, new SecretKeySpec(this.f18753b, "AES"), new IvParameterSpec(bArr3));
        byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 16, bArr.length);
        byte[] bArrDoFinal = cipherA.doFinal(bArrCopyOfRange2);
        if (bArrCopyOfRange2.length == 0 && bArrDoFinal == null) {
            try {
                Class.forName("android.app.Application", false, null);
                z10 = true;
            } catch (Exception unused) {
                z10 = false;
            }
            if (z10) {
                bArrDoFinal = new byte[0];
            }
        }
        if (h.b(bArrCopyOfRange, c(bArr2, bArrDoFinal))) {
            return bArrDoFinal;
        }
        throw new AEADBadTagException("Integrity check failed.");
    }

    public final byte[] c(byte[]... bArr) throws GeneralSecurityException {
        byte[] bArrE;
        int length = bArr.length;
        s sVar = this.f18752a;
        if (length == 0) {
            return sVar.a(16, f18751e);
        }
        byte[] bArrA = sVar.a(16, f18750d);
        for (int r42 = 0; r42 < bArr.length - 1; r42++) {
            byte[] bArr2 = bArr[r42];
            if (bArr2 == null) {
                bArr2 = new byte[0];
            }
            bArrA = h.e(c5.w.m(bArrA), sVar.a(16, bArr2));
        }
        byte[] bArr3 = bArr[bArr.length - 1];
        if (bArr3.length >= 16) {
            if (bArr3.length < bArrA.length) {
                throw new IllegalArgumentException("xorEnd requires a.length >= b.length");
            }
            int length2 = bArr3.length - bArrA.length;
            bArrE = Arrays.copyOf(bArr3, bArr3.length);
            for (int r32 = 0; r32 < bArrA.length; r32++) {
                int r52 = length2 + r32;
                bArrE[r52] = (byte) (bArrE[r52] ^ bArrA[r32]);
            }
        } else {
            if (bArr3.length >= 16) {
                throw new IllegalArgumentException("x must be smaller than a block.");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr3, 16);
            bArrCopyOf[bArr3.length] = ISOFileInfo.DATA_BYTES1;
            bArrE = h.e(bArrCopyOf, c5.w.m(bArrA));
        }
        return sVar.a(16, bArrE);
    }
}
