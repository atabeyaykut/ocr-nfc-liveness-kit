package p5;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.spec.SecretKeySpec;
import w5.a0;
import w5.n;
import w5.v;

/* loaded from: classes2.dex */
public final class a implements n5.a {

    /* renamed from: b, reason: collision with root package name */
    public static final C0214a f12827b = new C0214a();

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f12828a;

    /* renamed from: p5.a$a, reason: collision with other inner class name */
    public class C0214a extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return n.f18767e.a("AES/GCM-SIV/NoPadding");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public a(byte[] bArr) throws GeneralSecurityException {
        a0.a(bArr.length);
        this.f12828a = new SecretKeySpec(bArr, "AES");
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.security.spec.AlgorithmParameterSpec c(byte[] r3, int r4) throws java.security.GeneralSecurityException, java.lang.ClassNotFoundException {
        /*
            r0 = 0
            java.lang.String r1 = "javax.crypto.spec.GCMParameterSpec"
            java.lang.Class.forName(r1)     // Catch: java.lang.ClassNotFoundException -> Le
            javax.crypto.spec.GCMParameterSpec r1 = new javax.crypto.spec.GCMParameterSpec     // Catch: java.lang.ClassNotFoundException -> Le
            r2 = 128(0x80, float:1.8E-43)
            r1.<init>(r2, r3, r0, r4)     // Catch: java.lang.ClassNotFoundException -> Le
            return r1
        Le:
            java.lang.String r1 = "android.app.Application"
            r2 = 0
            java.lang.Class.forName(r1, r0, r2)     // Catch: java.lang.Exception -> L16
            r1 = 1
            goto L17
        L16:
            r1 = 0
        L17:
            if (r1 == 0) goto L1f
            javax.crypto.spec.IvParameterSpec r1 = new javax.crypto.spec.IvParameterSpec
            r1.<init>(r3, r0, r4)
            return r1
        L1f:
            java.security.GeneralSecurityException r3 = new java.security.GeneralSecurityException
            java.lang.String r4 = "cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found"
            r3.<init>(r4)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p5.a.c(byte[], int):java.security.spec.AlgorithmParameterSpec");
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, ClassNotFoundException {
        if (bArr.length > 2147483619) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + 12 + 16];
        byte[] bArrA = v.a(12);
        System.arraycopy(bArrA, 0, bArr3, 0, 12);
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArrA, bArrA.length);
        C0214a c0214a = f12827b;
        c0214a.get().init(1, this.f12828a, algorithmParameterSpecC);
        if (bArr2 != null && bArr2.length != 0) {
            c0214a.get().updateAAD(bArr2);
        }
        int r13 = c0214a.get().doFinal(bArr, 0, bArr.length, bArr3, 12);
        if (r13 == bArr.length + 16) {
            return bArr3;
        }
        throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(r13 - bArr.length)));
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException, ClassNotFoundException {
        if (bArr.length < 28) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        AlgorithmParameterSpec algorithmParameterSpecC = c(bArr, 12);
        C0214a c0214a = f12827b;
        c0214a.get().init(2, this.f12828a, algorithmParameterSpecC);
        if (bArr2 != null && bArr2.length != 0) {
            c0214a.get().updateAAD(bArr2);
        }
        return c0214a.get().doFinal(bArr, 12, bArr.length - 12);
    }
}
