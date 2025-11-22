package ac;

import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import na.h;

/* loaded from: classes2.dex */
public class a implements na.h {

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f162b = {w.c(new r(w.a(a.class), "annotations", "getAnnotations()Ljava/util/List;"))};

    /* renamed from: a, reason: collision with root package name */
    public final bc.i f163a;

    public a(bc.l storageManager, x9.a<? extends List<? extends na.c>> aVar) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f163a = storageManager.d(aVar);
    }

    @Override // na.h
    public final boolean P(lb.c cVar) {
        return h.b.b(this, cVar);
    }

    @Override // na.h
    public boolean isEmpty() {
        return ((List) b8.f.O(this.f163a, f162b[0])).isEmpty();
    }

    @Override // java.lang.Iterable
    public final Iterator<na.c> iterator() {
        return ((List) b8.f.O(this.f163a, f162b[0])).iterator();
    }

    @Override // na.h
    public final na.c n(lb.c cVar) {
        return h.b.a(this, cVar);
    }
}
