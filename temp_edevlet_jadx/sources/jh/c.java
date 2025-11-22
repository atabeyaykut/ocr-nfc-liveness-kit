package jh;

import c5.v;
import kotlin.jvm.internal.h;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class c extends af.c<b> {

    /* renamed from: h, reason: collision with root package name */
    public final f f8521h;

    public static final class a extends DaggerMvRxViewModelFactory<c, b> {
        public a(kotlin.jvm.internal.d dVar) {
            super(c.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b state, f mobileAccidentIntroductionWork) {
        super(state);
        h.f(state, "state");
        h.f(mobileAccidentIntroductionWork, "mobileAccidentIntroductionWork");
        this.f8521h = mobileAccidentIntroductionWork;
        d dVar = new d(this, null);
        a0 a0Var = this.f13883c;
        v.C(a0Var, null, 0, dVar, 3);
        v.D(a0Var, mobileAccidentIntroductionWork, new e(this, null));
    }
}
