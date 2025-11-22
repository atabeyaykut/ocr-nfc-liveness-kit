package v5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import n5.q;
import u5.e0;
import u5.o;
import u5.p;
import w5.v;

/* loaded from: classes2.dex */
public final class b extends n5.f<o> {

    public class a extends f.b<q, o> {
        public a() {
            super(q.class);
        }

        @Override // n5.f.b
        public final q a(o oVar) throws GeneralSecurityException {
            o oVar2 = oVar;
            byte[] bArrA = oVar2.w().A();
            return new w5.d(oVar2.x().y(), oVar2.x().w(), f.a(oVar2.x().z()), bArrA);
        }
    }

    /* renamed from: v5.b$b, reason: collision with other inner class name */
    public class C0285b extends f.a<p, o> {
        public C0285b() {
            super(p.class);
        }

        @Override // n5.f.a
        public final o a(q0 q0Var) throws GeneralSecurityException {
            p pVar = (p) q0Var;
            o.a aVarZ = o.z();
            byte[] bArrA = v.a(pVar.v());
            i.f fVarM = i.m(bArrA, 0, bArrA.length);
            aVarZ.k();
            o.v((o) aVarZ.f4393b, fVarM);
            u5.q qVarW = pVar.w();
            aVarZ.k();
            o.u((o) aVarZ.f4393b, qVarW);
            b.this.getClass();
            aVarZ.k();
            o.t((o) aVarZ.f4393b);
            return aVarZ.i();
        }

        @Override // n5.f.a
        public final q0 b(i iVar) throws a0 {
            return p.y(iVar, com.google.crypto.tink.shaded.protobuf.p.a());
        }

        @Override // n5.f.a
        public final void c(q0 q0Var) throws GeneralSecurityException {
            p pVar = (p) q0Var;
            if (pVar.v() < 16) {
                throw new GeneralSecurityException("key_size must be at least 16 bytes");
            }
            b.g(pVar.w());
        }
    }

    public b() {
        super(o.class, new a());
    }

    public static void g(u5.q qVar) throws GeneralSecurityException {
        w5.a0.a(qVar.y());
        if (qVar.z() == u5.a0.UNKNOWN_HASH) {
            throw new GeneralSecurityException("unknown HKDF hash type");
        }
        if (qVar.w() < qVar.y() + 7 + 16 + 2) {
            throw new GeneralSecurityException("ciphertext_segment_size must be at least (derived_key_size + NONCE_PREFIX_IN_BYTES + TAG_SIZE_IN_BYTES + 2)");
        }
    }

    @Override // n5.f
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmHkdfStreamingKey";
    }

    @Override // n5.f
    public final f.a<p, o> c() {
        return new C0285b();
    }

    @Override // n5.f
    public final e0.b d() {
        return e0.b.SYMMETRIC;
    }

    @Override // n5.f
    public final q0 e(i iVar) throws a0 {
        return o.A(iVar, com.google.crypto.tink.shaded.protobuf.p.a());
    }

    @Override // n5.f
    public final void f(q0 q0Var) throws GeneralSecurityException {
        o oVar = (o) q0Var;
        w5.a0.c(oVar.y());
        g(oVar.x());
    }
}
