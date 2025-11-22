package pa;

import cc.c1;
import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public final class g implements c1 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f12893a;

    public g(f fVar) {
        this.f12893a = fVar;
    }

    @Override // cc.c1
    public final List<ma.w0> getParameters() {
        List list = ((ac.m) this.f12893a).f244s;
        if (list != null) {
            return list;
        }
        kotlin.jvm.internal.h.n("typeConstructorParameters");
        throw null;
    }

    @Override // cc.c1
    public final Collection<cc.e0> l() {
        Collection<cc.e0> collectionL = ((ac.m) this.f12893a).c0().M0().l();
        kotlin.jvm.internal.h.e(collectionL, "declarationDescriptor.un…pe.constructor.supertypes");
        return collectionL;
    }

    @Override // cc.c1
    public final ja.k m() {
        return sb.b.e(this.f12893a);
    }

    @Override // cc.c1
    public final ma.g n() {
        return this.f12893a;
    }

    @Override // cc.c1
    public final boolean o() {
        return true;
    }

    public final String toString() {
        return "[typealias " + this.f12893a.getName().o() + ']';
    }
}
