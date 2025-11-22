package tr.gov.turkiye.edevlet.kapisi.search;

import android.content.Intent;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

/* loaded from: classes3.dex */
public final class a extends j implements l<ServiceModelRealm, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchFragment f16733a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(SearchFragment searchFragment) {
        super(1);
        this.f16733a = searchFragment;
    }

    @Override // x9.l
    public final m invoke(ServiceModelRealm serviceModelRealm) {
        ServiceModelRealm service = serviceModelRealm;
        h.e(service, "service");
        da.m<Object>[] mVarArr = SearchFragment.f16707s;
        SearchFragment searchFragment = this.f16733a;
        searchFragment.getClass();
        Intent intentC = oe.a.c(service, service.isFavorite());
        if (intentC != null) {
            searchFragment.startActivity(intentC);
        }
        return m.f9594a;
    }
}
