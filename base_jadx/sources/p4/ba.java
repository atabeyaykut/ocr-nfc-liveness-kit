package p4;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;

/* loaded from: classes.dex */
public final class ba implements u9 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final c6.t f12278a;

    /* renamed from: b, reason: collision with root package name */
    public final c6.t f12279b;

    /* renamed from: c, reason: collision with root package name */
    public final o9 f12280c;

    public ba(Context context, o9 o9Var) {
        this.f12280c = o9Var;
        s2.a aVar = s2.a.f14855e;
        u2.w.b(context);
        final u2.t tVarC = u2.w.a().c(aVar);
        if (s2.a.f14854d.contains(new r2.b("json"))) {
            this.f12278a = new c6.t(new a7.b() { // from class: p4.z9
                @Override // a7.b
                public final Object get() {
                    return tVarC.a("FIREBASE_ML_SDK", new r2.b("json"), c5.u.f2022l);
                }
            });
        }
        this.f12279b = new c6.t(new a7.b() { // from class: p4.aa
            @Override // a7.b
            public final Object get() {
                return tVarC.a("FIREBASE_ML_SDK", new r2.b("proto"), c5.v.f2051d);
            }
        });
    }

    @VisibleForTesting
    public static r2.a b(o9 o9Var, y9 y9Var) throws IOException {
        byte[] bArrA = y9Var.a(o9Var.a());
        return y9Var.f12795c != 0 ? new r2.a(bArrA, r2.d.DEFAULT) : new r2.a(bArrA, r2.d.VERY_LOW);
    }

    @Override // p4.u9
    public final void a(y9 y9Var) {
        c6.t tVar;
        o9 o9Var = this.f12280c;
        if (o9Var.a() == 0) {
            tVar = this.f12278a;
            if (tVar == null) {
                return;
            }
        } else {
            tVar = this.f12279b;
        }
        ((r2.f) tVar.get()).a(b(o9Var, y9Var));
    }
}
