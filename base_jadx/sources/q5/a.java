package q5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import n5.f;
import u5.e0;
import u5.v;
import u5.w;

/* loaded from: classes2.dex */
public final class a extends f<v> {

    /* renamed from: q5.a$a, reason: collision with other inner class name */
    public class C0223a extends f.b<n5.c, v> {
        public C0223a() {
            super(n5.c.class);
        }

        @Override // n5.f.b
        public final n5.c a(v vVar) throws GeneralSecurityException {
            return new w5.f(vVar.v().A());
        }
    }

    public class b extends f.a<w, v> {
        public b() {
            super(w.class);
        }

        @Override // n5.f.a
        public final v a(q0 q0Var) throws GeneralSecurityException {
            v.a aVarX = v.x();
            byte[] bArrA = w5.v.a(((w) q0Var).u());
            i.f fVarM = i.m(bArrA, 0, bArrA.length);
            aVarX.k();
            v.u((v) aVarX.f4393b, fVarM);
            a.this.getClass();
            aVarX.k();
            v.t((v) aVarX.f4393b);
            return aVarX.i();
        }

        @Override // n5.f.a
        public final q0 b(i iVar) throws a0 {
            return w.w(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            w wVar = (w) q0Var;
            if (wVar.u() == 64) {
                return;
            }
            throw new InvalidAlgorithmParameterException("invalid key size: " + wVar.u() + ". Valid keys must have 64 bytes.");
        }
    }

    public a() {
        super(v.class, new C0223a());
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesSivKey";
    }

    @Override // n5.f
    public final f.a<w, v> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(i iVar) throws a0 {
        return v.y(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        v vVar = (v) q0Var;
        w5.a0.c(vVar.w());
        if (vVar.v().size() == 64) {
            return;
        }
        throw new InvalidKeyException("invalid key size: " + vVar.v().size() + ". Valid keys must have 64 bytes.");
    }
}
