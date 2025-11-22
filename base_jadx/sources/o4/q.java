package o4;

import android.content.Context;
import java.util.ArrayList;
import s4.s8;
import s4.t8;
import s4.x8;

/* loaded from: classes.dex */
public final class q extends v7.e {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f11226b;

    public /* synthetic */ q(int r12) {
        this.f11226b = r12;
    }

    @Override // v7.e
    public final Object a(Object obj) {
        switch (this.f11226b) {
            case 0:
                j jVar = (j) obj;
                v7.h hVarC = v7.h.c();
                Context contextB = v7.h.c().b();
                ArrayList arrayList = new ArrayList();
                if (jVar.c()) {
                    arrayList.add(new p(contextB));
                }
                return new m(hVarC.b(), (v7.l) hVarC.a(v7.l.class), jVar.b());
            default:
                s8 s8Var = (s8) obj;
                v7.h hVarC2 = v7.h.c();
                return new x8(hVarC2.b(), (v7.l) hVarC2.a(v7.l.class), new t8(v7.h.c().b(), s8Var), s8Var.b());
        }
    }
}
