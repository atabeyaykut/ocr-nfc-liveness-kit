package q5;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Logger;
import n5.l;
import n5.m;
import w5.h;

/* loaded from: classes2.dex */
public final class c implements m<n5.c, n5.c> {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f13404a = Logger.getLogger(c.class.getName());

    public static class a implements n5.c {

        /* renamed from: a, reason: collision with root package name */
        public final l<n5.c> f13405a;

        public a(l<n5.c> lVar) {
            this.f13405a = lVar;
        }

        @Override // n5.c
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            l<n5.c> lVar = this.f13405a;
            return h.a(lVar.f10579b.a(), lVar.f10579b.f10581a.a(bArr, bArr2));
        }

        @Override // n5.c
        public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            int length = bArr.length;
            l<n5.c> lVar = this.f13405a;
            if (length > 5) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 5);
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 5, bArr.length);
                Iterator<l.a<n5.c>> it = lVar.a(bArrCopyOfRange).iterator();
                while (it.hasNext()) {
                    try {
                        return it.next().f10581a.b(bArrCopyOfRange2, bArr2);
                    } catch (GeneralSecurityException e10) {
                        c.f13404a.info("ciphertext prefix matches a key, but cannot decrypt: " + e10.toString());
                    }
                }
            }
            Iterator<l.a<n5.c>> it2 = lVar.a(n5.b.f10566a).iterator();
            while (it2.hasNext()) {
                try {
                    return it2.next().f10581a.b(bArr, bArr2);
                } catch (GeneralSecurityException unused) {
                }
            }
            throw new GeneralSecurityException("decryption failed");
        }
    }

    @Override // n5.m
    public final Class<n5.c> a() {
        return n5.c.class;
    }

    @Override // n5.m
    public final n5.c b(l<n5.c> lVar) throws GeneralSecurityException {
        return new a(lVar);
    }

    @Override // n5.m
    public final Class<n5.c> c() {
        return n5.c.class;
    }
}
