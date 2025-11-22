package tr.gov.turkiye.edevlet.kapisi.institution;

import ag.f;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import c5.b4;
import c5.v;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialSharedAxis;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.AbstractList;
import java.util.ArrayList;
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
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceListDBModelKt;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.institution.ServiceListController;
import tr.gov.turkiye.edevlet.kapisi.institution.databinding.FragmentInstitutionDetailBinding;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/institution/ServiceListController$a;", "<init>", "()V", "ui-institution-detail_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionDetailFragment extends ee.a implements ServiceListController.a {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16497m = {androidx.room.util.a.b(InstitutionDetailFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionDetailViewModel;"), androidx.room.util.a.b(InstitutionDetailFragment.class, "mInstitutionDetailFragmentBinding", "getMInstitutionDetailFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16498a;

    /* renamed from: b, reason: collision with root package name */
    public FirebaseAnalytics f16499b;

    /* renamed from: c, reason: collision with root package name */
    public final e f16500c;

    /* renamed from: d, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16501d;

    /* renamed from: e, reason: collision with root package name */
    public ServiceListController f16502e;
    public AbstractList f;

    /* renamed from: g, reason: collision with root package name */
    public ServiceModelRealm f16503g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16504h;

    /* renamed from: j, reason: collision with root package name */
    public Integer f16505j;

    /* renamed from: k, reason: collision with root package name */
    public Integer f16506k;

    /* renamed from: l, reason: collision with root package name */
    public Integer f16507l;

    public static final class a extends j implements l<ag.c, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(ag.c cVar) {
            AppCompatTextView appCompatTextView;
            String string;
            ServiceListController serviceListController;
            AbstractList abstractList;
            ag.c state = cVar;
            h.f(state, "state");
            boolean z10 = state.f291d;
            InstitutionDetailFragment institutionDetailFragment = InstitutionDetailFragment.this;
            ServiceModelRealm serviceModelRealm = state.f;
            r0.b<Result<ServiceModelRealm>> bVar = state.f290c;
            if (z10) {
                if (bVar instanceof c1) {
                    InstitutionDetailFragment.F(institutionDetailFragment, serviceModelRealm, true);
                } else if (bVar instanceof i) {
                    InstitutionDetailFragment.E(institutionDetailFragment, ((i) bVar).f13749b, true);
                }
            } else if (!state.f292e) {
                r0.b<Result<InstitutionModelRealm>> bVar2 = state.f288a;
                int r42 = 8;
                if (bVar2 instanceof d1 ? true : bVar2 instanceof k) {
                    m<Object>[] mVarArr = InstitutionDetailFragment.f16497m;
                    institutionDetailFragment.G().f16528g.setVisibility(8);
                    institutionDetailFragment.G().f16525c.setVisibility(8);
                    institutionDetailFragment.G().f16527e.f15873a.setVisibility(8);
                    institutionDetailFragment.G().f16529h.f15878a.setVisibility(8);
                    institutionDetailFragment.G().f.setVisibility(0);
                } else if (bVar2 instanceof c1) {
                    m<Object>[] mVarArr2 = InstitutionDetailFragment.f16497m;
                    institutionDetailFragment.G().f.setVisibility(8);
                    institutionDetailFragment.G().f16529h.f15878a.setVisibility(8);
                    institutionDetailFragment.G().f16527e.f15873a.setVisibility(8);
                    institutionDetailFragment.G().f16528g.setVisibility(0);
                    institutionDetailFragment.G().f16525c.setVisibility(0);
                    AppCompatTextView appCompatTextView2 = institutionDetailFragment.G().f16530i;
                    InstitutionModelRealm institutionModelRealm = state.f289b;
                    appCompatTextView2.setText(institutionModelRealm.getInstitutionName());
                    if (institutionModelRealm.getServiceCount() > 1) {
                        appCompatTextView = institutionDetailFragment.G().f16531j;
                        string = institutionDetailFragment.getString(R.string.plural_service_count, Integer.valueOf(institutionModelRealm.getServiceCount()));
                    } else {
                        appCompatTextView = institutionDetailFragment.G().f16531j;
                        string = institutionDetailFragment.getString(R.string.service_count, Integer.valueOf(institutionModelRealm.getServiceCount()));
                    }
                    appCompatTextView.setText(string);
                    ImageView imageView = institutionDetailFragment.G().f16526d;
                    h.e(imageView, "mInstitutionDetailFragme…ing.institutionDetailLogo");
                    ge.b.c(imageView, institutionModelRealm.getIconName());
                    if (institutionDetailFragment.f16502e == null) {
                        institutionDetailFragment.f16502e = new ServiceListController(institutionDetailFragment);
                        institutionDetailFragment.f = institutionModelRealm.getServiceList();
                        EpoxyRecyclerView epoxyRecyclerView = institutionDetailFragment.G().f16528g;
                        ServiceListController serviceListController2 = institutionDetailFragment.f16502e;
                        if (serviceListController2 == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        epoxyRecyclerView.setController(serviceListController2);
                        serviceListController = institutionDetailFragment.f16502e;
                        if (serviceListController == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        abstractList = institutionDetailFragment.f;
                        if (abstractList == null) {
                            h.n("serviceList");
                            throw null;
                        }
                    } else if (institutionDetailFragment.f16503g != null) {
                        g0 g0VarT = g0.t();
                        g0VarT.m();
                        RealmQuery realmQueryJ = g0VarT.J(ServiceModelRealm.class);
                        ServiceModelRealm serviceModelRealm2 = institutionDetailFragment.f16503g;
                        if (serviceModelRealm2 == null) {
                            h.n("mService");
                            throw null;
                        }
                        realmQueryJ.b(serviceModelRealm2.getServiceCode(), "serviceCode");
                        ServiceModelRealm serviceModelRealm3 = (ServiceModelRealm) realmQueryJ.e();
                        if (serviceModelRealm3 != null) {
                            AbstractList<ServiceModelRealm> abstractList2 = institutionDetailFragment.f;
                            if (abstractList2 == null) {
                                h.n("serviceList");
                                throw null;
                            }
                            ArrayList arrayList = new ArrayList(n.Q0(abstractList2));
                            for (ServiceModelRealm serviceModelRealmConvertNormalStatus : abstractList2) {
                                ServiceModelRealm serviceModelRealm4 = institutionDetailFragment.f16503g;
                                if (serviceModelRealm4 == null) {
                                    h.n("mService");
                                    throw null;
                                }
                                if (h.a(serviceModelRealmConvertNormalStatus, serviceModelRealm4)) {
                                    serviceModelRealmConvertNormalStatus = ServiceListDBModelKt.convertNormalStatus(serviceModelRealmConvertNormalStatus, serviceModelRealm3.isFavorite());
                                }
                                arrayList.add(serviceModelRealmConvertNormalStatus);
                            }
                            institutionDetailFragment.f = arrayList;
                        }
                        EpoxyRecyclerView epoxyRecyclerView2 = institutionDetailFragment.G().f16528g;
                        ServiceListController serviceListController3 = institutionDetailFragment.f16502e;
                        if (serviceListController3 == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        epoxyRecyclerView2.setController(serviceListController3);
                        serviceListController = institutionDetailFragment.f16502e;
                        if (serviceListController == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        abstractList = institutionDetailFragment.f;
                        if (abstractList == null) {
                            h.n("serviceList");
                            throw null;
                        }
                    } else {
                        institutionDetailFragment.f16502e = new ServiceListController(institutionDetailFragment);
                        EpoxyRecyclerView epoxyRecyclerView3 = institutionDetailFragment.G().f16528g;
                        ServiceListController serviceListController4 = institutionDetailFragment.f16502e;
                        if (serviceListController4 == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        epoxyRecyclerView3.setController(serviceListController4);
                        serviceListController = institutionDetailFragment.f16502e;
                        if (serviceListController == null) {
                            h.n("serviceController");
                            throw null;
                        }
                        abstractList = institutionDetailFragment.f;
                        if (abstractList == null) {
                            h.n("serviceList");
                            throw null;
                        }
                    }
                    serviceListController.setData(abstractList);
                } else if (bVar2 instanceof i) {
                    Throwable th2 = ((i) bVar2).f13749b;
                    m<Object>[] mVarArr3 = InstitutionDetailFragment.f16497m;
                    institutionDetailFragment.getClass();
                    if (th2 instanceof LoginException) {
                        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                        if (Build.VERSION.SDK_INT >= 34) {
                            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                        }
                        institutionDetailFragment.startActivity(intentB);
                        FragmentActivity activity = institutionDetailFragment.getActivity();
                        if (activity != null) {
                            activity.finish();
                        }
                    } else if (th2 instanceof EmptyListException) {
                        institutionDetailFragment.G().f16528g.setVisibility(8);
                        institutionDetailFragment.G().f16525c.setVisibility(8);
                        institutionDetailFragment.G().f.setVisibility(8);
                        institutionDetailFragment.G().f16527e.f15873a.setVisibility(8);
                        institutionDetailFragment.G().f16529h.f15878a.setVisibility(0);
                        institutionDetailFragment.G().f16529h.f15881d.setText(institutionDetailFragment.getString(R.string.no_content_found_title));
                        institutionDetailFragment.G().f16529h.f15880c.setText(institutionDetailFragment.getString(R.string.no_content_found_content));
                        ImageView imageView2 = institutionDetailFragment.G().f16529h.f15879b;
                        h.e(imageView2, "mInstitutionDetailFragme…ystemErrorView.iconSearch");
                        ge.b.a(imageView2, R.drawable.icon_system_error);
                    } else if (th2 instanceof NetworkErrorException) {
                        institutionDetailFragment.G().f16528g.setVisibility(8);
                        institutionDetailFragment.G().f16525c.setVisibility(8);
                        institutionDetailFragment.G().f.setVisibility(8);
                        institutionDetailFragment.G().f16529h.f15878a.setVisibility(8);
                        institutionDetailFragment.G().f16527e.f15873a.setVisibility(0);
                        institutionDetailFragment.G().f16527e.f15874b.setOnClickListener(new zd.d(r42, institutionDetailFragment));
                    } else {
                        institutionDetailFragment.G().f16528g.setVisibility(8);
                        institutionDetailFragment.G().f16525c.setVisibility(8);
                        institutionDetailFragment.G().f.setVisibility(8);
                        institutionDetailFragment.G().f16527e.f15873a.setVisibility(8);
                        institutionDetailFragment.G().f16529h.f15878a.setVisibility(0);
                    }
                }
            } else if (bVar instanceof c1) {
                InstitutionDetailFragment.F(institutionDetailFragment, serviceModelRealm, false);
            } else if (bVar instanceof i) {
                InstitutionDetailFragment.E(institutionDetailFragment, ((i) bVar).f13749b, false);
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentInstitutionDetailBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16509a = new b();

        public b() {
            super(1, FragmentInstitutionDetailBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/FragmentInstitutionDetailBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInstitutionDetailBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentInstitutionDetailBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<ag.d, ag.c>, ag.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16510a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16511b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16512c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16510a = fragment;
            this.f16511b = dVar;
            this.f16512c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [ag.d, r0.z] */
        @Override // x9.l
        public final ag.d invoke(q<ag.d, ag.c> qVar) {
            q<ag.d, ag.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16511b);
            Fragment fragment = this.f16510a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16512c, clsQ, ag.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16513a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16514b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16515c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16513a = dVar;
            this.f16514b = cVar;
            this.f16515c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16513a, new tr.gov.turkiye.edevlet.kapisi.institution.a(this), w.a(ag.c.class), this.f16514b);
        }
    }

    public InstitutionDetailFragment() {
        super(R.layout.fragment_institution_detail);
        da.d dVarA = w.a(ag.d.class);
        this.f16500c = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16497m[0]);
        this.f16501d = d0.C(this, b.f16509a);
    }

    public static final void E(InstitutionDetailFragment institutionDetailFragment, Throwable th2, boolean z10) {
        institutionDetailFragment.getClass();
        if (!(th2 instanceof LoginException)) {
            if (th2 instanceof NetworkErrorException) {
                institutionDetailFragment.J();
                return;
            } else {
                institutionDetailFragment.I(false, z10);
                return;
            }
        }
        Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
        if (Build.VERSION.SDK_INT >= 34) {
            intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
        }
        institutionDetailFragment.startActivity(intentB);
        FragmentActivity activity = institutionDetailFragment.getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public static final void F(InstitutionDetailFragment institutionDetailFragment, ServiceModelRealm serviceModelRealm, boolean z10) {
        AbstractList<ServiceModelRealm> abstractList = institutionDetailFragment.f;
        if (abstractList != null) {
            ArrayList arrayList = new ArrayList(n.Q0(abstractList));
            for (ServiceModelRealm serviceModelRealmConvertNormalStatus : abstractList) {
                if (h.a(serviceModelRealmConvertNormalStatus.getServiceCode(), serviceModelRealm.getServiceCode()) && serviceModelRealmConvertNormalStatus.getIsFavoriteProgress()) {
                    serviceModelRealmConvertNormalStatus = ServiceListDBModelKt.convertNormalStatus(serviceModelRealmConvertNormalStatus, z10);
                }
                arrayList.add(serviceModelRealmConvertNormalStatus);
            }
            institutionDetailFragment.f = arrayList;
            ServiceListController serviceListController = institutionDetailFragment.f16502e;
            if (serviceListController != null) {
                serviceListController.setData(arrayList);
                return;
            } else {
                h.n("serviceController");
                throw null;
            }
        }
        institutionDetailFragment.f16502e = new ServiceListController(institutionDetailFragment);
        EpoxyRecyclerView epoxyRecyclerView = institutionDetailFragment.G().f16528g;
        ServiceListController serviceListController2 = institutionDetailFragment.f16502e;
        if (serviceListController2 == null) {
            h.n("serviceController");
            throw null;
        }
        epoxyRecyclerView.setController(serviceListController2);
        ServiceListController serviceListController3 = institutionDetailFragment.f16502e;
        if (serviceListController3 == null) {
            h.n("serviceController");
            throw null;
        }
        AbstractList abstractList2 = institutionDetailFragment.f;
        if (abstractList2 == null) {
            h.n("serviceList");
            throw null;
        }
        serviceListController3.setData(abstractList2);
    }

    public final FragmentInstitutionDetailBinding G() {
        return (FragmentInstitutionDetailBinding) this.f16501d.a(this, f16497m[1]);
    }

    public final void H(Integer num) {
        String str = "InstitutionDetail_Screen";
        if (num != null) {
            try {
                int r6 = num.intValue();
                switch (r6) {
                    case 1:
                        str = "NaturalGasInstitutionDetail_Screen";
                        break;
                    case 2:
                        str = "ElectricInstitutionDetail_Screen";
                        break;
                    case 3:
                        str = "TelecommunicationInstitutionDetail_Screen";
                        break;
                    case 4:
                        str = "MobileLineInstitutionDetail_Screen";
                        break;
                    case 5:
                        str = "WaterAndSewageInstitutionDetail_Screen";
                        break;
                    case 6:
                        str = "OtherInstitutionDetail_Screen";
                        break;
                    default:
                        switch (r6) {
                            case 90:
                                str = "MunicipalityDetail_Screen";
                                break;
                            case 91:
                                str = "MyCityInstitutionDetail_Screen";
                                break;
                            case 92:
                                str = "PublicInstitutionDetail_Screen";
                                break;
                            case 93:
                                str = "MersisInstitutionDetail_Screen";
                                break;
                            case 94:
                                str = "UniversityInstitutionDetail_Screen";
                                break;
                        }
                }
            } catch (Exception unused) {
                return;
            }
        } else {
            str = "InstitutionContact_Screen";
        }
        FirebaseAnalytics firebaseAnalytics = this.f16499b;
        if (firebaseAnalytics == null) {
            h.n("firebaseAnalytics");
            throw null;
        }
        b4 b4Var = new b4(2, 0);
        b4Var.d("screen_name", str);
        b4Var.d("screen_class", "InstitutionDetailFragment");
        firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
    }

    public final void I(boolean z10, boolean z11) {
        int r42 = z10 ? R.string.service_error_info : z11 ? R.string.favorite_error_info : R.string.unFavorite_error_info;
        Context context = this.f16504h;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r12 = ke.d.f8929a;
            ConstraintLayout constraintLayout = G().f16524b;
            h.e(constraintLayout, "mInstitutionDetailFragmentBinding.detailContainer");
            ke.d dVarA = d.a.a(constraintLayout, r42, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
            if (dVarA != null) {
                dVarA.show();
            }
        }
    }

    public final void J() {
        Context context = this.f16504h;
        if (context != null) {
            FragmentActivity activity = getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r22 = ke.d.f8929a;
            ConstraintLayout constraintLayout = G().f16524b;
            h.e(constraintLayout, "mInstitutionDetailFragmentBinding.detailContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.institution.ServiceListController.a
    public final void a(ServiceModelRealm service) {
        h.f(service, "service");
        gf.b bVar = this.f16498a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                J();
                return;
            }
            this.f16503g = service;
            Intent intentC = oe.a.c(service, service.isFavorite());
            if (intentC != null) {
                startActivity(intentC);
                return;
            }
        }
        I(true, false);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.institution.ServiceListController.a
    public final void b(ServiceModelRealm service, boolean z10) {
        h.f(service, "service");
        gf.b bVar = this.f16498a;
        if (bVar != null) {
            if (bVar == null) {
                h.n("mNetworkHelper");
                throw null;
            }
            if (!bVar.a()) {
                J();
                return;
            }
            e eVar = this.f16500c;
            if (z10) {
                Integer serviceCode = service.getServiceCode();
                if (serviceCode != null) {
                    int r82 = serviceCode.intValue();
                    ag.d dVar = (ag.d) eVar.getValue();
                    v.C(dVar.f13883c, null, 0, new ag.e(dVar, r82, null), 3);
                    v.D(dVar.f13883c, dVar.f294i, new f(dVar, null));
                }
            } else {
                Integer serviceCode2 = service.getServiceCode();
                if (serviceCode2 != null) {
                    int r83 = serviceCode2.intValue();
                    ag.d dVar2 = (ag.d) eVar.getValue();
                    v.C(dVar2.f13883c, null, 0, new ag.g(dVar2, r83, null), 3);
                    v.D(dVar2.f13883c, dVar2.f295j, new ag.h(dVar2, null));
                }
            }
            AbstractList<ServiceModelRealm> abstractList = this.f;
            if (abstractList == null) {
                h.n("serviceList");
                throw null;
            }
            ArrayList arrayList = new ArrayList(n.Q0(abstractList));
            for (ServiceModelRealm serviceModelRealmConvertProgressItem : abstractList) {
                if (h.a(serviceModelRealmConvertProgressItem, service)) {
                    serviceModelRealmConvertProgressItem = ServiceListDBModelKt.convertProgressItem(serviceModelRealmConvertProgressItem);
                }
                arrayList.add(serviceModelRealmConvertProgressItem);
            }
            this.f = arrayList;
            ServiceListController serviceListController = this.f16502e;
            if (serviceListController == null) {
                h.n("serviceController");
                throw null;
            }
            serviceListController.setData(arrayList);
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((ag.d) this.f16500c.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MaterialSharedAxis materialSharedAxis = new MaterialSharedAxis(2, true);
        materialSharedAxis.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setExitTransition(materialSharedAxis);
        MaterialSharedAxis materialSharedAxis2 = new MaterialSharedAxis(2, false);
        materialSharedAxis2.setDuration(getResources().getInteger(R.integer.app_motion_duration_large));
        setReenterTransition(materialSharedAxis2);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreateOptionsMenu(Menu menu, MenuInflater inflater) {
        h.f(menu, "menu");
        h.f(inflater, "inflater");
        inflater.inflate(R.menu.institution_detail_menu, menu);
    }

    @Override // androidx.fragment.app.Fragment
    public final boolean onOptionsItemSelected(MenuItem item) {
        h.f(item, "item");
        if (item.getItemId() != R.id.menu_contact) {
            return super.onOptionsItemSelected(item);
        }
        FragmentKt.findNavController(this).navigate(R.id.institutionContactFragment, BundleKt.bundleOf(new l9.g("institutionCode", this.f16505j), new l9.g("categoryCode", this.f16506k), new l9.g("cityCode", this.f16507l)));
        H(null);
        return true;
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        setHasOptionsMenu(true);
        this.f16504h = view.getContext();
        Bundle arguments = getArguments();
        this.f16505j = arguments != null ? Integer.valueOf(arguments.getInt("institutionCode")) : null;
        Bundle arguments2 = getArguments();
        this.f16506k = arguments2 != null ? Integer.valueOf(arguments2.getInt("categoryCode")) : null;
        Bundle arguments3 = getArguments();
        this.f16507l = arguments3 != null ? Integer.valueOf(arguments3.getInt("cityCode", 0)) : null;
        Integer num = this.f16505j;
        if (num != null) {
            int r32 = num.intValue();
            Integer num2 = this.f16506k;
            if (num2 != null) {
                ((ag.d) this.f16500c.getValue()).d(r32, num2.intValue(), this.f16507l);
            }
        }
        H(this.f16506k);
    }
}
