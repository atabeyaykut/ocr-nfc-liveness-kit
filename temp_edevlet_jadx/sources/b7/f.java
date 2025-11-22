package b7;

import c6.y;
import com.google.firebase.installations.FirebaseInstallationsRegistrar;
import java.util.Set;

/* loaded from: classes2.dex */
public final /* synthetic */ class f implements c6.h {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1163a;

    public /* synthetic */ f(int r12) {
        this.f1163a = r12;
    }

    @Override // c6.h
    public final Object i(y yVar) {
        switch (this.f1163a) {
            case 0:
                return FirebaseInstallationsRegistrar.lambda$getComponents$0(yVar);
            default:
                Set setH = yVar.h(i7.d.class);
                i7.c cVar = i7.c.f7310b;
                if (cVar == null) {
                    synchronized (i7.c.class) {
                        cVar = i7.c.f7310b;
                        if (cVar == null) {
                            cVar = new i7.c();
                            i7.c.f7310b = cVar;
                        }
                    }
                }
                return new i7.b(setH, cVar);
        }
    }
}
