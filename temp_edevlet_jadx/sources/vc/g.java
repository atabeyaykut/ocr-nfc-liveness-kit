package vc;

import java.security.cert.Certificate;
import java.util.List;
import rc.p;

/* loaded from: classes2.dex */
public final class g extends kotlin.jvm.internal.j implements x9.a<List<? extends Certificate>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ rc.f f18521a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ p f18522b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ rc.a f18523c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g(rc.f fVar, p pVar, rc.a aVar) {
        super(0);
        this.f18521a = fVar;
        this.f18522b = pVar;
        this.f18523c = aVar;
    }

    @Override // x9.a
    public final List<? extends Certificate> invoke() {
        cd.c cVar = this.f18521a.f14440b;
        kotlin.jvm.internal.h.c(cVar);
        return cVar.a(this.f18523c.f14373a.f14520e, this.f18522b.a());
    }
}
