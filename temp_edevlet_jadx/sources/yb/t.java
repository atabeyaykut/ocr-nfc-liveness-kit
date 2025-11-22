package yb;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class t extends r {

    /* renamed from: g, reason: collision with root package name */
    public final ib.a f19478g;

    /* renamed from: h, reason: collision with root package name */
    public final ac.g f19479h;

    /* renamed from: j, reason: collision with root package name */
    public final ib.d f19480j;

    /* renamed from: k, reason: collision with root package name */
    public final f0 f19481k;

    /* renamed from: l, reason: collision with root package name */
    public gb.l f19482l;

    /* renamed from: m, reason: collision with root package name */
    public ac.j f19483m;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Collection<? extends lb.f>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Collection<? extends lb.f> invoke() {
            Set setKeySet = t.this.f19481k.f19407d.keySet();
            ArrayList arrayList = new ArrayList();
            for (Object obj : setKeySet) {
                lb.b bVar = (lb.b) obj;
                if ((bVar.k() || j.f19424c.contains(bVar)) ? false : true) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add(((lb.b) it.next()).j());
            }
            return arrayList2;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t(lb.c fqName, bc.l storageManager, ma.b0 module, gb.l lVar, ib.a aVar) {
        super(fqName, storageManager, module);
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(module, "module");
        this.f19478g = aVar;
        this.f19479h = null;
        gb.o oVar = lVar.f6381d;
        kotlin.jvm.internal.h.e(oVar, "proto.strings");
        gb.n nVar = lVar.f6382e;
        kotlin.jvm.internal.h.e(nVar, "proto.qualifiedNames");
        ib.d dVar = new ib.d(oVar, nVar);
        this.f19480j = dVar;
        this.f19481k = new f0(lVar, dVar, aVar, new s(this));
        this.f19482l = lVar;
    }

    @Override // yb.r
    public final f0 E0() {
        return this.f19481k;
    }

    public final void K0(l lVar) {
        gb.l lVar2 = this.f19482l;
        if (lVar2 == null) {
            throw new IllegalStateException("Repeated call to DeserializedPackageFragmentImpl::initialize".toString());
        }
        this.f19482l = null;
        gb.k kVar = lVar2.f;
        kotlin.jvm.internal.h.e(kVar, "proto.`package`");
        this.f19483m = new ac.j(this, kVar, this.f19480j, this.f19478g, this.f19479h, lVar, "scope of " + this, new a());
    }

    @Override // ma.e0
    public final vb.i o() {
        ac.j jVar = this.f19483m;
        if (jVar != null) {
            return jVar;
        }
        kotlin.jvm.internal.h.n("_memberScope");
        throw null;
    }
}
