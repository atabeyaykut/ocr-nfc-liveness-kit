package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.q0;
import u5.r0;
import w5.c0;
import w5.v;

/* loaded from: classes2.dex */
public final class l extends n5.f<q0> {

    public class a extends f.b<n5.a, q0> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(q0 q0Var) throws GeneralSecurityException {
            return new c0(q0Var.v().A());
        }
    }

    public class b extends f.a<r0, q0> {
        public b() {
            super(r0.class);
        }

        @Override // n5.f.a
        public final q0 a(com.google.crypto.tink.shaded.protobuf.q0 q0Var) throws GeneralSecurityException {
            q0.a aVarX = q0.x();
            l.this.getClass();
            aVarX.k();
            q0.t((q0) aVarX.f4393b);
            byte[] bArrA = v.a(32);
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarX.k();
            q0.u((q0) aVarX.f4393b, fVarM);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final com.google.crypto.tink.shaded.protobuf.q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return r0.t(iVar, p.a());
        }

        @Override // n5.f.a
        public final /* bridge */ /* synthetic */ void c(com.google.crypto.tink.shaded.protobuf.q0 q0Var) throws GeneralSecurityException {
        }
    }

    public l() {
        super(q0.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // n5.f
    public final f.a<r0, q0> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final com.google.crypto.tink.shaded.protobuf.q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return q0.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(com.google.crypto.tink.shaded.protobuf.q0 q0Var) throws GeneralSecurityException {
        q0 q0Var2 = (q0) q0Var;
        w5.a0.c(q0Var2.w());
        if (q0Var2.v().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }
}
