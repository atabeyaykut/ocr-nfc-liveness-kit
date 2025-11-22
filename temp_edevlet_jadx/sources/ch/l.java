package ch;

import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class l extends af.c<k> {

    /* renamed from: h, reason: collision with root package name */
    public final o f2446h;

    public static final class a extends DaggerMvRxViewModelFactory<l, k> {
        public a(kotlin.jvm.internal.d dVar) {
            super(l.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(k state, o mobileAccidentDashPointWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentDashPointWork, "mobileAccidentDashPointWork");
        this.f2446h = mobileAccidentDashPointWork;
    }
}
