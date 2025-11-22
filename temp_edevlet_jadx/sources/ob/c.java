package ob;

import cc.c1;
import dc.d;
import ma.w0;

/* loaded from: classes2.dex */
public final class c implements d.a {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f11269a;

    /* renamed from: b, reason: collision with root package name */
    public final ma.a f11270b;

    /* renamed from: c, reason: collision with root package name */
    public final ma.a f11271c;

    public c(ma.a aVar, ma.a aVar2, boolean z10) {
        this.f11269a = z10;
        this.f11270b = aVar;
        this.f11271c = aVar2;
    }

    @Override // dc.d.a
    public final boolean a(c1 c12, c1 c22) {
        ma.a a10 = this.f11270b;
        kotlin.jvm.internal.h.f(a10, "$a");
        ma.a b10 = this.f11271c;
        kotlin.jvm.internal.h.f(b10, "$b");
        kotlin.jvm.internal.h.f(c12, "c1");
        kotlin.jvm.internal.h.f(c22, "c2");
        if (kotlin.jvm.internal.h.a(c12, c22)) {
            return true;
        }
        ma.g gVarN = c12.n();
        ma.g gVarN2 = c22.n();
        if (!(gVarN instanceof w0) || !(gVarN2 instanceof w0)) {
            return false;
        }
        return g.f11276a.b((w0) gVarN, (w0) gVarN2, this.f11269a, new e(a10, b10));
    }
}
