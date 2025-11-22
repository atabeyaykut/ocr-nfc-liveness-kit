package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import e.f;
import he.a;
import ie.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import p.g;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemAboutGridBinding;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/AboutPageItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAboutGridBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;", "aboutPageItem", "Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;", "getAboutPageItem", "()Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;", "setAboutPageItem", "(Ltr/gov/turkiye/edevlet/kapisi/data/about/AboutPageModelRealm;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class AboutPageItemModel extends a<ItemAboutGridBinding> {
    public AboutPageModelRealm aboutPageItem;
    public l<? super AboutPageModelRealm, m> listener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(AboutPageItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getAboutPageItem());
    }

    @Override // he.a
    public void bind(ItemAboutGridBinding itemAboutGridBinding) {
        h.f(itemAboutGridBinding, "<this>");
        itemAboutGridBinding.f16252d.setText(getAboutPageItem().getName());
        ImageView dashboardItemLogo = itemAboutGridBinding.f16251c;
        h.e(dashboardItemLogo, "dashboardItemLogo");
        String iconName = getAboutPageItem().getIconName();
        int r22 = Build.VERSION.SDK_INT;
        if (r22 == 26 || r22 == 27) {
            dashboardItemLogo.setLayerType(1, null);
        }
        f fVarL = x5.a.l(dashboardItemLogo.getContext());
        g.a aVar = new g.a(dashboardItemLogo.getContext());
        aVar.f12143c = iconName;
        aVar.e(dashboardItemLogo);
        aVar.b();
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.img_placeholder);
        aVar.c(R.drawable.img_placeholder);
        fVarL.a(aVar.a());
        itemAboutGridBinding.f16250b.setOnClickListener(new d(3, this));
    }

    public final AboutPageModelRealm getAboutPageItem() {
        AboutPageModelRealm aboutPageModelRealm = this.aboutPageItem;
        if (aboutPageModelRealm != null) {
            return aboutPageModelRealm;
        }
        h.n("aboutPageItem");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_about_grid;
    }

    public final l<AboutPageModelRealm, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final void setAboutPageItem(AboutPageModelRealm aboutPageModelRealm) {
        h.f(aboutPageModelRealm, "<set-?>");
        this.aboutPageItem = aboutPageModelRealm;
    }

    public final void setListener(l<? super AboutPageModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }
}
