package tr.gov.turkiye.edevlet.kapisi.profile.ui.controller;

import android.content.Context;
import com.airbnb.epoxy.Typed3EpoxyController;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import m9.n;
import tr.gov.turkiye.edevlet.kapisi.data.profile.ProfileContactData;
import tr.gov.turkiye.edevlet.kapisi.profile.ui.model.ProfileContactModel_;
import tr.gov.turkiye.edevlet.kapisi.profile.ui.model.ProfileOperationItemModel_;
import x9.l;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u000e\u0010\u000fJ,\u0010\n\u001a\u00020\t2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u00032\u000e\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004H\u0014R\u0014\u0010\f\u001a\u00020\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0011"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController;", "Lcom/airbnb/epoxy/Typed3EpoxyController;", "Ltr/gov/turkiye/edevlet/kapisi/data/profile/ProfileContactData;", "Landroid/content/Context;", "", "Ljg/a;", "profileContactData", "profileContext", "profileOperationList", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/profile/ui/controller/ProfileUIController$a;)V", "a", "ui-profile_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ProfileUIController extends Typed3EpoxyController<ProfileContactData, Context, List<? extends jg.a>> {
    private final a adapterCallbacks;

    public interface a {
        void s(jg.a aVar);

        void t();
    }

    public static final class b extends j implements x9.a<m> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final m invoke() {
            ProfileUIController.this.adapterCallbacks.t();
            return m.f9594a;
        }
    }

    public static final class c extends j implements l<jg.a, m> {
        public c() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(jg.a aVar) {
            jg.a operation = aVar;
            a aVar2 = ProfileUIController.this.adapterCallbacks;
            h.e(operation, "operation");
            aVar2.s(operation);
            return m.f9594a;
        }
    }

    public ProfileUIController(a adapterCallbacks) {
        h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    @Override // com.airbnb.epoxy.Typed3EpoxyController
    public /* bridge */ /* synthetic */ void buildModels(ProfileContactData profileContactData, Context context, List<? extends jg.a> list) {
        buildModels2(profileContactData, context, (List<jg.a>) list);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(ProfileContactData profileContactData, Context context, List<jg.a> list) {
        ArrayList arrayList;
        ProfileContactModel_ profileContactModel_ = new ProfileContactModel_();
        profileContactModel_.mo260id((CharSequence) "profileContactCard");
        profileContactModel_.profileContactCardData(profileContactData);
        profileContactModel_.context(context);
        profileContactModel_.listener((x9.a<m>) new b());
        add(profileContactModel_);
        if (list != null) {
            List<jg.a> list2 = list;
            arrayList = new ArrayList(n.Q0(list2));
            for (jg.a aVar : list2) {
                arrayList.add(new ProfileOperationItemModel_().m275id(Integer.valueOf(aVar.f8507a)).profilePageItem(aVar).m277listener((l<? super jg.a, m>) new c()));
            }
        } else {
            arrayList = null;
        }
        kg.b bVar = new kg.b();
        bVar.b();
        if (arrayList != null) {
            bVar.c(arrayList);
        }
        add(bVar);
    }
}
