package yc;

/* loaded from: classes2.dex */
public final class n extends uc.a {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ f f19593e;
    public final /* synthetic */ int f;

    /* renamed from: g, reason: collision with root package name */
    public final /* synthetic */ b f19594g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(String str, f fVar, int r32, b bVar) {
        super(str, true);
        this.f19593e = fVar;
        this.f = r32;
        this.f19594g = bVar;
    }

    @Override // uc.a
    public final long a() {
        c5.v vVar = this.f19593e.f19552m;
        b errorCode = this.f19594g;
        vVar.getClass();
        kotlin.jvm.internal.h.f(errorCode, "errorCode");
        synchronized (this.f19593e) {
            this.f19593e.D.remove(Integer.valueOf(this.f));
            l9.m mVar = l9.m.f9594a;
        }
        return -1L;
    }
}
