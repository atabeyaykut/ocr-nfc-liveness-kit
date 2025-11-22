package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.t;
import u5.u;
import w5.v;

/* loaded from: classes2.dex */
public final class g extends n5.f<t> {

    public class a extends f.b<n5.a, t> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(t tVar) throws GeneralSecurityException {
            return new p5.a(tVar.v().A());
        }
    }

    public class b extends f.a<u, t> {
        public b() {
            super(u.class);
        }

        @Override // n5.f.a
        public final t a(q0 q0Var) throws GeneralSecurityException {
            t.a aVarX = t.x();
            byte[] bArrA = v.a(((u) q0Var).t());
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarX.k();
            t.u((t) aVarX.f4393b, fVarM);
            g.this.getClass();
            aVarX.k();
            t.t((t) aVarX.f4393b);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return u.u(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            w5.a0.a(((u) q0Var).t());
        }
    }

    public g() {
        super(t.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmSivKey";
    }

    @Override // n5.f
    public final f.a<u, t> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return t.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        t tVar = (t) q0Var;
        w5.a0.c(tVar.w());
        w5.a0.a(tVar.v().size());
    }
}
