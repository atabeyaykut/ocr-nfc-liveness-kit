package db;

import java.util.Iterator;
import na.h;

/* loaded from: classes2.dex */
public final class f implements na.h {

    /* renamed from: a, reason: collision with root package name */
    public final lb.c f4741a;

    public f(lb.c cVar) {
        this.f4741a = cVar;
    }

    @Override // na.h
    public final boolean P(lb.c cVar) {
        return h.b.b(this, cVar);
    }

    @Override // na.h
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.lang.Iterable
    public final Iterator<na.c> iterator() {
        return m9.u.f10172a;
    }

    @Override // na.h
    public final na.c n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        if (kotlin.jvm.internal.h.a(fqName, this.f4741a)) {
            return e.f4740a;
        }
        return null;
    }
}
