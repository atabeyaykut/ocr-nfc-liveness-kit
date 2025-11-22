package m7;

import j7.u;
import j7.v;
import java.io.IOException;

/* loaded from: classes2.dex */
public final class s implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Class f10135a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ u f10136b;

    public class a extends u<Object> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Class f10137a;

        public a(Class cls) {
            this.f10137a = cls;
        }

        @Override // j7.u
        public final Object a(q7.a aVar) throws IOException {
            Object objA = s.this.f10136b.a(aVar);
            if (objA != null) {
                Class cls = this.f10137a;
                if (!cls.isInstance(objA)) {
                    throw new j7.s("Expected a " + cls.getName() + " but was " + objA.getClass().getName());
                }
            }
            return objA;
        }

        @Override // j7.u
        public final void b(q7.b bVar, Object obj) throws IOException {
            s.this.f10136b.b(bVar, obj);
        }
    }

    public s(Class cls, u uVar) {
        this.f10135a = cls;
        this.f10136b = uVar;
    }

    @Override // j7.v
    public final <T2> u<T2> b(j7.h hVar, p7.a<T2> aVar) {
        Class<? super T2> cls = aVar.f12844a;
        if (this.f10135a.isAssignableFrom(cls)) {
            return new a(cls);
        }
        return null;
    }

    public final String toString() {
        return "Factory[typeHierarchy=" + this.f10135a.getName() + ",adapter=" + this.f10136b + "]";
    }
}
