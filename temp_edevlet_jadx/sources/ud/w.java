package ud;

import java.io.IOException;
import java.util.Iterator;

/* loaded from: classes2.dex */
public final class w extends y<Iterable<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ y f18071a;

    public w(y yVar) {
        this.f18071a = yVar;
    }

    @Override // ud.y
    public final void a(a0 a0Var, Iterable<Object> iterable) throws IOException {
        Iterable<Object> iterable2 = iterable;
        if (iterable2 == null) {
            return;
        }
        Iterator<Object> it = iterable2.iterator();
        while (it.hasNext()) {
            this.f18071a.a(a0Var, it.next());
        }
    }
}
