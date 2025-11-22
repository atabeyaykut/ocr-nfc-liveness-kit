package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.b0;
import u5.c0;
import u5.d;
import u5.d0;
import u5.e0;
import u5.i;
import w5.m;
import w5.q;
import w5.v;

/* loaded from: classes2.dex */
public final class c extends n5.f<u5.d> {

    public class a extends f.b<n5.a, u5.d> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(u5.d dVar) throws GeneralSecurityException {
            u5.d dVar2 = dVar;
            return new m((q) new d().b(dVar2.w(), q.class), (n5.k) new s5.b().b(dVar2.x(), n5.k.class), dVar2.x().y().v());
        }
    }

    public class b extends f.a<u5.e, u5.d> {
        public b() {
            super(u5.e.class);
        }

        @Override // n5.f.a
        public final u5.d a(q0 q0Var) throws GeneralSecurityException {
            u5.e eVar = (u5.e) q0Var;
            new d();
            u5.j jVarT = eVar.t();
            i.a aVarA = u5.i.A();
            u5.k kVarV = jVarT.v();
            aVarA.k();
            u5.i.u((u5.i) aVarA.f4393b, kVarV);
            byte[] bArrA = v.a(jVarT.u());
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarA.k();
            u5.i.v((u5.i) aVarA.f4393b, fVarM);
            aVarA.k();
            u5.i.t((u5.i) aVarA.f4393b);
            u5.i iVarI = aVarA.i();
            new s5.b();
            c0 c0VarU = eVar.u();
            b0.a aVarA2 = b0.A();
            aVarA2.k();
            b0.t((b0) aVarA2.f4393b);
            d0 d0VarV = c0VarU.v();
            aVarA2.k();
            b0.u((b0) aVarA2.f4393b, d0VarV);
            byte[] bArrA2 = v.a(c0VarU.u());
            i.f fVarM2 = com.google.crypto.tink.shaded.protobuf.i.m(bArrA2, 0, bArrA2.length);
            aVarA2.k();
            b0.v((b0) aVarA2.f4393b, fVarM2);
            b0 b0VarI = aVarA2.i();
            d.a aVarZ = u5.d.z();
            aVarZ.k();
            u5.d.u((u5.d) aVarZ.f4393b, iVarI);
            aVarZ.k();
            u5.d.v((u5.d) aVarZ.f4393b, b0VarI);
            c.this.getClass();
            aVarZ.k();
            u5.d.t((u5.d) aVarZ.f4393b);
            return aVarZ.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return u5.e.v(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            u5.e eVar = (u5.e) q0Var;
            new d();
            u5.j jVarT = eVar.t();
            w5.a0.a(jVarT.u());
            u5.k kVarV = jVarT.v();
            if (kVarV.u() < 12 || kVarV.u() > 16) {
                throw new GeneralSecurityException("invalid IV size");
            }
            new s5.b();
            c0 c0VarU = eVar.u();
            if (c0VarU.u() < 16) {
                throw new GeneralSecurityException("key too short");
            }
            s5.b.h(c0VarU.v());
            w5.a0.a(eVar.t().u());
        }
    }

    public c() {
        super(u5.d.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // n5.f
    public final f.a<u5.e, u5.d> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return u5.d.A(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        u5.d dVar = (u5.d) q0Var;
        w5.a0.c(dVar.y());
        new d();
        u5.i iVarW = dVar.w();
        w5.a0.c(iVarW.z());
        w5.a0.a(iVarW.x().size());
        u5.k kVarY = iVarW.y();
        if (kVarY.u() < 12 || kVarY.u() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
        new s5.b();
        s5.b.g(dVar.x());
    }
}
