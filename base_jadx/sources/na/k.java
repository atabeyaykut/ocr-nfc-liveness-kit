package na;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import lc.f;
import lc.w;
import m9.t;

/* loaded from: classes2.dex */
public final class k implements h {

    /* renamed from: a, reason: collision with root package name */
    public final List<h> f10660a;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<h, c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ lb.c f10661a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(lb.c cVar) {
            super(1);
            this.f10661a = cVar;
        }

        @Override // x9.l
        public final c invoke(h hVar) {
            h it = hVar;
            kotlin.jvm.internal.h.f(it, "it");
            return it.n(this.f10661a);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.l<h, lc.h<? extends c>> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f10662a = new b();

        public b() {
            super(1);
        }

        @Override // x9.l
        public final lc.h<? extends c> invoke(h hVar) {
            h it = hVar;
            kotlin.jvm.internal.h.f(it, "it");
            return t.U0(it);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(List<? extends h> list) {
        this.f10660a = list;
    }

    public k(h... hVarArr) {
        this.f10660a = m9.k.A0(hVarArr);
    }

    @Override // na.h
    public final boolean P(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        Iterator<Object> it = t.U0(this.f10660a).iterator();
        while (it.hasNext()) {
            if (((h) it.next()).P(fqName)) {
                return true;
            }
        }
        return false;
    }

    @Override // na.h
    public final boolean isEmpty() {
        List<h> list = this.f10660a;
        if ((list instanceof Collection) && list.isEmpty()) {
            return true;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (!((h) it.next()).isEmpty()) {
                return false;
            }
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<c> iterator() {
        return new f.a(w.Y0(t.U0(this.f10660a), b.f10662a));
    }

    @Override // na.h
    public final c n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return (c) w.X0(w.a1(t.U0(this.f10660a), new a(fqName)));
    }
}
