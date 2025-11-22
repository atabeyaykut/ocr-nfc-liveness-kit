package za;

import fb.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import m9.e0;
import ma.r0;
import na.h;
import p4.g7;
import pa.i0;

/* loaded from: classes2.dex */
public final class m extends i0 {

    /* renamed from: n, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f19950n = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(m.class), "binaryClasses", "getBinaryClasses$descriptors_jvm()Ljava/util/Map;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(m.class), "partToFacade", "getPartToFacade()Ljava/util/HashMap;"))};

    /* renamed from: g, reason: collision with root package name */
    public final cb.t f19951g;

    /* renamed from: h, reason: collision with root package name */
    public final g7 f19952h;

    /* renamed from: j, reason: collision with root package name */
    public final bc.i f19953j;

    /* renamed from: k, reason: collision with root package name */
    public final za.c f19954k;

    /* renamed from: l, reason: collision with root package name */
    public final bc.i<List<lb.c>> f19955l;

    /* renamed from: m, reason: collision with root package name */
    public final na.h f19956m;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Map<String, ? extends eb.s>> {
        public a() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // x9.a
        public final Map<String, ? extends eb.s> invoke() {
            m mVar = m.this;
            ((ya.c) mVar.f19952h.f12358a).f19343l.a(mVar.f12914e.b());
            ArrayList arrayList = new ArrayList();
            m9.u uVar = m9.u.f10172a;
            while (uVar.hasNext()) {
                String str = (String) uVar.next();
                eb.s sVarA = eb.r.a(((ya.c) mVar.f19952h.f12358a).f19335c, lb.b.l(new lb.c(tb.b.d(str).f15648a.replace('/', '.'))));
                l9.g gVar = sVarA != null ? new l9.g(str, sVarA) : null;
                if (gVar != null) {
                    arrayList.add(gVar);
                }
            }
            return e0.S0(arrayList);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<HashMap<tb.b, tb.b>> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final HashMap<tb.b, tb.b> invoke() {
            HashMap<tb.b, tb.b> map = new HashMap<>();
            m mVar = m.this;
            mVar.getClass();
            for (Map.Entry entry : ((Map) b8.f.O(mVar.f19953j, m.f19950n[0])).entrySet()) {
                String str = (String) entry.getKey();
                eb.s sVar = (eb.s) entry.getValue();
                tb.b bVarD = tb.b.d(str);
                fb.a aVarA = sVar.a();
                int r52 = aVarA.f5553a.ordinal();
                if (r52 == 2) {
                    map.put(bVarD, bVarD);
                } else if (r52 == 5) {
                    String str2 = aVarA.f5553a == a.EnumC0087a.MULTIFILE_CLASS_PART ? aVarA.f : null;
                    if (str2 != null) {
                        map.put(bVarD, tb.b.d(str2));
                    }
                }
            }
            return map;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<List<? extends lb.c>> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends lb.c> invoke() {
            m.this.f19951g.x();
            m9.v vVar = m9.v.f10173a;
            ArrayList arrayList = new ArrayList(m9.n.Q0(vVar));
            Iterator<E> it = vVar.iterator();
            while (it.hasNext()) {
                arrayList.add(((cb.t) it.next()).d());
            }
            return arrayList;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(g7 outerContext, cb.t jPackage) {
        super(outerContext.a(), jPackage.d());
        kotlin.jvm.internal.h.f(outerContext, "outerContext");
        kotlin.jvm.internal.h.f(jPackage, "jPackage");
        this.f19951g = jPackage;
        g7 g7VarA = ya.b.a(outerContext, this, null, 6);
        this.f19952h = g7VarA;
        this.f19953j = g7VarA.b().d(new a());
        this.f19954k = new za.c(g7VarA, jPackage, this);
        this.f19955l = g7VarA.b().h(new c());
        this.f19956m = ((ya.c) g7VarA.f12358a).f19353v.f18373c ? h.a.f10653a : a6.a.v(g7VarA, jPackage);
        g7VarA.b().d(new b());
    }

    @Override // na.b, na.a
    public final na.h getAnnotations() {
        return this.f19956m;
    }

    @Override // pa.i0, pa.q, ma.m
    public final r0 getSource() {
        return new eb.t(this);
    }

    @Override // ma.e0
    public final vb.i o() {
        return this.f19954k;
    }

    @Override // pa.i0, pa.p
    public final String toString() {
        return "Lazy Java package fragment: " + this.f12914e + " of module " + ((ya.c) this.f19952h.f12358a).f19346o;
    }
}
