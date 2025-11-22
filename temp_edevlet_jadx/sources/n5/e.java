package n5;

import com.google.crypto.tink.shaded.protobuf.i;
import com.google.errorprone.annotations.Immutable;
import u5.g0;
import u5.o0;

@Immutable
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final g0 f10569a;

    public e(g0 g0Var) {
        this.f10569a = g0Var;
    }

    public static e a(String str, byte[] bArr, int r52) {
        o0 o0Var;
        g0.a aVarA = g0.A();
        aVarA.k();
        g0.t((g0) aVarA.f4393b, str);
        i.f fVarM = com.google.crypto.tink.shaded.protobuf.i.m(bArr, 0, bArr.length);
        aVarA.k();
        g0.u((g0) aVarA.f4393b, fVarM);
        if (r52 == 0) {
            throw null;
        }
        int r53 = r52 - 1;
        if (r53 == 0) {
            o0Var = o0.TINK;
        } else if (r53 == 1) {
            o0Var = o0.LEGACY;
        } else if (r53 == 2) {
            o0Var = o0.RAW;
        } else {
            if (r53 != 3) {
                throw new IllegalArgumentException("Unknown output prefix type");
            }
            o0Var = o0.CRUNCHY;
        }
        aVarA.k();
        g0.v((g0) aVarA.f4393b, o0Var);
        return new e(aVarA.i());
    }
}
