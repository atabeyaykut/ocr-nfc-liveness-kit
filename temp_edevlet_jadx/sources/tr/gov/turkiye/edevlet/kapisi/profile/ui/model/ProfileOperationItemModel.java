package tr.gov.turkiye.edevlet.kapisi.profile.ui.model;

import android.view.View;
import android.widget.ImageView;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.profile.databinding.ItemProfileOperationGridBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/ui/model/ProfileOperationItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/profile/databinding/ItemProfileOperationGridBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ljg/a;", "profilePageItem", "Ljg/a;", "getProfilePageItem", "()Ljg/a;", "setProfilePageItem", "(Ljg/a;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class ProfileOperationItemModel extends a<ItemProfileOperationGridBinding> {
    public l<? super jg.a, m> listener;
    public jg.a profilePageItem;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ProfileOperationItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getProfilePageItem());
    }

    @Override // he.a
    public void bind(ItemProfileOperationGridBinding itemProfileOperationGridBinding) {
        h.f(itemProfileOperationGridBinding, "<this>");
        itemProfileOperationGridBinding.f16658d.setText(getProfilePageItem().f8508b);
        ImageView profileItemLogo = itemProfileOperationGridBinding.f16657c;
        h.e(profileItemLogo, "profileItemLogo");
        b.a(profileItemLogo, getProfilePageItem().f8509c);
        itemProfileOperationGridBinding.f16656b.setOnClickListener(new zd.a(8, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_profile_operation_grid;
    }

    public final l<jg.a, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final jg.a getProfilePageItem() {
        jg.a aVar = this.profilePageItem;
        if (aVar != null) {
            return aVar;
        }
        h.n("profilePageItem");
        throw null;
    }

    public final void setListener(l<? super jg.a, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setProfilePageItem(jg.a aVar) {
        h.f(aVar, "<set-?>");
        this.profilePageItem = aVar;
    }
}
