package ud;

/* loaded from: classes2.dex */
public final class q implements d<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ nc.i f18047a;

    public q(nc.j jVar) {
        this.f18047a = jVar;
    }

    @Override // ud.d
    public final void onFailure(b<Object> call, Throwable t10) {
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(t10, "t");
        this.f18047a.resumeWith(c5.w.j(t10));
    }

    @Override // ud.d
    public final void onResponse(b<Object> call, c0<Object> response) {
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(response, "response");
        this.f18047a.resumeWith(response.f17992a.c() ? response.f17993b : c5.w.j(new k(response)));
    }
}
