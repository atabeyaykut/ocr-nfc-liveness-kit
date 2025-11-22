package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.k0;
import u5.l0;

/* loaded from: classes2.dex */
public final class i extends n5.f<k0> {

    public class a extends f.b<n5.a, k0> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(k0 k0Var) throws GeneralSecurityException {
            String strU = k0Var.v().u();
            return n5.j.a(strU).b(strU);
        }
    }

    public class b extends f.a<l0, k0> {
        public b() {
            super(l0.class);
        }

        @Override // n5.f.a
        public final k0 a(q0 q0Var) throws GeneralSecurityException {
            k0.a aVarX = k0.x();
            aVarX.k();
            k0.u((k0) aVarX.f4393b, (l0) q0Var);
            i.this.getClass();
            aVarX.k();
            k0.t((k0) aVarX.f4393b);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return l0.v(iVar, p.a());
        }

        @Override // n5.f.a
        public final /* bridge */ /* synthetic */ void c(q0 q0Var) throws GeneralSecurityException {
        }
    }

    public i() {
        super(k0.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsAeadKey";
    }

    @Override // n5.f
    public final f.a<l0, k0> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.REMOTE;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return k0.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        w5.a0.c(((k0) q0Var).w());
    }
}
