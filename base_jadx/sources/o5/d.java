package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.i;
import w5.q;
import w5.v;

/* loaded from: classes2.dex */
public final class d extends n5.f<u5.i> {

    public class a extends f.b<q, u5.i> {
        public a() {
            super(q.class);
        }

        @Override // n5.f.b
        public final q a(u5.i iVar) throws GeneralSecurityException {
            u5.i iVar2 = iVar;
            return new w5.b(iVar2.x().A(), iVar2.y().u());
        }
    }

    public class b extends f.a<u5.j, u5.i> {
        public b() {
            super(u5.j.class);
        }

        @Override // n5.f.a
        public final u5.i a(q0 q0Var) throws GeneralSecurityException {
            u5.j jVar = (u5.j) q0Var;
            i.a aVarA = u5.i.A();
            u5.k kVarV = jVar.v();
            aVarA.k();
            u5.i.u((u5.i) aVarA.f4393b, kVarV);
            byte[] bArrA = v.a(jVar.u());
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarA.k();
            u5.i.v((u5.i) aVarA.f4393b, fVarM);
            d.this.getClass();
            aVarA.k();
            u5.i.t((u5.i) aVarA.f4393b);
            return aVarA.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return u5.j.w(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            u5.j jVar = (u5.j) q0Var;
            w5.a0.a(jVar.u());
            u5.k kVarV = jVar.v();
            d.this.getClass();
            if (kVarV.u() < 12 || kVarV.u() > 16) {
                throw new GeneralSecurityException("invalid IV size");
            }
        }
    }

    public d() {
        super(u5.i.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrKey";
    }

    @Override // n5.f
    public final f.a<u5.j, u5.i> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return u5.i.B(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        u5.i iVar = (u5.i) q0Var;
        w5.a0.c(iVar.z());
        w5.a0.a(iVar.x().size());
        u5.k kVarY = iVar.y();
        if (kVarY.u() < 12 || kVarY.u() > 16) {
            throw new GeneralSecurityException("invalid IV size");
        }
    }
}
