package w5;

import java.security.SecureRandom;

/* loaded from: classes2.dex */
public final class v {

    /* renamed from: a, reason: collision with root package name */
    public static final a f18780a = new a();

    public class a extends ThreadLocal<SecureRandom> {
        @Override // java.lang.ThreadLocal
        public final SecureRandom initialValue() {
            SecureRandom secureRandom = new SecureRandom();
            secureRandom.nextLong();
            return secureRandom;
        }
    }

    public static byte[] a(int r12) {
        byte[] bArr = new byte[r12];
        f18780a.get().nextBytes(bArr);
        return bArr;
    }
}
