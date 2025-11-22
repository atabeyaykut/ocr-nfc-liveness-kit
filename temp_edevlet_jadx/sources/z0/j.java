package z0;

import androidx.annotation.NonNull;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import q1.l;
import q1.m;
import r1.a;
import r1.d;

/* loaded from: classes.dex */
public final class j {

    /* renamed from: a, reason: collision with root package name */
    public final q1.i<v0.f, String> f19756a = new q1.i<>(1000);

    /* renamed from: b, reason: collision with root package name */
    public final a.c f19757b = r1.a.a(10, new a());

    public class a implements a.b<b> {
        @Override // r1.a.b
        public final b a() {
            try {
                return new b(MessageDigest.getInstance("SHA-256"));
            } catch (NoSuchAlgorithmException e10) {
                throw new RuntimeException(e10);
            }
        }
    }

    public static final class b implements a.d {

        /* renamed from: a, reason: collision with root package name */
        public final MessageDigest f19758a;

        /* renamed from: b, reason: collision with root package name */
        public final d.a f19759b = new d.a();

        public b(MessageDigest messageDigest) {
            this.f19758a = messageDigest;
        }

        @Override // r1.a.d
        @NonNull
        public final d.a r() {
            return this.f19759b;
        }
    }

    public final String a(v0.f fVar) {
        String str;
        Object objAcquire = this.f19757b.acquire();
        l.b(objAcquire);
        b bVar = (b) objAcquire;
        try {
            fVar.a(bVar.f19758a);
            byte[] bArrDigest = bVar.f19758a.digest();
            char[] cArr = m.f13319b;
            synchronized (cArr) {
                for (int r22 = 0; r22 < bArrDigest.length; r22++) {
                    int r32 = bArrDigest[r22] & 255;
                    int r42 = r22 * 2;
                    char[] cArr2 = m.f13318a;
                    cArr[r42] = cArr2[r32 >>> 4];
                    cArr[r42 + 1] = cArr2[r32 & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            this.f19757b.release(bVar);
        }
    }

    public final String b(v0.f fVar) {
        String strA;
        synchronized (this.f19756a) {
            strA = this.f19756a.a(fVar);
        }
        if (strA == null) {
            strA = a(fVar);
        }
        synchronized (this.f19756a) {
            this.f19756a.d(fVar, strA);
        }
        return strA;
    }
}
