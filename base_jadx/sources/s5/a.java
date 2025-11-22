package s5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import n5.k;
import u5.a;
import u5.e0;
import w5.s;
import w5.u;
import w5.v;

/* loaded from: classes2.dex */
public final class a extends f<u5.a> {

    /* renamed from: s5.a$a, reason: collision with other inner class name */
    public class C0243a extends f.b<k, u5.a> {
        public C0243a() {
            super(k.class);
        }

        @Override // n5.f.b
        public final k a(u5.a aVar) throws GeneralSecurityException {
            u5.a aVar2 = aVar;
            return new u(new s(aVar2.w().A()), aVar2.x().u());
        }
    }

    public class b extends f.a<u5.b, u5.a> {
        public b() {
            super(u5.b.class);
        }

        @Override // n5.f.a
        public final u5.a a(q0 q0Var) throws GeneralSecurityException {
            u5.b bVar = (u5.b) q0Var;
            a.C0275a c0275aZ = u5.a.z();
            c0275aZ.k();
            u5.a.t((u5.a) c0275aZ.f4393b);
            byte[] bArrA = v.a(bVar.t());
            i.f fVarM = i.m(bArrA, 0, bArrA.length);
            c0275aZ.k();
            u5.a.u((u5.a) c0275aZ.f4393b, fVarM);
            u5.c cVarU = bVar.u();
            c0275aZ.k();
            u5.a.v((u5.a) c0275aZ.f4393b, cVarU);
            return c0275aZ.i();
        }

        @Override // n5.f.a
        public final q0 b(i iVar) throws a0 {
            return u5.b.v(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            u5.b bVar = (u5.b) q0Var;
            a.g(bVar.u());
            if (bVar.t() != 32) {
                throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
            }
        }
    }

    public a() {
        super(u5.a.class, new C0243a());
    }

    public static void g(u5.c cVar) throws GeneralSecurityException {
        if (cVar.u() < 10) {
            throw new GeneralSecurityException("tag size too short");
        }
        if (cVar.u() > 16) {
            throw new GeneralSecurityException("tag size too long");
        }
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCmacKey";
    }

    @Override // n5.f
    public final f.a<u5.b, u5.a> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(i iVar) throws a0 {
        return u5.a.A(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        u5.a aVar = (u5.a) q0Var;
        w5.a0.c(aVar.y());
        if (aVar.w().size() != 32) {
            throw new GeneralSecurityException("AesCmacKey size wrong, must be 32 bytes");
        }
        g(aVar.x());
    }
}
