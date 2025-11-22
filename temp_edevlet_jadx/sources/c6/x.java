package c6;

import a7.a;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;

/* loaded from: classes2.dex */
public final class x<T> implements a7.b<T>, a7.a<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final androidx.constraintlayout.core.state.b f2229c = new androidx.constraintlayout.core.state.b(5);

    /* renamed from: d, reason: collision with root package name */
    public static final w f2230d = new a7.b() { // from class: c6.w
        @Override // a7.b
        public final Object get() {
            return null;
        }
    };

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    public a.InterfaceC0008a<T> f2231a;

    /* renamed from: b, reason: collision with root package name */
    public volatile a7.b<T> f2232b;

    public x(androidx.constraintlayout.core.state.b bVar, a7.b bVar2) {
        this.f2231a = bVar;
        this.f2232b = bVar2;
    }

    public final void a(@NonNull a.InterfaceC0008a<T> interfaceC0008a) {
        a7.b<T> bVar;
        a7.b<T> bVar2;
        a7.b<T> bVar3 = this.f2232b;
        w wVar = f2230d;
        if (bVar3 != wVar) {
            interfaceC0008a.a(bVar3);
            return;
        }
        synchronized (this) {
            bVar = this.f2232b;
            if (bVar != wVar) {
                bVar2 = bVar;
            } else {
                this.f2231a = new androidx.camera.camera2.interop.h(3, this.f2231a, interfaceC0008a);
                bVar2 = null;
            }
        }
        if (bVar2 != null) {
            interfaceC0008a.a(bVar);
        }
    }

    @Override // a7.b
    public final T get() {
        return this.f2232b.get();
    }
}
