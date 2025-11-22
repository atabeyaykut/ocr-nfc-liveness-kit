package ab;

import cc.c1;
import cc.e0;
import cc.f1;
import cc.m0;
import kotlin.jvm.internal.j;
import ma.w0;

/* loaded from: classes2.dex */
public final class c extends j implements x9.a<e0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f146a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ w0 f147b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ a f148c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ c1 f149d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ cb.j f150e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(d dVar, w0 w0Var, a aVar, c1 c1Var, cb.j jVar) {
        super(0);
        this.f146a = dVar;
        this.f147b = w0Var;
        this.f148c = aVar;
        this.f149d = c1Var;
        this.f150e = jVar;
    }

    @Override // x9.a
    public final e0 invoke() {
        f1 f1Var = this.f146a.f154d;
        ma.g gVarN = this.f149d.n();
        m0 m0VarQ = gVarN != null ? gVarN.q() : null;
        a aVar = this.f148c;
        aVar.getClass();
        return f1Var.a(this.f147b, a.e(a.e(aVar, 0, false, null, m0VarQ, 31), 0, this.f150e.v(), null, null, 59));
    }
}
