package n5;

import com.google.crypto.tink.shaded.protobuf.a0;
import java.io.IOException;
import java.security.GeneralSecurityException;
import u5.i0;
import u5.z;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final i0 f10575a;

    public g(i0 i0Var) {
        this.f10575a = i0Var;
    }

    public static final g b(r5.d dVar, a aVar) throws GeneralSecurityException, IOException {
        z zVarX = z.x(dVar.a(), com.google.crypto.tink.shaded.protobuf.p.a());
        if (zVarX.v().size() == 0) {
            throw new GeneralSecurityException("empty keyset");
        }
        try {
            i0 i0VarA = i0.A(aVar.b(zVarX.v().A(), new byte[0]), com.google.crypto.tink.shaded.protobuf.p.a());
            if (i0VarA.w() > 0) {
                return new g(i0VarA);
            }
            throw new GeneralSecurityException("empty keyset");
        } catch (a0 unused) {
            throw new GeneralSecurityException("invalid keyset, corrupted key material");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x018b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:112:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x016f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <P> P a(java.lang.Class<P> r15) throws java.security.GeneralSecurityException {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: n5.g.a(java.lang.Class):java.lang.Object");
    }

    public final String toString() {
        return r.a(this.f10575a).toString();
    }
}
