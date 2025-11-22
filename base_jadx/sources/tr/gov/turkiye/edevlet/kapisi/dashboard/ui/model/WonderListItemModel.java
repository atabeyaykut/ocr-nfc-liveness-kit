package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.view.View;
import androidx.core.app.NotificationCompat;
import he.a;
import ie.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemWonderListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/WonderListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemWonderListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V", "", "question", "Ljava/lang/String;", "getQuestion", "()Ljava/lang/String;", "setQuestion", "(Ljava/lang/String;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class WonderListItemModel extends a<ItemWonderListBinding> {
    public l<? super ServiceModelRealm, m> listener;
    public String question;
    public ServiceModelRealm service;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(WonderListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemWonderListBinding itemWonderListBinding) {
        h.f(itemWonderListBinding, "<this>");
        itemWonderListBinding.f16312c.setText(getQuestion());
        itemWonderListBinding.f16311b.setOnClickListener(new d(5, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_wonder_list;
    }

    public final l<ServiceModelRealm, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final String getQuestion() {
        String str = this.question;
        if (str != null) {
            return str;
        }
        h.n("question");
        throw null;
    }

    public final ServiceModelRealm getService() {
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm != null) {
            return serviceModelRealm;
        }
        h.n(NotificationCompat.CATEGORY_SERVICE);
        throw null;
    }

    public final void setListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setQuestion(String str) {
        h.f(str, "<set-?>");
        this.question = str;
    }

    public final void setService(ServiceModelRealm serviceModelRealm) {
        h.f(serviceModelRealm, "<set-?>");
        this.service = serviceModelRealm;
    }
}
