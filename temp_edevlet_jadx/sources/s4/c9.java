package s4;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import c5.e0;
import java.io.IOException;

/* loaded from: classes.dex */
public final class c9 implements w8 {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final c6.t f14941a;

    /* renamed from: b, reason: collision with root package name */
    public final c6.t f14942b;

    /* renamed from: c, reason: collision with root package name */
    public final s8 f14943c;

    public c9(Context context, s8 s8Var) {
        this.f14943c = s8Var;
        s2.a aVar = s2.a.f14855e;
        u2.w.b(context);
        final u2.t tVarC = u2.w.a().c(aVar);
        if (s2.a.f14854d.contains(new r2.b("json"))) {
            this.f14941a = new c6.t(new a7.b() { // from class: o4.n
                @Override // a7.b
                public final Object get() {
                    return tVarC.a("FIREBASE_ML_SDK", new r2.b("json"), b8.f.f1184h);
                }
            });
        }
        this.f14942b = new c6.t(new a7.b() { // from class: o4.o
            @Override // a7.b
            public final Object get() {
                return tVarC.a("FIREBASE_ML_SDK", new r2.b("proto"), e0.f1498n);
            }
        });
    }

    @VisibleForTesting
    public static r2.a b(s8 s8Var, a9 a9Var) throws IOException {
        byte[] bArrA = a9Var.a(s8Var.a());
        return a9Var.f14895a != 0 ? new r2.a(bArrA, r2.d.DEFAULT) : new r2.a(bArrA, r2.d.VERY_LOW);
    }

    @Override // s4.w8
    public final void a(a9 a9Var) {
        c6.t tVar;
        s8 s8Var = this.f14943c;
        if (s8Var.a() == 0) {
            tVar = this.f14941a;
            if (tVar == null) {
                return;
            }
        } else {
            tVar = this.f14942b;
        }
        ((r2.f) tVar.get()).a(b(s8Var, a9Var));
    }
}
