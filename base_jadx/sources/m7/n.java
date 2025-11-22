package m7;

import j7.u;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import m7.j;

/* loaded from: classes2.dex */
public final class n<T> extends u<T> {

    /* renamed from: a, reason: collision with root package name */
    public final j7.h f10097a;

    /* renamed from: b, reason: collision with root package name */
    public final u<T> f10098b;

    /* renamed from: c, reason: collision with root package name */
    public final Type f10099c;

    public n(j7.h hVar, u<T> uVar, Type type) {
        this.f10097a = hVar;
        this.f10098b = uVar;
        this.f10099c = type;
    }

    @Override // j7.u
    public final T a(q7.a aVar) throws IOException {
        return this.f10098b.a(aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.reflect.Type] */
    @Override // j7.u
    public final void b(q7.b bVar, T t10) throws IOException {
        ?? r02 = this.f10099c;
        Class<?> cls = (t10 == null || !(r02 == Object.class || (r02 instanceof TypeVariable) || (r02 instanceof Class))) ? r02 : t10.getClass();
        u<T> uVar = this.f10098b;
        if (cls != r02) {
            u<T> uVarB = this.f10097a.b(new p7.a<>(cls));
            if (!(uVarB instanceof j.a) || (uVar instanceof j.a)) {
                uVar = uVarB;
            }
        }
        uVar.b(bVar, t10);
    }
}
