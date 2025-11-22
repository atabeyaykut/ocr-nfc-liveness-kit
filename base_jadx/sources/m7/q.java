package m7;

import j7.u;
import j7.v;

/* loaded from: classes2.dex */
public final class q implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f10129a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Class f10130b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ u f10131c;

    public q(Class cls, Class cls2, u uVar) {
        this.f10129a = cls;
        this.f10130b = cls2;
        this.f10131c = uVar;
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        Class<? super T> cls = aVar.f12844a;
        if (cls == this.f10129a || cls == this.f10130b) {
            return this.f10131c;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f10130b.getName() + "+" + this.f10129a.getName() + ",adapter=" + this.f10131c + "]";
    }
}
