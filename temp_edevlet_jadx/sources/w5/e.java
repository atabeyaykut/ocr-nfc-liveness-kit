package w5;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class e implements n5.a {

    /* renamed from: b, reason: collision with root package name */
    public static final a f18747b = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f18748a;

    public class a extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return n.f18767e.a("AES/GCM/NoPadding");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public e(byte[] bArr) throws GeneralSecurityException {
        a0.a(bArr.length);
        this.f18748a = new SecretKeySpec(bArr, "AES");
    }

    public static AlgorithmParameterSpec c(byte[] bArr, int r52) throws IllegalAccessException, GeneralSecurityException, ClassNotFoundException, IllegalArgumentException {
        boolean z10;
        int r02;
        try {
            Class.forName("android.app.Application", false, null);
            z10 = true;
        } catch (Exception unused) {
            z10 = false;
        }
        if (z10) {
            try {
                r02 = Class.forName("android.os.Build$VERSION").getDeclaredField("SDK_INT").getInt(null);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException unused2) {
                r02 = -1;
            }
            if (r02 <= 19) {
                return new IvParameterSpec(bArr, 0, r52);
            }
        }
        return new GCMParameterSpec(128, bArr, 0, r52);
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws IllegalAccessException, GeneralSecurityException, ClassNotFoundException, IllegalArgumentException {
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] bArrA = v.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArrA, bArrA.length);
        a aVar = f18747b;
        aVar.get().init(1, this.f18748a, algorithmParameterSpecC);
        if (bArr2 != null && bArr2.length != 0) {
            aVar.get().updateAAD(bArr2);
        }
        int r13 = aVar.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (r13 == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(r13 - bArr.length)));
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws IllegalAccessException, GeneralSecurityException, ClassNotFoundException, IllegalArgumentException {
        if (bArr.length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArr, 12);
        a aVar = f18747b;
        aVar.get().init(2, this.f18748a, algorithmParameterSpecC);
        if (bArr2 != null && bArr2.length != 0) {
            aVar.get().updateAAD(bArr2);
        }
        return aVar.get().doFinal(bArr, 12, bArr.length - 12);
    }
}
