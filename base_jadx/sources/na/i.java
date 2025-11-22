package na;

import java.util.Iterator;
import java.util.List;
import na.h;

/* loaded from: classes2.dex */
public final class i implements h {

    /* renamed from: a, reason: collision with root package name */
    public final List<c> f10654a;

    /* JADX WARN: Multi-variable type inference failed */
    public i(List<? extends c> list) {
        this.f10654a = list;
    }

    @Override // na.h
    public final boolean P(lb.c cVar) {
        return h.b.b(this, cVar);
    }

    @Override // na.h
    public final boolean isEmpty() {
        return this.f10654a.isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return this.f10654a.iterator();
    }

    @Override // na.h
    public final c n(lb.c cVar) {
        return h.b.a(this, cVar);
    }

    public final String toString() {
        return this.f10654a.toString();
    }
}
