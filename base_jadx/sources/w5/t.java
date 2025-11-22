package w5;

import com.google.errorprone.annotations.Immutable;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

@Immutable
/* loaded from: classes2.dex */
public final class t implements t5.a {

    /* renamed from: a, reason: collision with root package name */
    public final a f18773a;

    /* renamed from: b, reason: collision with root package name */
    public final String f18774b;

    /* renamed from: c, reason: collision with root package name */
    public final Key f18775c;

    /* renamed from: d, reason: collision with root package name */
    public final int f18776d;

    public class a extends ThreadLocal<Mac> {
        public a() {
        }

        @Override // java.lang.ThreadLocal
        public final Mac initialValue() throws InvalidKeyException {
            t tVar = t.this;
            try {
                Mac macA = n.f.a(tVar.f18774b);
                macA.init(tVar.f18775c);
                return macA;
            } catch (GeneralSecurityException e10) {
                throw new IllegalStateException(e10);
            }
        }
    }

    public t(String str, SecretKeySpec secretKeySpec) throws GeneralSecurityException {
        int r32;
        a aVar = new a();
        this.f18773a = aVar;
        this.f18774b = str;
        this.f18775c = secretKeySpec;
        if (secretKeySpec.getEncoded().length < 16) {
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        switch (str) {
            case "HMACSHA1":
                r32 = 20;
                break;
            case "HMACSHA256":
                r32 = 32;
                break;
            case "HMACSHA384":
                r32 = 48;
                break;
            case "HMACSHA512":
                r32 = 64;
                break;
            default:
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
        }
        this.f18776d = r32;
        aVar.get();
    }

    @Override // t5.a
    public final byte[] a(int r32, byte[] bArr) throws IllegalStateException, GeneralSecurityException {
        if (r32 > this.f18776d) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        a aVar = this.f18773a;
        aVar.get().update(bArr);
        return Arrays.copyOf(aVar.get().doFinal(), r32);
    }
}
