package mf;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import ke.d;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageFragment;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;

/* loaded from: classes3.dex */
public final class a extends kotlin.jvm.internal.j implements x9.l<AboutPageModelRealm, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AboutPageFragment f10388a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(AboutPageFragment aboutPageFragment) {
        super(1);
        this.f10388a = aboutPageFragment;
    }

    @Override // x9.l
    public final m invoke(AboutPageModelRealm aboutPageModelRealm) {
        View viewFindViewById;
        AboutPageModelRealm aboutPage = aboutPageModelRealm;
        kotlin.jvm.internal.h.e(aboutPage, "aboutPage");
        AboutPageFragment aboutPageFragment = this.f10388a;
        gf.b bVar = aboutPageFragment.f16174a;
        if (bVar == null) {
            Context context = aboutPageFragment.f16177d;
            if (context != null) {
                FragmentActivity activity = aboutPageFragment.getActivity();
                viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                int r12 = ke.d.f8929a;
                ConstraintLayout constraintLayout = aboutPageFragment.E().f16220b;
                kotlin.jvm.internal.h.e(constraintLayout, "mAboutPageBinding.dashboardContainer");
                ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
                if (dVarA != null) {
                    dVarA.show();
                }
            }
        } else if (bVar.a()) {
            String folderUrl = aboutPage.getUrl();
            String pageName = aboutPage.getName();
            kotlin.jvm.internal.h.f(folderUrl, "folderUrl");
            kotlin.jvm.internal.h.f(pageName, "pageName");
            Intent intent = new Intent("action.servicepage.open");
            intent.putExtra("folderUrl", folderUrl);
            intent.putExtra("serviceName", pageName);
            intent.putExtra("isCustomPage", true);
            intent.putExtra("isEdkFolder", true);
            intent.putExtra("isFavMenuActive", false);
            if (Build.VERSION.SDK_INT >= 34) {
                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            aboutPageFragment.startActivity(intent);
        } else {
            Context context2 = aboutPageFragment.f16177d;
            if (context2 != null) {
                FragmentActivity activity2 = aboutPageFragment.getActivity();
                viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
                int r13 = ke.d.f8929a;
                ConstraintLayout constraintLayout2 = aboutPageFragment.E().f16220b;
                kotlin.jvm.internal.h.e(constraintLayout2, "mAboutPageBinding.dashboardContainer");
                ke.d dVarE = d.a.e(constraintLayout2, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
                if (dVarE != null) {
                    dVarE.show();
                }
            }
        }
        return m.f9594a;
    }
}
