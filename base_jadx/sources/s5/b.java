package s5;

import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import javax.crypto.spec.SecretKeySpec;
import n5.f;
import n5.k;
import u5.a0;
import u5.b0;
import u5.c0;
import u5.d0;
import u5.e0;
import w5.t;
import w5.u;
import w5.v;

/* loaded from: classes2.dex */
public final class b extends f<b0> {

    public class a extends f.b<k, b0> {
        public a() {
            super(k.class);
        }

        @Override // n5.f.b
        public final k a(b0 b0Var) throws GeneralSecurityException {
            b0 b0Var2 = b0Var;
            a0 a0VarU = b0Var2.y().u();
            SecretKeySpec secretKeySpec = new SecretKeySpec(b0Var2.x().A(), "HMAC");
            int r52 = b0Var2.y().v();
            int r02 = a0VarU.ordinal();
            if (r02 == 1) {
                return new u(new t("HMACSHA1", secretKeySpec), r52);
            }
            if (r02 == 3) {
                return new u(new t("HMACSHA256", secretKeySpec), r52);
            }
            if (r02 == 4) {
                return new u(new t("HMACSHA512", secretKeySpec), r52);
            }
            throw new GeneralSecurityException("unknown hash");
        }
    }

    /* renamed from: s5.b$b, reason: collision with other inner class name */
    public class C0244b extends f.a<c0, b0> {
        public C0244b() {
            super(c0.class);
        }

        @Override // n5.f.a
        public final b0 a(q0 q0Var) throws GeneralSecurityException {
            c0 c0Var = (c0) q0Var;
            b0.a aVarA = b0.A();
            b.this.getClass();
            aVarA.k();
            b0.t((b0) aVarA.f4393b);
            d0 d0VarV = c0Var.v();
            aVarA.k();
            b0.u((b0) aVarA.f4393b, d0VarV);
            byte[] bArrA = v.a(c0Var.u());
            i.f fVarM = i.m(bArrA, 0, bArrA.length);
            aVarA.k();
            b0.v((b0) aVarA.f4393b, fVarM);
            return aVarA.i();
        }

        @Override // n5.f.a
        public final q0 b(i iVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
            return c0.w(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            c0 c0Var = (c0) q0Var;
            if (c0Var.u() < 16) {
                throw new GeneralSecurityException("key too short");
            }
            b.h(c0Var.v());
        }
    }

    public b() {
        super(b0.class, new a());
    }

    public static void g(b0 b0Var) throws GeneralSecurityException {
        w5.a0.c(b0Var.z());
        if (b0Var.x().size() < 16) {
            throw new GeneralSecurityException("key too short");
        }
        h(b0Var.y());
    }

    public static void h(d0 d0Var) throws GeneralSecurityException {
        if (d0Var.v() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int r02 = d0Var.u().ordinal();
        if (r02 == 1) {
            if (d0Var.v() > 20) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (r02 == 3) {
            if (d0Var.v() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else {
            if (r02 != 4) {
                throw new GeneralSecurityException("unknown hash type");
            }
            if (d0Var.v() > 64) {
                throw new GeneralSecurityException("tag size too big");
            }
        }
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.HmacKey";
    }

    @Override // n5.f
    public final f.a<c0, b0> c() {
        return new C0244b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(i iVar) throws com.google.crypto.tink.shaded.protobuf.a0 {
        return b0.B(iVar, p.a());
    }

    @Override // n5.f
    public final /* bridge */ /* synthetic */ void f(q0 q0Var) throws GeneralSecurityException {
        g((b0) q0Var);
    }
}
