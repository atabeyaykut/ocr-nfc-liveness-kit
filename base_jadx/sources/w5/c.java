package w5;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.AEADBadTagException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import net.sf.scuba.smartcards.ISOFileInfo;

/* loaded from: classes2.dex */
public final class c implements n5.a {

    /* renamed from: e, reason: collision with root package name */
    public static final a f18728e = new a();
    public static final b f = new b();

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f18729a;

    /* renamed from: b, reason: collision with root package name */
    public final byte[] f18730b;

    /* renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f18731c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18732d;

    public class a extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return n.f18767e.a("AES/ECB/NOPADDING");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public class b extends ThreadLocal<Cipher> {
        @Override // java.lang.ThreadLocal
        public final Cipher initialValue() {
            try {
                return n.f18767e.a("AES/CTR/NOPADDING");
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public c(byte[] bArr, int r42) throws GeneralSecurityException {
        if (r42 != 12 && r42 != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f18732d = r42;
        a0.a(bArr.length);
        SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
        this.f18731c = secretKeySpec;
        Cipher cipher = f18728e.get();
        cipher.init(1, secretKeySpec);
        byte[] bArrC = c(cipher.doFinal(new byte[16]));
        this.f18729a = bArrC;
        this.f18730b = c(bArrC);
    }

    public static byte[] c(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int r22 = 0;
        while (r22 < 15) {
            int r42 = r22 + 1;
            bArr2[r22] = (byte) (((bArr[r22] << 1) ^ ((bArr[r42] & 255) >>> 7)) & 255);
            r22 = r42;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & ISOFileInfo.DATA_BYTES1) != 0 ? 135 : 0));
        return bArr2;
    }

    public static byte[] e(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int r22 = 0; r22 < length; r22++) {
            bArr3[r22] = (byte) (bArr[r22] ^ bArr2[r22]);
        }
        return bArr3;
    }

    @Override // n5.a
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int r82 = this.f18732d;
        if (length > (Integer.MAX_VALUE - r82) - 16) {
            throw new GeneralSecurityException("plaintext too long");
        }
        byte[] bArr3 = new byte[bArr.length + r82 + 16];
        byte[] bArrA = v.a(r82);
        System.arraycopy(bArrA, 0, bArr3, 0, r82);
        Cipher cipher = f18728e.get();
        SecretKeySpec secretKeySpec = this.f18731c;
        cipher.init(1, secretKeySpec);
        byte[] bArrD = d(cipher, 0, bArrA, 0, bArrA.length);
        byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArrD2 = d(cipher, 1, bArr4, 0, bArr4.length);
        Cipher cipher2 = f.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(bArrD));
        cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f18732d);
        byte[] bArrD3 = d(cipher, 2, bArr3, this.f18732d, bArr.length);
        int length2 = bArr.length + r82;
        for (int r11 = 0; r11 < 16; r11++) {
            bArr3[length2 + r11] = (byte) ((bArrD2[r11] ^ bArrD[r11]) ^ bArrD3[r11]);
        }
        return bArr3;
    }

    @Override // n5.a
    public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        int length = bArr.length;
        int r82 = this.f18732d;
        int r92 = (length - r82) - 16;
        if (r92 < 0) {
            throw new GeneralSecurityException("ciphertext too short");
        }
        Cipher cipher = f18728e.get();
        SecretKeySpec secretKeySpec = this.f18731c;
        cipher.init(1, secretKeySpec);
        byte[] bArrD = d(cipher, 0, bArr, 0, this.f18732d);
        byte[] bArr3 = bArr2 == null ? new byte[0] : bArr2;
        byte[] bArrD2 = d(cipher, 1, bArr3, 0, bArr3.length);
        byte[] bArrD3 = d(cipher, 2, bArr, this.f18732d, r92);
        int length2 = bArr.length - 16;
        byte b10 = 0;
        for (int r14 = 0; r14 < 16; r14++) {
            b10 = (byte) (b10 | (((bArr[length2 + r14] ^ bArrD2[r14]) ^ bArrD[r14]) ^ bArrD3[r14]));
        }
        if (b10 != 0) {
            throw new AEADBadTagException("tag mismatch");
        }
        Cipher cipher2 = f.get();
        cipher2.init(1, secretKeySpec, new IvParameterSpec(bArrD));
        return cipher2.doFinal(bArr, r82, r92);
    }

    public final byte[] d(Cipher cipher, int r92, byte[] bArr, int r11, int r12) throws BadPaddingException, IllegalBlockSizeException {
        byte[] bArrCopyOf;
        byte[] bArr2 = new byte[16];
        bArr2[15] = (byte) r92;
        byte[] bArr3 = this.f18729a;
        if (r12 == 0) {
            return cipher.doFinal(e(bArr2, bArr3));
        }
        byte[] bArrDoFinal = cipher.doFinal(bArr2);
        int r32 = 0;
        while (r12 - r32 > 16) {
            for (int r42 = 0; r42 < 16; r42++) {
                bArrDoFinal[r42] = (byte) (bArrDoFinal[r42] ^ bArr[(r11 + r32) + r42]);
            }
            bArrDoFinal = cipher.doFinal(bArrDoFinal);
            r32 += 16;
        }
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, r32 + r11, r11 + r12);
        if (bArrCopyOfRange.length == 16) {
            bArrCopyOf = e(bArrCopyOfRange, bArr3);
        } else {
            bArrCopyOf = Arrays.copyOf(this.f18730b, 16);
            for (int r22 = 0; r22 < bArrCopyOfRange.length; r22++) {
                bArrCopyOf[r22] = (byte) (bArrCopyOf[r22] ^ bArrCopyOfRange[r22]);
            }
            bArrCopyOf[bArrCopyOfRange.length] = (byte) (bArrCopyOf[bArrCopyOfRange.length] ^ ISOFileInfo.DATA_BYTES1);
        }
        return cipher.doFinal(e(bArrDoFinal, bArrCopyOf));
    }
}
