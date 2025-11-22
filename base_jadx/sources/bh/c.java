package bh;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class c extends af.c<b> {

    /* renamed from: h, reason: collision with root package name */
    public final i f1311h;

    /* renamed from: i, reason: collision with root package name */
    public final j f1312i;

    public static final class a extends DaggerMvRxViewModelFactory<c, b> {
        public a(kotlin.jvm.internal.d dVar) {
            super(c.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b state, i mobileAccidentConditionWork, j mobileAccidentInitializeWork) {
        super(state);
        kotlin.jvm.internal.h.f(state, "state");
        kotlin.jvm.internal.h.f(mobileAccidentConditionWork, "mobileAccidentConditionWork");
        kotlin.jvm.internal.h.f(mobileAccidentInitializeWork, "mobileAccidentInitializeWork");
        this.f1311h = mobileAccidentConditionWork;
        this.f1312i = mobileAccidentInitializeWork;
        f fVar = new f(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, fVar, 3);
        v.D(a0Var, mobileAccidentConditionWork, new g(this, null));
    }
}
