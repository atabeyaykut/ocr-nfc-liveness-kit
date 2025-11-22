package vg;

import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory;

/* loaded from: classes3.dex */
public final class d extends af.c<c> {

    /* renamed from: h, reason: collision with root package name */
    public final g f18643h;

    public static final class a extends DaggerMvRxViewModelFactory<d, c> {
        public a(kotlin.jvm.internal.d dVar) {
            super(d.class);
        }
    }

    static {
        new a(null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(c state, g institutionListWork) {
        super(state);
        h.f(state, "state");
        h.f(institutionListWork, "institutionListWork");
        this.f18643h = institutionListWork;
    }
}
