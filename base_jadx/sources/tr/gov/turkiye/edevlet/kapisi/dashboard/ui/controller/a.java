package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller;

import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import lf.b;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.DashboardUIController;
import x9.l;

/* loaded from: classes3.dex */
public final class a extends j implements l<b, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DashboardUIController f16463a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(DashboardUIController dashboardUIController) {
        super(1);
        this.f16463a = dashboardUIController;
    }

    @Override // x9.l
    public final m invoke(b bVar) {
        b it = bVar;
        DashboardUIController.a aVar = this.f16463a.adapterCallbacks;
        h.e(it, "it");
        aVar.p(it);
        return m.f9594a;
    }
}
