package m7;

import j7.u;
import j7.v;

/* loaded from: classes2.dex */
public final class p implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f10127a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f10128b;

    public p(Class cls, u uVar) {
        this.f10127a = cls;
        this.f10128b = uVar;
    }

    @Override // j7.v
    public final <T> u<T> b(j7.h hVar, p7.a<T> aVar) {
        if (aVar.f12844a == this.f10127a) {
            return this.f10128b;
        }
        return null;
    }

    public final String toString() {
        return "Factory[type=" + this.f10127a.getName() + ",adapter=" + this.f10128b + "]";
    }
}
