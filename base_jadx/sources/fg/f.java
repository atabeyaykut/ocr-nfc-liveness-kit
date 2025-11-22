package fg;

import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class f extends af.c<e> {

    /* renamed from: h, reason: collision with root package name */
    public final l f5649h;

    public static final class a extends DaggerMvRxViewModelFactory<f, e> {
        public a(kotlin.jvm.internal.d dVar) {
            super(f.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(e state, l profileWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(profileWork, "profileWork");
        this.f5649h = profileWork;
    }
}
