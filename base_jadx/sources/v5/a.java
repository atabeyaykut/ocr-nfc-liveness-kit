package v5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.p;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import n5.q;
import u5.d0;
import u5.e0;
import u5.f;
import u5.h;
import w5.v;

/* loaded from: classes2.dex */
public final class a extends n5.f<u5.f> {

    /* renamed from: v5.a$a, reason: collision with other inner class name */
    public class C0284a extends f.b<q, u5.f> {
        public C0284a() {
            super(q.class);
        }

        @Override // n5.f.b
        public final q a(u5.f fVar) throws GeneralSecurityException {
            u5.f fVar2 = fVar;
            return new w5.a(fVar2.w().A(), f.a(fVar2.x().w()), fVar2.x().v(), f.a(fVar2.x().x().u()), fVar2.x().x().v(), fVar2.x().t());
        }
    }

    public class b extends f.a<u5.g, u5.f> {
        public b() {
            super(u5.g.class);
        }

        @Override // n5.f.a
        public final u5.f a(q0 q0Var) throws GeneralSecurityException {
            u5.g gVar = (u5.g) q0Var;
            f.a aVarZ = u5.f.z();
            byte[] bArrA = v.a(gVar.t());
            i.f fVarM = i.m(bArrA, 0, bArrA.length);
            aVarZ.k();
            u5.f.v((u5.f) aVarZ.f4393b, fVarM);
            h hVarU = gVar.u();
            aVarZ.k();
            u5.f.u((u5.f) aVarZ.f4393b, hVarU);
            a.this.getClass();
            aVarZ.k();
            u5.f.t((u5.f) aVarZ.f4393b);
            return aVarZ.i();
        }

        @Override // n5.f.a
        public final q0 b(i iVar) throws a0 {
            return u5.g.v(iVar, p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            u5.g gVar = (u5.g) q0Var;
            if (gVar.t() < 16) {
                throw new GeneralSecurityException("key_size must be at least 16 bytes");
            }
            a.g(gVar.u());
        }
    }

    public a() {
        super(u5.f.class, new C0284a());
    }

    public static void g(h hVar) throws GeneralSecurityException {
        w5.a0.a(hVar.v());
        u5.a0 a0VarW = hVar.w();
        u5.a0 a0Var = u5.a0.UNKNOWN_HASH;
        if (a0VarW == a0Var) {
            throw new GeneralSecurityException("unknown HKDF hash type");
        }
        if (hVar.x().u() == a0Var) {
            throw new GeneralSecurityException("unknown HMAC hash type");
        }
        d0 d0VarX = hVar.x();
        if (d0VarX.v() < 10) {
            throw new GeneralSecurityException("tag size too small");
        }
        int r12 = d0VarX.u().ordinal();
        if (r12 != 1) {
            if (r12 != 3) {
                if (r12 != 4) {
                    throw new GeneralSecurityException("unknown hash type");
                }
                if (d0VarX.v() > 64) {
                    throw new GeneralSecurityException("tag size too big");
                }
            } else if (d0VarX.v() > 32) {
                throw new GeneralSecurityException("tag size too big");
            }
        } else if (d0VarX.v() > 20) {
            throw new GeneralSecurityException("tag size too big");
        }
        if (hVar.t() < hVar.x().v() + hVar.v() + 2 + 7) {
            throw new GeneralSecurityException("ciphertext_segment_size must be at least (derived_key_size + tag_size + NONCE_PREFIX_IN_BYTES + 2)");
        }
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacStreamingKey";
    }

    @Override // n5.f
    public final f.a<u5.g, u5.f> c() {
        return new b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(i iVar) throws a0 {
        return u5.f.A(iVar, p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        u5.f fVar = (u5.f) q0Var;
        w5.a0.c(fVar.y());
        if (fVar.w().size() < 16) {
            throw new GeneralSecurityException("key_value must have at least 16 bytes");
        }
        if (fVar.w().size() < fVar.x().v()) {
            throw new GeneralSecurityException("key_value must have at least as many bits as derived keys");
        }
        g(fVar.x());
    }
}
