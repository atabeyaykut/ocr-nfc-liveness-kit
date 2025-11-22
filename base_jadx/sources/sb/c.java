package sb;

import kc.a;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.v;
import x9.l;

/* loaded from: classes2.dex */
public final class c extends a.b<ma.b, ma.b> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v<ma.b> f15374a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ l<ma.b, Boolean> f15375b;

    /* JADX WARN: Multi-variable type inference failed */
    public c(v<ma.b> vVar, l<? super ma.b, Boolean> lVar) {
        this.f15374a = vVar;
        this.f15375b = lVar;
    }

    @Override // kc.a.d
    public final Object a() {
        return this.f15374a.f8975a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1, types: [T, java.lang.Object, ma.b] */
    @Override // kc.a.b, kc.a.d
    public final void b(Object obj) {
        ?? current = (ma.b) obj;
        h.f(current, "current");
        v<ma.b> vVar = this.f15374a;
        if (vVar.f8975a == null && ((Boolean) this.f15375b.invoke(current)).booleanValue()) {
            vVar.f8975a = current;
        }
    }

    @Override // kc.a.d
    public final boolean c(Object obj) {
        ma.b current = (ma.b) obj;
        h.f(current, "current");
        return this.f15374a.f8975a == null;
    }
}
