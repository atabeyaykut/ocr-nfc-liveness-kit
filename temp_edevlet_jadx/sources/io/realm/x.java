package io.realm;

import io.realm.internal.OsList;

/* loaded from: classes2.dex */
public abstract class x<T> {

    /* renamed from: a, reason: collision with root package name */
    public final a f7888a;

    /* renamed from: b, reason: collision with root package name */
    public final OsList f7889b;

    /* renamed from: c, reason: collision with root package name */
    public final Class<T> f7890c;

    public x(a aVar, OsList osList, Class<T> cls) {
        this.f7888a = aVar;
        this.f7890c = cls;
        this.f7889b = osList;
    }

    public abstract void a(Object obj);

    public final void b(int r72) {
        OsList osList = this.f7889b;
        long jW = osList.W();
        int r22 = jW < 2147483647L ? (int) jW : Integer.MAX_VALUE;
        if (r72 < 0 || r22 < r72) {
            StringBuilder sbE = androidx.appcompat.widget.v.e("Invalid index ", r72, ", size is ");
            sbE.append(osList.W());
            throw new IndexOutOfBoundsException(sbE.toString());
        }
    }

    public abstract void c(Object obj);

    public abstract T d(int r12);

    public void e(int r42) {
        this.f7889b.A(r42);
    }

    public abstract void f(int r12, Object obj);

    public void g(int r42) {
        this.f7889b.Q(r42);
    }

    public abstract void h(int r12, Object obj);
}
