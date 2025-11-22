package n5;

import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.Collections;
import java.util.Iterator;
import u5.e0;
import u5.f0;
import u5.g0;
import u5.i0;
import u5.o0;

/* loaded from: classes2.dex */
public final class h {

    /* renamed from: a, reason: collision with root package name */
    public final i0.a f10576a;

    public h(i0.a aVar) {
        this.f10576a = aVar;
    }

    public static int f() {
        SecureRandom secureRandom = new SecureRandom();
        byte[] bArr = new byte[4];
        int r32 = 0;
        while (r32 == 0) {
            secureRandom.nextBytes(bArr);
            r32 = ((bArr[0] & 127) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
        }
        return r32;
    }

    @Deprecated
    public final synchronized void a(g0 g0Var) throws GeneralSecurityException {
        i0.b bVarD = d(g0Var);
        i0.a aVar = this.f10576a;
        aVar.k();
        i0.u((i0) aVar.f4393b, bVarD);
    }

    public final synchronized g b() throws GeneralSecurityException {
        i0 i0VarI;
        i0VarI = this.f10576a.i();
        if (i0VarI.w() <= 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        return new g(i0VarI);
    }

    public final synchronized boolean c(int r32) {
        Iterator it = Collections.unmodifiableList(((i0) this.f10576a.f4393b).x()).iterator();
        while (it.hasNext()) {
            if (((i0.b) it.next()).y() == r32) {
                return true;
            }
        }
        return false;
    }

    public final synchronized i0.b d(g0 g0Var) throws GeneralSecurityException {
        i0.b.a aVarC;
        e0 e0VarD = p.d(g0Var);
        int r12 = e();
        o0 o0VarX = g0Var.x();
        if (o0VarX == o0.UNKNOWN_PREFIX) {
            o0VarX = o0.TINK;
        }
        aVarC = i0.b.C();
        aVarC.k();
        i0.b.t((i0.b) aVarC.f4393b, e0VarD);
        aVarC.k();
        i0.b.w((i0.b) aVarC.f4393b, r12);
        aVarC.k();
        i0.b.v((i0.b) aVarC.f4393b);
        aVarC.k();
        i0.b.u((i0.b) aVarC.f4393b, o0VarX);
        return aVarC.i();
    }

    public final synchronized int e() {
        int r02;
        do {
            r02 = f();
        } while (c(r02));
        return r02;
    }

    public final synchronized void g(int r42) throws GeneralSecurityException {
        for (int r02 = 0; r02 < ((i0) this.f10576a.f4393b).w(); r02++) {
            i0.b bVarV = ((i0) this.f10576a.f4393b).v(r02);
            if (bVarV.y() == r42) {
                if (!bVarV.A().equals(f0.ENABLED)) {
                    throw new GeneralSecurityException("cannot set key as primary because it's not enabled: " + r42);
                }
                i0.a aVar = this.f10576a;
                aVar.k();
                i0.t((i0) aVar.f4393b, r42);
            }
        }
        throw new GeneralSecurityException("key not found: " + r42);
    }
}
