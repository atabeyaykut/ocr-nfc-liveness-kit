package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.r;
import u5.s;
import w5.v;

/* loaded from: classes2.dex */
public final class f extends n5.f<r> {

    public class a extends f.b<n5.a, r> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(r rVar) throws GeneralSecurityException {
            return new w5.e(rVar.v().A());
        }
    }

    public class b extends f.a<s, r> {
        public b() {
            super(s.class);
        }

        @Override // n5.f.a
        public final r a(q0 q0Var) throws GeneralSecurityException {
            r.a aVarX = r.x();
            byte[] bArrA = v.a(((s) q0Var).u());
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarX.k();
            r.u((r) aVarX.f4393b, fVarM);
            f.this.getClass();
            aVarX.k();
            r.t((r) aVarX.f4393b);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return s.w(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            w5.a0.a(((s) q0Var).u());
        }
    }

    public f() {
        super(r.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // n5.f
    public final f.a<s, r> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return r.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        r rVar = (r) q0Var;
        w5.a0.c(rVar.w());
        w5.a0.a(rVar.v().size());
    }
}
