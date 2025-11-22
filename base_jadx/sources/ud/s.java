package ud;

/* loaded from: classes2.dex */
public final class s implements d<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ nc.i f18049a;

    public s(nc.j jVar) {
        this.f18049a = jVar;
    }

    @Override // ud.d
    public final void onFailure(b<Object> call, Throwable t10) {
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(t10, "t");
        this.f18049a.resumeWith(c5.w.j(t10));
    }

    @Override // ud.d
    public final void onResponse(b<Object> call, c0<Object> response) {
        kotlin.jvm.internal.h.g(call, "call");
        kotlin.jvm.internal.h.g(response, "response");
        this.f18049a.resumeWith(response);
    }
}
