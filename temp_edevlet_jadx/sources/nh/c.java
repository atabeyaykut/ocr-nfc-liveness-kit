package nh;

import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class c extends af.c<b> {

    /* renamed from: h, reason: collision with root package name */
    public final f f11008h;

    public static final class a extends DaggerMvRxViewModelFactory<c, b> {
        public a(kotlin.jvm.internal.d dVar) {
            super(c.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(b state, f mobileAccidentMatchedReportWork) {
        super(state);
        h.f(state, "state");
        h.f(mobileAccidentMatchedReportWork, "mobileAccidentMatchedReportWork");
        this.f11008h = mobileAccidentMatchedReportWork;
    }
}
