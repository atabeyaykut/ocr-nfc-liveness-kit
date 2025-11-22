package tr.gov.turkiye.edevlet.kapisi.dashboard.mostused;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import c5.v;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.util.ArrayList;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.n;
import r0.q;
import sf.f;
import sf.i;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListDBModelKt;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/mostused/MostUsedServicesFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController$a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MostUsedServicesFragment extends ee.a implements ServiceListUIController.a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16365h = {androidx.room.util.a.b(MostUsedServicesFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/mostused/MostUsedServicesViewModel;"), androidx.room.util.a.b(MostUsedServicesFragment.class, "mMostUsedFragmentBinding", "getMMostUsedFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16366a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16367b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16368c;

    /* renamed from: d, reason: collision with root package name */
    public ServiceListUIController f16369d;

    /* renamed from: e, reason: collision with root package name */
    public ServiceModelRealm f16370e;
    public List<? extends ServiceModelRealm> f;

    /* renamed from: g, reason: collision with root package name */
    public Context f16371g;

    public static final class a extends j implements l<sf.c, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x003b  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(sf.c r11) {
            /*
                Method dump skipped, instructions count: 569
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesFragment.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentServiceListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16373a = new b();

        public b() {
            super(1, FragmentServiceListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentServiceListBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentServiceListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<sf.d, sf.c>, sf.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16374a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16375b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16376c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16374a = fragment;
            this.f16375b = dVar;
            this.f16376c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, sf.d] */
        @Override // x9.l
        public final sf.d invoke(q<sf.d, sf.c> qVar) {
            q<sf.d, sf.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16375b);
            Fragment fragment = this.f16374a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16376c, clsQ, sf.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16377a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16378b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16379c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16377a = dVar;
            this.f16378b = cVar;
            this.f16379c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16377a, new tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.a(this), w.a(sf.c.class), this.f16378b);
        }
    }

    public MostUsedServicesFragment() {
        super(R.layout.fragment_service_list);
        da.d dVarA = w.a(sf.d.class);
        this.f16367b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16365h[0]);
        this.f16368c = d0.C(this, b.f16373a);
    }

    public static final void E(MostUsedServicesFragment mostUsedServicesFragment, ServiceModelRealm serviceModelRealm, boolean z10) {
        List<? extends ServiceModelRealm> list = mostUsedServicesFragment.f;
        if (list != null) {
            List<? extends ServiceModelRealm> list2 = list;
            ArrayList arrayList = new ArrayList(n.Q0(list2));
            for (ServiceModelRealm serviceModelRealmConvertNormalStatus : list2) {
                if (h.a(serviceModelRealmConvertNormalStatus.getServiceCode(), serviceModelRealm.getServiceCode()) && serviceModelRealmConvertNormalStatus.getIsFavoriteProgress()) {
                    serviceModelRealmConvertNormalStatus = ServiceListDBModelKt.convertNormalStatus(serviceModelRealmConvertNormalStatus, z10);
                }
                arrayList.add(serviceModelRealmConvertNormalStatus);
            }
            mostUsedServicesFragment.f = arrayList;
            ServiceListUIController serviceListUIController = mostUsedServicesFragment.f16369d;
            if (serviceListUIController != null) {
                serviceListUIController.setData(arrayList);
                return;
            } else {
                h.n("mServiceController");
                throw null;
            }
        }
        mostUsedServicesFragment.f16369d = new ServiceListUIController(mostUsedServicesFragment);
        EpoxyRecyclerView epoxyRecyclerView = mostUsedServicesFragment.F().f16248e;
        ServiceListUIController serviceListUIController2 = mostUsedServicesFragment.f16369d;
        if (serviceListUIController2 == null) {
            h.n("mServiceController");
            throw null;
        }
        epoxyRecyclerView.setController(serviceListUIController2);
        ServiceListUIController serviceListUIController3 = mostUsedServicesFragment.f16369d;
        if (serviceListUIController3 == null) {
            h.n("mServiceController");
            throw null;
        }
        List<? extends ServiceModelRealm> list3 = mostUsedServicesFragment.f;
        if (list3 == null) {
            h.n("mServiceList");
            throw null;
        }
        serviceListUIController3.setData(list3);
    }

    public final FragmentServiceListBinding F() {
        return (FragmentServiceListBinding) this.f16368c.a(this, f16365h[1]);
    }

    public final void G() {
        F().f16248e.setVisibility(8);
        F().f16247d.setVisibility(8);
        F().f16246c.f15873a.setVisibility(8);
        F().f.f15878a.setVisibility(0);
        F().f.f15881d.setText(getString(R.string.no_content_found_title));
        F().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = F().f.f15879b;
        h.e(imageView, "mMostUsedFragmentBinding…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void H(boolean z10, boolean z11) {
        int r42 = z10 ? R.string.service_error_info : z11 ? R.string.favorite_error_info : R.string.unFavorite_error_info;
        Context context = this.f16371g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r12 = ke.d.f8929a;
            ConstraintLayout constraintLayout = F().f16245b;
            h.e(constraintLayout, "mMostUsedFragmentBinding.containerList");
            ke.d dVarA = d.a.a(constraintLayout, r42, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void I() {
        Context context = this.f16371g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = F().f16245b;
            h.e(constraintLayout, "mMostUsedFragmentBinding.containerList");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController.a
    public final void a(ServiceModelRealm service) {
        h.f(service, "service");
        gf.b bVar = this.f16366a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                I();
                return;
            }
            this.f16370e = service;
            Intent intentC = oe.a.c(service, service.isFavorite());
            if (intentC != null) {
                startActivity(intentC);
                return;
            }
        }
        H(true, false);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController.a
    public final void b(ServiceModelRealm service, boolean z10) {
        h.f(service, "service");
        gf.b bVar = this.f16366a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                I();
                return;
            }
            e eVar = this.f16367b;
            if (z10) {
                Integer serviceCode = service.getServiceCode();
                if (serviceCode != null) {
                    int r82 = serviceCode.intValue();
                    sf.d dVar = (sf.d) eVar.getValue();
                    v.C(dVar.f13883c, null, 0, new sf.e(dVar, r82, null), 3);
                    v.D(dVar.f13883c, dVar.f15410i, new f(dVar, null));
                }
            } else {
                Integer serviceCode2 = service.getServiceCode();
                if (serviceCode2 != null) {
                    int r83 = serviceCode2.intValue();
                    sf.d dVar2 = (sf.d) eVar.getValue();
                    v.C(dVar2.f13883c, null, 0, new i(dVar2, r83, null), 3);
                    v.D(dVar2.f13883c, dVar2.f15411j, new sf.j(dVar2, null));
                }
            }
            List<? extends ServiceModelRealm> list = this.f;
            if (list == null) {
                h.n("mServiceList");
                throw null;
            }
            List<? extends ServiceModelRealm> list2 = list;
            ArrayList arrayList = new ArrayList(n.Q0(list2));
            for (ServiceModelRealm serviceModelRealmConvertProgressItem : list2) {
                if (h.a(serviceModelRealmConvertProgressItem, service)) {
                    serviceModelRealmConvertProgressItem = ServiceListDBModelKt.convertProgressItem(serviceModelRealmConvertProgressItem);
                }
                arrayList.add(serviceModelRealmConvertProgressItem);
            }
            this.f = arrayList;
            ServiceListUIController serviceListUIController = this.f16369d;
            if (serviceListUIController == null) {
                h.n("mServiceController");
                throw null;
            }
            serviceListUIController.setData(arrayList);
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((sf.d) this.f16367b.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16371g = view.getContext();
    }
}
