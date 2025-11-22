package pb;

import b8.f;
import cc.e0;
import cc.i1;
import cc.t1;
import dc.j;
import ja.k;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.internal.h;
import m9.v;
import ma.g;
import ma.w0;

/* loaded from: classes2.dex */
public final class c implements b {

    /* renamed from: a, reason: collision with root package name */
    public final i1 f13064a;

    /* renamed from: b, reason: collision with root package name */
    public j f13065b;

    public c(i1 projection) {
        h.f(projection, "projection");
        this.f13064a = projection;
        projection.b();
    }

    @Override // pb.b
    public final i1 b() {
        return this.f13064a;
    }

    @Override // cc.c1
    public final List<w0> getParameters() {
        return v.f10173a;
    }

    @Override // cc.c1
    public final Collection<e0> l() {
        i1 i1Var = this.f13064a;
        e0 type = i1Var.b() == t1.OUT_VARIANCE ? i1Var.getType() : m().o();
        h.e(type, "if (projection.projectio… builtIns.nullableAnyType");
        return f.S(type);
    }

    @Override // cc.c1
    public final k m() {
        k kVarM = this.f13064a.getType().M0().m();
        h.e(kVarM, "projection.type.constructor.builtIns");
        return kVarM;
    }

    @Override // cc.c1
    public final /* bridge */ /* synthetic */ g n() {
        return null;
    }

    @Override // cc.c1
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return "CapturedTypeConstructor(" + this.f13064a + ')';
    }
}
