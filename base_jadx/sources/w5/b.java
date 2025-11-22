package w5;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes2.dex */
public final class b implements q {

    /* renamed from: d, reason: collision with root package name */
    public static final a f18724d = new a();

    /* renamed from: a, reason: collision with root package name */
    public final SecretKeySpec f18725a;

    /* renamed from: b, reason: collision with root package name */
    public final int f18726b;

    /* renamed from: c, reason: collision with root package name */
    public final int f18727c;

    public class a extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return n.f18767e.a("AES/CTR/NoPadding");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public b(byte[] bArr, int r42) throws GeneralSecurityException {
        a0.a(bArr.length);
        this.f18725a = new SecretKeySpec(bArr, "AES");
        int blockSize = f18724d.get().getBlockSize();
        this.f18727c = blockSize;
        if (r42 < 12 || r42 > blockSize) {
            throw new GeneralSecurityException("invalid IV size");
        }
        this.f18726b = r42;
    }

    @Override // w5.q
    public final byte[] a(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int r22 = this.f18726b;
        int r12 = Integer.MAX_VALUE - r22;
        if (length > r12) {
            throw new GeneralSecurityException(android.support.v4.media.a.d("plaintext length can not exceed ", r12));
        }
        byte[] bArr2 = new byte[bArr.length + r22];
        byte[] bArrA = v.a(r22);
        System.arraycopy(bArrA, 0, bArr2, 0, r22);
        c(true, bArr, bArr2, 0, bArr.length, bArrA, this.f18726b);
        return bArr2;
    }

    @Override // w5.q
    public final byte[] b(byte[] bArr) throws GeneralSecurityException {
        int length = bArr.length;
        int r12 = this.f18726b;
        if (length < r12) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        byte[] bArr2 = new byte[r12];
        System.arraycopy(bArr, 0, bArr2, 0, r12);
        int length2 = bArr.length;
        int r6 = this.f18726b;
        byte[] bArr3 = new byte[length2 - r6];
        c(false, bArr, bArr3, r6, bArr.length - r6, bArr2, 0);
        return bArr3;
    }

    public final void c(boolean z10, byte[] bArr, byte[] bArr2, int r11, int r12, byte[] bArr3, int r14) throws GeneralSecurityException {
        Cipher cipher = f18724d.get();
        byte[] bArr4 = new byte[this.f18727c];
        System.arraycopy(bArr3, 0, bArr4, 0, this.f18726b);
        IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr4);
        cipher.init(z10 ? 1 : 2, this.f18725a, ivParameterSpec);
        if (cipher.doFinal(bArr, r11, r12, bArr2, r14) != r12) {
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
    }
}
