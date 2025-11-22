package vb;

/* loaded from: classes2.dex */
public final class h extends vb.a {

    /* renamed from: b, reason: collision with root package name */
    public final bc.i<i> f18447b;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<i> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x9.a<i> f18448a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(x9.a<? extends i> aVar) {
            super(0);
            this.f18448a = aVar;
        }

        @Override // x9.a
        public final i invoke() {
            i iVarInvoke = this.f18448a.invoke();
            return iVarInvoke instanceof vb.a ? ((vb.a) iVarInvoke).h() : iVarInvoke;
        }
    }

    public h(bc.l storageManager, x9.a<? extends i> aVar) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f18447b = storageManager.d(new a(aVar));
    }

    @Override // vb.a
    public final i i() {
        return this.f18447b.invoke();
    }
}
