package tr.gov.turkiye.edevlet.kapisi.dashboard.favorite;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.v;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.snackbar.Snackbar;
import da.m;
import java.util.ArrayList;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.w;
import nc.a0;
import r0.q;
import rf.f;
import rf.g;
import rf.j;
import rf.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.FavoriteServiceListUIController;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/FavoriteServiceListUIController$a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class FavoriteServicesFragment extends ee.a implements FavoriteServiceListUIController.a {

    /* renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16345l = {androidx.room.util.a.b(FavoriteServicesFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/favorite/FavoriteServicesViewModel;"), androidx.room.util.a.b(FavoriteServicesFragment.class, "mFavoriteServiceBinding", "getMFavoriteServiceBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16346a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f16347b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16348c;

    /* renamed from: d, reason: collision with root package name */
    public ServiceModelRealm f16349d;

    /* renamed from: e, reason: collision with root package name */
    public ServiceModelRealm f16350e;
    public FavoriteServiceListUIController f;

    /* renamed from: g, reason: collision with root package name */
    public ServiceModelRealm f16351g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f16352h;

    /* renamed from: j, reason: collision with root package name */
    public Snackbar f16353j;

    /* renamed from: k, reason: collision with root package name */
    public Context f16354k;

    public static final class a extends Snackbar.Callback {
        public a() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.material.snackbar.Snackbar.Callback, com.google.android.material.snackbar.BaseTransientBottomBar.BaseCallback
        public final void onDismissed(Snackbar snackbar, int r72) {
            FavoriteServicesFragment favoriteServicesFragment;
            ServiceModelRealm serviceModelRealm;
            Integer serviceCode;
            if (r72 != 2 || (serviceModelRealm = (favoriteServicesFragment = FavoriteServicesFragment.this).f16350e) == null || (serviceCode = serviceModelRealm.getServiceCode()) == null) {
                return;
            }
            int r73 = serviceCode.intValue();
            g gVar = (g) favoriteServicesFragment.f16347b.getValue();
            gVar.getClass();
            j jVar = new j(gVar, r73, null);
            a0 a0Var = gVar.f13883c;
            v.C(a0Var, null, 0, jVar, 3);
            v.D(a0Var, gVar.f14653i, new k(gVar, null));
            favoriteServicesFragment.f16350e = null;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements l<f, l9.m> {
        public b() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:90:0x0174  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(rf.f r13) {
            /*
                Method dump skipped, instructions count: 476
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.FavoriteServicesFragment.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class c extends kotlin.jvm.internal.g implements l<View, FragmentServiceListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f16357a = new c();

        public c() {
            super(1, FragmentServiceListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentServiceListBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentServiceListBinding.bind(p02);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements l<q<g, f>, g> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16358a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16359b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16360c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16358a = fragment;
            this.f16359b = dVar;
            this.f16360c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, rf.g] */
        @Override // x9.l
        public final g invoke(q<g, f> qVar) {
            q<g, f> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16359b);
            Fragment fragment = this.f16358a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16360c, clsQ, f.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class e extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16361a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16362b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16363c;

        public e(da.d dVar, d dVar2, da.d dVar3) {
            this.f16361a = dVar;
            this.f16362b = dVar2;
            this.f16363c = dVar3;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16361a, new tr.gov.turkiye.edevlet.kapisi.dashboard.favorite.a(this), w.a(f.class), this.f16362b);
        }
    }

    public FavoriteServicesFragment() {
        super(R.layout.fragment_service_list);
        da.d dVarA = w.a(g.class);
        this.f16347b = new e(dVarA, new d(this, dVarA, dVarA), dVarA).t(this, f16345l[0]);
        this.f16348c = d0.C(this, c.f16357a);
    }

    public final FragmentServiceListBinding E() {
        return (FragmentServiceListBinding) this.f16348c.a(this, f16345l[1]);
    }

    public final void F() {
        E().f16248e.setVisibility(8);
        E().f16247d.setVisibility(8);
        E().f16246c.f15873a.setVisibility(8);
        E().f.f15878a.setVisibility(0);
        E().f.f15881d.setText(getString(R.string.no_favorite_service_title));
        E().f.f15880c.setText(getString(R.string.no_favorite_service_content));
        ImageView imageView = E().f.f15879b;
        h.e(imageView, "mFavoriteServiceBinding.systemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_fav_null);
    }

    public final void G() {
        Context context = this.f16354k;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f16245b;
            h.e(constraintLayout, "mFavoriteServiceBinding.containerList");
            ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void H() {
        E().f16248e.setVisibility(8);
        E().f16247d.setVisibility(8);
        E().f.f15878a.setVisibility(8);
        E().f16246c.f15873a.setVisibility(0);
        E().f16246c.f15874b.setOnClickListener(new zd.e(3, this));
    }

    public final void I() {
        Context context = this.f16354k;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = E().f16245b;
            h.e(constraintLayout, "mFavoriteServiceBinding.containerList");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    public final void J() {
        E().f16247d.setVisibility(8);
        E().f16246c.f15873a.setVisibility(8);
        E().f.f15878a.setVisibility(8);
        E().f16248e.setVisibility(0);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.FavoriteServiceListUIController.a
    public final void a(ServiceModelRealm service) {
        h.f(service, "service");
        gf.b bVar = this.f16346a;
        if (bVar == null) {
            h.n("mNetworkHelper");
            throw null;
        }
        if (!bVar.a()) {
            I();
            return;
        }
        this.f16351g = service;
        Intent intentC = oe.a.c(service, service.isFavorite());
        if (intentC != null) {
            startActivity(intentC);
        } else {
            G();
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((g) this.f16347b.getValue(), new b());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.FavoriteServiceListUIController.a
    public final void l(final ServiceModelRealm service, final int r92) {
        ServiceModelRealm serviceModelRealm;
        Integer serviceCode;
        h.f(service, "service");
        gf.b bVar = this.f16346a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                I();
                return;
            }
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            ConstraintLayout constraintLayout = E().f16245b;
            h.e(constraintLayout, "mFavoriteServiceBinding.containerList");
            Resources resources = getResources();
            h.e(resources, "resources");
            Snackbar snackbarMake = Snackbar.make(constraintLayout, resources.getString(R.string.snackbar_text), 0);
            h.e(snackbarMake, "make(\n        view,\n    …nackbar.LENGTH_LONG\n    )");
            snackbarMake.setActionTextColor(ResourcesCompat.getColor(resources, R.color.fav_toast_button_back, null));
            snackbarMake.setTextColor(ResourcesCompat.getColor(resources, R.color.white, null));
            snackbarMake.getView().setBackgroundColor(ResourcesCompat.getColor(resources, R.color.fav_toast_back, null));
            snackbarMake.setAnchorView(viewFindViewById);
            this.f16353j = snackbarMake;
            snackbarMake.setAction(R.string.undo_button_text, new View.OnClickListener() { // from class: rf.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    da.m<Object>[] mVarArr = FavoriteServicesFragment.f16345l;
                    FavoriteServicesFragment this$0 = this.f14644a;
                    kotlin.jvm.internal.h.f(this$0, "this$0");
                    ServiceModelRealm service2 = service;
                    kotlin.jvm.internal.h.f(service2, "$service");
                    ArrayList arrayList = this$0.f16352h;
                    if (arrayList == null) {
                        kotlin.jvm.internal.h.n("mServiceList");
                        throw null;
                    }
                    arrayList.add(r92, service2);
                    ArrayList arrayList2 = this$0.f16352h;
                    if (arrayList2 == null) {
                        kotlin.jvm.internal.h.n("mServiceList");
                        throw null;
                    }
                    if (arrayList2.size() == 1) {
                        this$0.J();
                    }
                    FavoriteServiceListUIController favoriteServiceListUIController = this$0.f;
                    if (favoriteServiceListUIController == null) {
                        kotlin.jvm.internal.h.n("mServiceListController");
                        throw null;
                    }
                    ArrayList arrayList3 = this$0.f16352h;
                    if (arrayList3 == null) {
                        kotlin.jvm.internal.h.n("mServiceList");
                        throw null;
                    }
                    favoriteServiceListUIController.setData(arrayList3);
                    this$0.f16349d = null;
                }
            });
            Snackbar snackbar = this.f16353j;
            if (snackbar == null) {
                h.n("snackBar");
                throw null;
            }
            snackbar.addCallback(new a());
            this.f16350e = service;
            ArrayList arrayList = this.f16352h;
            if (arrayList == null) {
                h.n("mServiceList");
                throw null;
            }
            arrayList.remove(service);
            ArrayList arrayList2 = this.f16352h;
            if (arrayList2 == null) {
                h.n("mServiceList");
                throw null;
            }
            if (arrayList2.isEmpty()) {
                F();
            } else {
                FavoriteServiceListUIController favoriteServiceListUIController = this.f;
                if (favoriteServiceListUIController == null) {
                    h.n("mServiceListController");
                    throw null;
                }
                ArrayList arrayList3 = this.f16352h;
                if (arrayList3 == null) {
                    h.n("mServiceList");
                    throw null;
                }
                favoriteServiceListUIController.setData(arrayList3);
            }
            Snackbar snackbar2 = this.f16353j;
            if (snackbar2 == null) {
                h.n("snackBar");
                throw null;
            }
            snackbar2.show();
            ServiceModelRealm serviceModelRealm2 = this.f16349d;
            if (serviceModelRealm2 == null) {
                this.f16349d = service;
                return;
            }
            if (h.a(serviceModelRealm2.getServiceCode(), service.getServiceCode()) || (serviceModelRealm = this.f16349d) == null || (serviceCode = serviceModelRealm.getServiceCode()) == null) {
                return;
            }
            int r82 = serviceCode.intValue();
            g gVar = (g) this.f16347b.getValue();
            gVar.getClass();
            j jVar = new j(gVar, r82, null);
            a0 a0Var = gVar.f13883c;
            v.C(a0Var, null, 0, jVar, 3);
            v.D(a0Var, gVar.f14653i, new k(gVar, null));
            this.f16349d = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onPause() throws Throwable {
        Integer serviceCode;
        super.onPause();
        Snackbar snackbar = this.f16353j;
        if (snackbar != null) {
            if (snackbar == null) {
                h.n("snackBar");
                throw null;
            }
            if (snackbar.isShown()) {
                Snackbar snackbar2 = this.f16353j;
                if (snackbar2 == null) {
                    h.n("snackBar");
                    throw null;
                }
                snackbar2.dismiss();
                ServiceModelRealm serviceModelRealm = this.f16350e;
                if (serviceModelRealm == null || (serviceCode = serviceModelRealm.getServiceCode()) == null) {
                    return;
                }
                l9.g[] gVarArr = {new l9.g("serviceCode", Integer.valueOf(serviceCode.intValue()))};
                Data.Builder builder = new Data.Builder();
                l9.g gVar = gVarArr[0];
                builder.put((String) gVar.f9582a, gVar.f9583b);
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                Context context = this.f16354k;
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(UnfavoriteOperationWorker.class).setInputData(dataBuild).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
                OneTimeWorkRequest oneTimeWorkRequest = oneTimeWorkRequestBuild;
                if (context != null) {
                    WorkManager.getInstance(context).enqueue(oneTimeWorkRequest);
                }
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16354k = view.getContext();
    }
}
