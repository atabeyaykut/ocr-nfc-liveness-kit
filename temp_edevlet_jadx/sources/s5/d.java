package s5;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import java.util.Iterator;
import java.util.logging.Logger;
import n5.k;
import n5.l;
import n5.m;
import u5.o0;
import w5.h;

/* loaded from: classes2.dex */
public final class d implements m<k, k> {

    /* renamed from: a, reason: collision with root package name */
    public static final Logger f15274a = Logger.getLogger(d.class.getName());

    public static class a implements k {

        /* renamed from: a, reason: collision with root package name */
        public final l<k> f15275a;

        /* renamed from: b, reason: collision with root package name */
        public final byte[] f15276b = {0};

        public a(l lVar) {
            this.f15275a = lVar;
        }

        @Override // n5.k
        public final void a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
            if (bArr.length <= 5) {
                throw new GeneralSecurityException("tag too short");
            }
            byte[] bArrCopyOf = Arrays.copyOf(bArr, 5);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 5, bArr.length);
            l<k> lVar = this.f15275a;
            for (l.a<k> aVar : lVar.a(bArrCopyOf)) {
                try {
                    boolean zEquals = aVar.f10584d.equals(o0.LEGACY);
                    k kVar = aVar.f10581a;
                    if (zEquals) {
                        kVar.a(bArrCopyOfRange, h.a(bArr2, this.f15276b));
                        return;
                    } else {
                        kVar.a(bArrCopyOfRange, bArr2);
                        return;
                    }
                } catch (GeneralSecurityException e10) {
                    d.f15274a.info("tag prefix matches a key, but cannot verify: " + e10);
                }
            }
            Iterator<l.a<k>> it = lVar.a(n5.b.f10566a).iterator();
            while (it.hasNext()) {
                try {
                    it.next().f10581a.a(bArr, bArr2);
                    return;
                } catch (GeneralSecurityException unused) {
                }
            }
            throw new GeneralSecurityException("invalid MAC");
        }

        @Override // n5.k
        public final byte[] b(byte[] bArr) throws GeneralSecurityException {
            l<k> lVar = this.f15275a;
            return lVar.f10579b.f10584d.equals(o0.LEGACY) ? h.a(lVar.f10579b.a(), lVar.f10579b.f10581a.b(h.a(bArr, this.f15276b))) : h.a(lVar.f10579b.a(), lVar.f10579b.f10581a.b(bArr));
        }
    }

    @Override // n5.m
    public final Class<k> a() {
        return k.class;
    }

    @Override // n5.m
    public final k b(l<k> lVar) throws GeneralSecurityException {
        return new a(lVar);
    }

    @Override // n5.m
    public final Class<k> c() {
        return k.class;
    }
}
