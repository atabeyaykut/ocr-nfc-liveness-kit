package ud;

import java.io.IOException;
import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public final class x extends y<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f18072a;

    public x(y yVar) {
        this.f18072a = yVar;
    }

    @Override // ud.y
    public final void a(a0 a0Var, Object obj) throws IOException {
        if (obj == null) {
            return;
        }
        int length = Array.getLength(obj);
        for (int r12 = 0; r12 < length; r12++) {
            this.f18072a.a(a0Var, Array.get(obj, r12));
        }
    }
}
