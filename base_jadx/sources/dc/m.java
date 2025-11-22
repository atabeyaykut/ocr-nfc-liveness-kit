package dc;

import cc.b1;
import cc.e0;
import cc.s1;
import dc.e;
import dc.f;

/* loaded from: classes2.dex */
public final class m implements l {

    /* renamed from: c, reason: collision with root package name */
    public final f f4847c;

    /* renamed from: d, reason: collision with root package name */
    public final e f4848d;

    /* renamed from: e, reason: collision with root package name */
    public final ob.n f4849e;

    public m(f.a kotlinTypeRefiner) {
        e.a kotlinTypePreparator = e.a.f4826a;
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        kotlin.jvm.internal.h.f(kotlinTypePreparator, "kotlinTypePreparator");
        this.f4847c = kotlinTypeRefiner;
        this.f4848d = kotlinTypePreparator;
        this.f4849e = new ob.n(ob.n.f11288g, kotlinTypeRefiner, kotlinTypePreparator);
    }

    @Override // dc.l
    public final ob.n a() {
        return this.f4849e;
    }

    @Override // dc.l
    public final f b() {
        return this.f4847c;
    }

    @Override // dc.d
    public final boolean c(e0 a10, e0 b10) {
        kotlin.jvm.internal.h.f(a10, "a");
        kotlin.jvm.internal.h.f(b10, "b");
        b1 b1VarA = a.a(false, false, null, this.f4848d, this.f4847c, 6);
        s1 a11 = a10.P0();
        s1 b11 = b10.P0();
        kotlin.jvm.internal.h.f(a11, "a");
        kotlin.jvm.internal.h.f(b11, "b");
        return cc.g.e(b1VarA, a11, b11);
    }

    public final boolean d(e0 subtype, e0 supertype) {
        kotlin.jvm.internal.h.f(subtype, "subtype");
        kotlin.jvm.internal.h.f(supertype, "supertype");
        b1 b1VarA = a.a(true, false, null, this.f4848d, this.f4847c, 6);
        s1 subType = subtype.P0();
        s1 superType = supertype.P0();
        kotlin.jvm.internal.h.f(subType, "subType");
        kotlin.jvm.internal.h.f(superType, "superType");
        return cc.g.i(cc.g.f2306a, b1VarA, subType, superType);
    }
}
