package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.x;
import u5.y;
import w5.v;

/* loaded from: classes2.dex */
public final class h extends n5.f<x> {

    public class a extends f.b<n5.a, x> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(x xVar) throws GeneralSecurityException {
            return new w5.k(xVar.v().A());
        }
    }

    public class b extends f.a<y, x> {
        public b() {
            super(y.class);
        }

        @Override // n5.f.a
        public final x a(q0 q0Var) throws GeneralSecurityException {
            x.a aVarX = x.x();
            h.this.getClass();
            aVarX.k();
            x.t((x) aVarX.f4393b);
            byte[] bArrA = v.a(32);
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarX.k();
            x.u((x) aVarX.f4393b, fVarM);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return y.t(iVar, p.a());
        }

        @Override // n5.f.a
        public final /* bridge */ /* synthetic */ void c(q0 q0Var) throws GeneralSecurityException {
        }
    }

    public h() {
        super(x.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key";
    }

    @Override // n5.f
    public final f.a<y, x> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return x.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        x xVar = (x) q0Var;
        w5.a0.c(xVar.w());
        if (xVar.v().size() != 32) {
            throw new GeneralSecurityException("invalid ChaCha20Poly1305Key: incorrect key length");
        }
    }
}
