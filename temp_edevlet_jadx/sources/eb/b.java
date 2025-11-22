package eb;

import eb.s;
import eb.v;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ eb.a<Object, Object> f5178a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap<v, List<Object>> f5179b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ s f5180c;

    public final class a extends C0079b {
        public a(v vVar) {
            super(vVar);
        }

        public final i c(int r42, lb.b bVar, ra.b bVar2) {
            v vVarE = v.a.e(this.f5182a, r42);
            b bVar3 = b.this;
            List<Object> arrayList = bVar3.f5179b.get(vVarE);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                bVar3.f5179b.put(vVarE, arrayList);
            }
            return bVar3.f5178a.r(bVar, bVar2, arrayList);
        }
    }

    /* renamed from: eb.b$b, reason: collision with other inner class name */
    public class C0079b implements s.c {

        /* renamed from: a, reason: collision with root package name */
        public final v f5182a;

        /* renamed from: b, reason: collision with root package name */
        public final ArrayList<Object> f5183b = new ArrayList<>();

        public C0079b(v vVar) {
            this.f5182a = vVar;
        }

        @Override // eb.s.c
        public final void a() {
            ArrayList<Object> arrayList = this.f5183b;
            if (!arrayList.isEmpty()) {
                b.this.f5179b.put(this.f5182a, arrayList);
            }
        }

        @Override // eb.s.c
        public final s.a b(lb.b bVar, ra.b bVar2) {
            return b.this.f5178a.r(bVar, bVar2, this.f5183b);
        }
    }

    public b(eb.a aVar, HashMap map, s sVar, HashMap map2) {
        this.f5178a = aVar;
        this.f5179b = map;
        this.f5180c = sVar;
    }

    public final C0079b a(lb.f fVar, String desc) {
        kotlin.jvm.internal.h.f(desc, "desc");
        String strO = fVar.o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        return new C0079b(v.a.a(strO, desc));
    }

    public final a b(lb.f name, String str) {
        kotlin.jvm.internal.h.f(name, "name");
        String strO = name.o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        return new a(v.a.d(strO, str));
    }
}
