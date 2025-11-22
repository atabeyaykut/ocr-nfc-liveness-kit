package o5;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Logger;
import n5.l;
import n5.m;

/* loaded from: classes2.dex */
public final class b implements m<n5.a, n5.a> {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f11234a = Logger.getLogger(b.class.getName());

    public static class a implements n5.a {

        /* renamed from: a, reason: collision with root package name */
        public final n5.l<n5.a> f11235a;

        public a(n5.l lVar) {
            this.f11235a = lVar;
        }

        @Override // n5.a
        public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            n5.l<n5.a> lVar = this.f11235a;
            return w5.h.a(lVar.f10579b.a(), lVar.f10579b.f10581a.a(bArr, bArr2));
        }

        @Override // n5.a
        public final byte[] b(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            int length = bArr.length;
            n5.l<n5.a> lVar = this.f11235a;
            if (length > 5) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, 5);
                byte[] bArrCopyOfRange2 = Arrays.copyOfRange(bArr, 5, bArr.length);
                Iterator<l.a<n5.a>> it = lVar.a(bArrCopyOfRange).iterator();
                while (it.hasNext()) {
                    try {
                        return it.next().f10581a.b(bArrCopyOfRange2, bArr2);
                    } catch (GeneralSecurityException e10) {
                        b.f11234a.info("ciphertext prefix matches a key, but cannot decrypt: " + e10.toString());
                    }
                }
            }
            Iterator<l.a<n5.a>> it2 = lVar.a(n5.b.f10566a).iterator();
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
    public final Class<n5.a> a() {
        return n5.a.class;
    }

    @Override // n5.m
    public final n5.a b(n5.l<n5.a> lVar) throws GeneralSecurityException {
        return new a(lVar);
    }

    @Override // n5.m
    public final Class<n5.a> c() {
        return n5.a.class;
    }
}
