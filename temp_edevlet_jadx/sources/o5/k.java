package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.m0;
import u5.n0;

/* loaded from: classes2.dex */
public final class k extends n5.f<m0> {

    public class a extends f.b<n5.a, m0> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(m0 m0Var) throws GeneralSecurityException {
            m0 m0Var2 = m0Var;
            String strV = m0Var2.v().v();
            return new j(m0Var2.v().u(), n5.j.a(strV).b(strV));
        }
    }

    public class b extends f.a<n0, m0> {
        public b() {
            super(n0.class);
        }

        @Override // n5.f.a
        public final m0 a(q0 q0Var) throws GeneralSecurityException {
            m0.a aVarX = m0.x();
            aVarX.k();
            m0.u((m0) aVarX.f4393b, (n0) q0Var);
            k.this.getClass();
            aVarX.k();
            m0.t((m0) aVarX.f4393b);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return n0.w(iVar, p.a());
        }

        @Override // n5.f.a
        public final /* bridge */ /* synthetic */ void c(q0 q0Var) throws GeneralSecurityException {
        }
    }

    public k() {
        super(m0.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey";
    }

    @Override // n5.f
    public final f.a<n0, m0> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.REMOTE;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return m0.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        w5.a0.c(((m0) q0Var).w());
    }
}
