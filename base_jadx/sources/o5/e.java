package o5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;
import u5.l;
import u5.m;
import u5.n;
import w5.v;

/* loaded from: classes2.dex */
public final class e extends n5.f<u5.l> {

    public class a extends f.b<n5.a, u5.l> {
        public a() {
            super(n5.a.class);
        }

        @Override // n5.f.b
        public final n5.a a(u5.l lVar) throws GeneralSecurityException {
            u5.l lVar2 = lVar;
            return new w5.c(lVar2.w().A(), lVar2.x().u());
        }
    }

    public class b extends f.a<m, u5.l> {
        public b() {
            super(m.class);
        }

        @Override // n5.f.a
        public final u5.l a(q0 q0Var) throws GeneralSecurityException {
            m mVar = (m) q0Var;
            l.a aVarZ = u5.l.z();
            byte[] bArrA = v.a(mVar.t());
            i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArrA, 0, bArrA.length);
            aVarZ.k();
            u5.l.v((u5.l) aVarZ.f4393b, fVarM);
            n nVarU = mVar.u();
            aVarZ.k();
            u5.l.u((u5.l) aVarZ.f4393b, nVarU);
            e.this.getClass();
            aVarZ.k();
            u5.l.t((u5.l) aVarZ.f4393b);
            return aVarZ.i();
        }

        @Override // n5.f.a
        public final q0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
            return m.v(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            m mVar = (m) q0Var;
            w5.a0.a(mVar.t());
            if (mVar.u().u() != 12 && mVar.u().u() != 16) {
                throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
            }
        }
    }

    public e() {
        super(u5.l.class, new a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // n5.f
    public final f.a<m, u5.l> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(com.google.crypto.tink.shaded.protobuf.i iVar) throws a0 {
        return u5.l.A(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        u5.l lVar = (u5.l) q0Var;
        w5.a0.c(lVar.y());
        w5.a0.a(lVar.w().size());
        if (lVar.x().u() != 12 && lVar.x().u() != 16) {
            throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
        }
    }
}
