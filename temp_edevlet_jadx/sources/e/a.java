package e;

import g.g;
import j.h;
import java.util.ArrayList;
import java.util.List;
import m9.t;
import m9.v;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final List<k.h> f4975a;

    /* renamed from: b, reason: collision with root package name */
    public final List<l9.g<m.d<? extends Object, ? extends Object>, Class<? extends Object>>> f4976b;

    /* renamed from: c, reason: collision with root package name */
    public final List<l9.g<l.b<? extends Object>, Class<? extends Object>>> f4977c;

    /* renamed from: d, reason: collision with root package name */
    public final List<l9.g<h.a<? extends Object>, Class<? extends Object>>> f4978d;

    /* renamed from: e, reason: collision with root package name */
    public final List<g.a> f4979e;

    /* renamed from: e.a$a, reason: collision with other inner class name */
    public static final class C0075a {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f4980a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList f4981b;

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f4982c;

        /* renamed from: d, reason: collision with root package name */
        public final ArrayList f4983d;

        /* renamed from: e, reason: collision with root package name */
        public final ArrayList f4984e;

        public C0075a(a aVar) {
            this.f4980a = t.w1(aVar.f4975a);
            this.f4981b = t.w1(aVar.f4976b);
            this.f4982c = t.w1(aVar.f4977c);
            this.f4983d = t.w1(aVar.f4978d);
            this.f4984e = t.w1(aVar.f4979e);
        }

        public final void a(h.a aVar, Class cls) {
            this.f4983d.add(new l9.g(aVar, cls));
        }

        public final void b(m.d dVar, Class cls) {
            this.f4981b.add(new l9.g(dVar, cls));
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public a() {
        v vVar = v.f10173a;
        this(vVar, vVar, vVar, vVar, vVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public a(List<? extends k.h> list, List<? extends l9.g<? extends m.d<? extends Object, ? extends Object>, ? extends Class<? extends Object>>> list2, List<? extends l9.g<? extends l.b<? extends Object>, ? extends Class<? extends Object>>> list3, List<? extends l9.g<? extends h.a<? extends Object>, ? extends Class<? extends Object>>> list4, List<? extends g.a> list5) {
        this.f4975a = list;
        this.f4976b = list2;
        this.f4977c = list3;
        this.f4978d = list4;
        this.f4979e = list5;
    }
}
