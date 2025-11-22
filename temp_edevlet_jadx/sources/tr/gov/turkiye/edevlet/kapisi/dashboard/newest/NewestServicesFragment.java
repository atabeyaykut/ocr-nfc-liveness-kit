package tr.gov.turkiye.edevlet.kapisi.dashboard.newest;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
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
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.n;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListDBModelKt;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/ServiceListUIController$a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class NewestServicesFragment extends ee.a implements ServiceListUIController.a {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16420h = {androidx.room.util.a.b(NewestServicesFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/newest/NewestServicesViewModel;"), androidx.room.util.a.b(NewestServicesFragment.class, "mNewestServicesFragmentBinding", "getMNewestServicesFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16421a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16422b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16423c;

    /* renamed from: d, reason: collision with root package name */
    public ServiceListUIController f16424d;

    /* renamed from: e, reason: collision with root package name */
    public ServiceModelRealm f16425e;
    public List<? extends ServiceModelRealm> f;

    /* renamed from: g, reason: collision with root package name */
    public Context f16426g;

    public static final class a extends j implements l<vf.b, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(vf.b bVar) {
            Object next;
            vf.b state = bVar;
            h.f(state, "state");
            boolean z10 = state.f18586a;
            boolean z11 = true;
            NewestServicesFragment newestServicesFragment = NewestServicesFragment.this;
            ServiceModelRealm serviceModelRealm = state.f18588c;
            r0.b<Result<ServiceModelRealm>> bVar2 = state.f18590e;
            if (z10) {
                if (bVar2 instanceof c1) {
                    NewestServicesFragment.F(newestServicesFragment, serviceModelRealm, true);
                } else if (bVar2 instanceof i) {
                    NewestServicesFragment.E(newestServicesFragment, ((i) bVar2).f13749b, true);
                }
            } else if (!state.f18587b) {
                r0.b<Result<List<ServiceModelRealm>>> bVar3 = state.f;
                if (bVar3 instanceof d1 ? true : bVar3 instanceof k) {
                    m<Object>[] mVarArr = NewestServicesFragment.f16420h;
                    newestServicesFragment.G().f16248e.setVisibility(8);
                    newestServicesFragment.G().f16246c.f15873a.setVisibility(8);
                    newestServicesFragment.G().f.f15878a.setVisibility(8);
                    newestServicesFragment.G().f16247d.setVisibility(0);
                } else if (bVar3 instanceof c1) {
                    m<Object>[] mVarArr2 = NewestServicesFragment.f16420h;
                    newestServicesFragment.getClass();
                    List<ServiceModelRealm> list = state.f18589d;
                    List<ServiceModelRealm> list2 = list;
                    if (list2 != null && !list2.isEmpty()) {
                        z11 = false;
                    }
                    if (z11) {
                        newestServicesFragment.H();
                    } else {
                        newestServicesFragment.G().f16247d.setVisibility(8);
                        newestServicesFragment.G().f.f15878a.setVisibility(8);
                        newestServicesFragment.G().f16246c.f15873a.setVisibility(8);
                        newestServicesFragment.G().f16248e.setVisibility(0);
                        if (newestServicesFragment.f16424d == null) {
                            newestServicesFragment.f16424d = new ServiceListUIController(newestServicesFragment);
                            EpoxyRecyclerView epoxyRecyclerView = newestServicesFragment.G().f16248e;
                            ServiceListUIController serviceListUIController = newestServicesFragment.f16424d;
                            if (serviceListUIController == null) {
                                h.n("mServiceController");
                                throw null;
                            }
                            epoxyRecyclerView.setController(serviceListUIController);
                            newestServicesFragment.f = list;
                            ServiceListUIController serviceListUIController2 = newestServicesFragment.f16424d;
                            if (serviceListUIController2 == null) {
                                h.n("mServiceController");
                                throw null;
                            }
                            serviceListUIController2.setData(list);
                        } else if (newestServicesFragment.f16425e != null) {
                            g0 g0VarT = g0.t();
                            g0VarT.m();
                            RealmQuery realmQueryJ = g0VarT.J(ServiceModelRealm.class);
                            ServiceModelRealm serviceModelRealm2 = newestServicesFragment.f16425e;
                            if (serviceModelRealm2 == null) {
                                h.n("mService");
                                throw null;
                            }
                            realmQueryJ.b(serviceModelRealm2.getServiceCode(), "serviceCode");
                            ServiceModelRealm serviceModelRealm3 = (ServiceModelRealm) realmQueryJ.e();
                            if (serviceModelRealm3 != null) {
                                List<? extends ServiceModelRealm> list3 = newestServicesFragment.f;
                                if (list3 == null) {
                                    h.n("mServiceList");
                                    throw null;
                                }
                                Iterator<T> it = list3.iterator();
                                while (true) {
                                    if (!it.hasNext()) {
                                        next = null;
                                        break;
                                    }
                                    next = it.next();
                                    if (h.a(((ServiceModelRealm) next).getServiceCode(), serviceModelRealm3.getServiceCode())) {
                                        break;
                                    }
                                }
                                ServiceListDBModelKt.convertNormalStatus(serviceModelRealm3, serviceModelRealm3.isFavorite());
                            }
                            ServiceListUIController serviceListUIController3 = newestServicesFragment.f16424d;
                            if (serviceListUIController3 == null) {
                                h.n("mServiceController");
                                throw null;
                            }
                            List<? extends ServiceModelRealm> list4 = newestServicesFragment.f;
                            if (list4 == null) {
                                h.n("mServiceList");
                                throw null;
                            }
                            serviceListUIController3.setData(list4);
                        }
                    }
                } else if (bVar3 instanceof i) {
                    Throwable th2 = ((i) bVar3).f13749b;
                    m<Object>[] mVarArr3 = NewestServicesFragment.f16420h;
                    newestServicesFragment.getClass();
                    if (th2 instanceof LoginException) {
                        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                        if (Build.VERSION.SDK_INT >= 34) {
                            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                        }
                        newestServicesFragment.startActivity(intentB);
                        FragmentActivity activity = newestServicesFragment.getActivity();
                        if (activity != null) {
                            activity.finish();
                        }
                    } else if (th2 instanceof EmptyListException) {
                        newestServicesFragment.H();
                    } else if (th2 instanceof NetworkErrorException) {
                        newestServicesFragment.G().f16248e.setVisibility(8);
                        newestServicesFragment.G().f16247d.setVisibility(8);
                        newestServicesFragment.G().f.f15878a.setVisibility(8);
                        newestServicesFragment.G().f16246c.f15873a.setVisibility(0);
                        newestServicesFragment.G().f16246c.f15874b.setOnClickListener(new zd.a(3, newestServicesFragment));
                    } else {
                        newestServicesFragment.G().f16248e.setVisibility(8);
                        newestServicesFragment.G().f16247d.setVisibility(8);
                        newestServicesFragment.G().f16246c.f15873a.setVisibility(8);
                        newestServicesFragment.G().f.f15878a.setVisibility(0);
                    }
                }
            } else if (bVar2 instanceof c1) {
                NewestServicesFragment.F(newestServicesFragment, serviceModelRealm, false);
            } else if (bVar2 instanceof i) {
                NewestServicesFragment.E(newestServicesFragment, ((i) bVar2).f13749b, false);
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentServiceListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16428a = new b();

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

    public static final class c extends j implements l<q<vf.c, vf.b>, vf.c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16429a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16430b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16431c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16429a = fragment;
            this.f16430b = dVar;
            this.f16431c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, vf.c] */
        @Override // x9.l
        public final vf.c invoke(q<vf.c, vf.b> qVar) {
            q<vf.c, vf.b> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16430b);
            Fragment fragment = this.f16429a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16431c, clsQ, vf.b.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16432a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16433b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16434c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16432a = dVar;
            this.f16433b = cVar;
            this.f16434c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16432a, new tr.gov.turkiye.edevlet.kapisi.dashboard.newest.a(this), w.a(vf.b.class), this.f16433b);
        }
    }

    public NewestServicesFragment() {
        super(R.layout.fragment_service_list);
        da.d dVarA = w.a(vf.c.class);
        this.f16422b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16420h[0]);
        this.f16423c = d0.C(this, b.f16428a);
    }

    public static final void E(NewestServicesFragment newestServicesFragment, Throwable th2, boolean z10) {
        newestServicesFragment.getClass();
        if (!(th2 instanceof LoginException)) {
            if (th2 instanceof EmptyListException) {
                newestServicesFragment.H();
                return;
            } else if (th2 instanceof NetworkErrorException) {
                newestServicesFragment.J();
                return;
            } else {
                newestServicesFragment.I(true, z10);
                return;
            }
        }
        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
        if (Build.VERSION.SDK_INT >= 34) {
            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        newestServicesFragment.startActivity(intentB);
        FragmentActivity activity = newestServicesFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void F(NewestServicesFragment newestServicesFragment, ServiceModelRealm serviceModelRealm, boolean z10) {
        List<? extends ServiceModelRealm> list = newestServicesFragment.f;
        if (list != null) {
            List<? extends ServiceModelRealm> list2 = list;
            ArrayList arrayList = new ArrayList(n.Q0(list2));
            for (ServiceModelRealm serviceModelRealmConvertNormalStatus : list2) {
                if (h.a(serviceModelRealmConvertNormalStatus.getServiceCode(), serviceModelRealm.getServiceCode()) && serviceModelRealmConvertNormalStatus.getIsFavoriteProgress()) {
                    serviceModelRealmConvertNormalStatus = ServiceListDBModelKt.convertNormalStatus(serviceModelRealmConvertNormalStatus, z10);
                }
                arrayList.add(serviceModelRealmConvertNormalStatus);
            }
            newestServicesFragment.f = arrayList;
            ServiceListUIController serviceListUIController = newestServicesFragment.f16424d;
            if (serviceListUIController != null) {
                serviceListUIController.setData(arrayList);
                return;
            } else {
                h.n("mServiceController");
                throw null;
            }
        }
        newestServicesFragment.f16424d = new ServiceListUIController(newestServicesFragment);
        EpoxyRecyclerView epoxyRecyclerView = newestServicesFragment.G().f16248e;
        ServiceListUIController serviceListUIController2 = newestServicesFragment.f16424d;
        if (serviceListUIController2 == null) {
            h.n("mServiceController");
            throw null;
        }
        epoxyRecyclerView.setController(serviceListUIController2);
        ServiceListUIController serviceListUIController3 = newestServicesFragment.f16424d;
        if (serviceListUIController3 == null) {
            h.n("mServiceController");
            throw null;
        }
        List<? extends ServiceModelRealm> list3 = newestServicesFragment.f;
        if (list3 == null) {
            h.n("mServiceList");
            throw null;
        }
        serviceListUIController3.setData(list3);
    }

    public final FragmentServiceListBinding G() {
        return (FragmentServiceListBinding) this.f16423c.a(this, f16420h[1]);
    }

    public final void H() {
        G().f16248e.setVisibility(8);
        G().f16247d.setVisibility(8);
        G().f16246c.f15873a.setVisibility(8);
        G().f.f15878a.setVisibility(0);
        G().f.f15881d.setText(getString(R.string.no_content_found_title));
        G().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = G().f.f15879b;
        h.e(imageView, "mNewestServicesFragmentB…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void I(boolean z10, boolean z11) {
        Context context = this.f16426g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r02 = ke.d.f8929a;
            ConstraintLayout constraintLayout = G().f16245b;
            h.e(constraintLayout, "mNewestServicesFragmentBinding.containerList");
            ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void J() {
        Context context = this.f16426g;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = G().f16245b;
            h.e(constraintLayout, "mNewestServicesFragmentBinding.containerList");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController.a
    public final void a(ServiceModelRealm service) {
        h.f(service, "service");
        gf.b bVar = this.f16421a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                J();
                return;
            }
            this.f16425e = service;
            Intent intentC = oe.a.c(service, service.isFavorite());
            if (intentC != null) {
                startActivity(intentC);
                return;
            }
        }
        I(true, false);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.ServiceListUIController.a
    public final void b(ServiceModelRealm service, boolean z10) {
        h.f(service, "service");
        gf.b bVar = this.f16421a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                J();
                return;
            }
            e eVar = this.f16422b;
            if (z10) {
                Integer serviceCode = service.getServiceCode();
                if (serviceCode != null) {
                    int r82 = serviceCode.intValue();
                    vf.c cVar = (vf.c) eVar.getValue();
                    v.C(cVar.f13883c, null, 0, new vf.d(cVar, r82, null), 3);
                    v.D(cVar.f13883c, cVar.f18592i, new vf.e(cVar, null));
                }
            } else {
                Integer serviceCode2 = service.getServiceCode();
                if (serviceCode2 != null) {
                    int r83 = serviceCode2.intValue();
                    vf.c cVar2 = (vf.c) eVar.getValue();
                    v.C(cVar2.f13883c, null, 0, new vf.h(cVar2, r83, null), 3);
                    v.D(cVar2.f13883c, cVar2.f18593j, new vf.i(cVar2, null));
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
            ServiceListUIController serviceListUIController = this.f16424d;
            if (serviceListUIController == null) {
                h.n("mServiceController");
                throw null;
            }
            serviceListUIController.setData(arrayList);
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((vf.c) this.f16422b.getValue(), new a());
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
        this.f16426g = view.getContext();
    }
}
