package t1;

import androidx.lifecycle.LiveData;
import c5.e0;

/* loaded from: classes.dex */
public final class u {

    /* renamed from: a, reason: collision with root package name */
    public final x1.a f15550a;

    /* renamed from: b, reason: collision with root package name */
    public final u1.a f15551b;

    /* renamed from: c, reason: collision with root package name */
    public final c2.b<w> f15552c;

    public u(x1.a aVar) {
        this.f15550a = aVar;
        c cVar = e0.f1500q;
        if (cVar == null) {
            kotlin.jvm.internal.h.n("internalComponents");
            throw null;
        }
        this.f15551b = cVar.b();
        this.f15552c = new c2.b<>(new w(null, null, null, true, null, 119));
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object] */
    public final void a(x9.l<? super w, w> lVar) {
        c2.b<w> bVar = this.f15552c;
        bVar.getClass();
        ?? Invoke = lVar.invoke(bVar.f1371b);
        LiveData liveData = bVar.f1370a;
        bVar.f1371b = Invoke;
        liveData.postValue(Invoke);
    }
}
