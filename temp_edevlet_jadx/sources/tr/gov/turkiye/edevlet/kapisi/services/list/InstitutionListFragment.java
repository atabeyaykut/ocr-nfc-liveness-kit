package tr.gov.turkiye.edevlet.kapisi.services.list;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
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
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import java.util.List;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import nc.a0;
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
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionListBinding;
import tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListUIController;
import vg.f;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListUIController$a;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionListFragment extends ee.a implements InstitutionListUIController.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16899k = {androidx.room.util.a.b(InstitutionListFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/services/list/InstitutionListViewModel;"), androidx.room.util.a.b(InstitutionListFragment.class, "mInstitutionListFragmentBinding", "getMInstitutionListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16900a;

    /* renamed from: b, reason: collision with root package name */
    public FirebaseAnalytics f16901b;

    /* renamed from: c, reason: collision with root package name */
    public final e f16902c;

    /* renamed from: d, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16903d;

    /* renamed from: e, reason: collision with root package name */
    public List<? extends InstitutionModelRealm> f16904e;
    public InstitutionListUIController f;

    /* renamed from: g, reason: collision with root package name */
    public int f16905g;

    /* renamed from: h, reason: collision with root package name */
    public int f16906h;

    /* renamed from: j, reason: collision with root package name */
    public Context f16907j;

    public static final class a extends j implements l<vg.c, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(vg.c cVar) {
            vg.c state = cVar;
            h.f(state, "state");
            r0.b<Result<List<InstitutionModelRealm>>> bVar = state.f18641a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof k;
            InstitutionListFragment institutionListFragment = InstitutionListFragment.this;
            if (z11) {
                m<Object>[] mVarArr = InstitutionListFragment.f16899k;
                institutionListFragment.E().f16864e.setVisibility(8);
                institutionListFragment.E().f16862c.f15873a.setVisibility(8);
                institutionListFragment.E().f.f15878a.setVisibility(8);
                institutionListFragment.E().f16863d.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = InstitutionListFragment.f16899k;
                institutionListFragment.getClass();
                List<InstitutionModelRealm> list = state.f18642b;
                List<InstitutionModelRealm> list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    z10 = false;
                }
                if (z10) {
                    institutionListFragment.G();
                } else {
                    institutionListFragment.E().f16863d.setVisibility(8);
                    institutionListFragment.E().f.f15878a.setVisibility(8);
                    institutionListFragment.E().f16862c.f15873a.setVisibility(8);
                    institutionListFragment.E().f16864e.setVisibility(0);
                    String string = institutionListFragment.getString(R.string.plural_service_count_text);
                    h.e(string, "getString(R.string.plural_service_count_text)");
                    String string2 = institutionListFragment.getString(R.string.service_count_text);
                    h.e(string2, "getString(R.string.service_count_text)");
                    if (institutionListFragment.f == null) {
                        institutionListFragment.f = new InstitutionListUIController(institutionListFragment);
                        EpoxyRecyclerView epoxyRecyclerView = institutionListFragment.E().f16864e;
                        InstitutionListUIController institutionListUIController = institutionListFragment.f;
                        if (institutionListUIController == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        epoxyRecyclerView.setController(institutionListUIController);
                        institutionListFragment.f16904e = list;
                        InstitutionListUIController institutionListUIController2 = institutionListFragment.f;
                        if (institutionListUIController2 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        if (list == null) {
                            h.n("mInstitutionList");
                            throw null;
                        }
                        institutionListUIController2.setData(list, string, string2);
                    } else if (institutionListFragment.f16904e != null) {
                        institutionListFragment.f16904e = list;
                        EpoxyRecyclerView epoxyRecyclerView2 = institutionListFragment.E().f16864e;
                        InstitutionListUIController institutionListUIController3 = institutionListFragment.f;
                        if (institutionListUIController3 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        epoxyRecyclerView2.setController(institutionListUIController3);
                        InstitutionListUIController institutionListUIController4 = institutionListFragment.f;
                        if (institutionListUIController4 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        List<? extends InstitutionModelRealm> list3 = institutionListFragment.f16904e;
                        if (list3 == null) {
                            h.n("mInstitutionList");
                            throw null;
                        }
                        institutionListUIController4.setData(list3, string, string2);
                    }
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = InstitutionListFragment.f16899k;
                institutionListFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    institutionListFragment.startActivity(intentB);
                    FragmentActivity activity = institutionListFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    institutionListFragment.G();
                } else if (th2 instanceof NetworkErrorException) {
                    institutionListFragment.E().f16864e.setVisibility(8);
                    institutionListFragment.E().f16863d.setVisibility(8);
                    institutionListFragment.E().f.f15878a.setVisibility(8);
                    institutionListFragment.E().f16862c.f15873a.setVisibility(0);
                    institutionListFragment.E().f16862c.f15874b.setOnClickListener(new nf.a(9, institutionListFragment));
                } else {
                    institutionListFragment.E().f16864e.setVisibility(8);
                    institutionListFragment.E().f16863d.setVisibility(8);
                    institutionListFragment.E().f16862c.f15873a.setVisibility(8);
                    institutionListFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentInstitutionListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16909a = new b();

        public b() {
            super(1, FragmentInstitutionListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInstitutionListBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentInstitutionListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<vg.d, vg.c>, vg.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16910a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16911b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16912c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16910a = fragment;
            this.f16911b = dVar;
            this.f16912c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, vg.d] */
        @Override // x9.l
        public final vg.d invoke(q<vg.d, vg.c> qVar) {
            q<vg.d, vg.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16911b);
            Fragment fragment = this.f16910a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16912c, clsQ, vg.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16913a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16914b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16915c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16913a = dVar;
            this.f16914b = cVar;
            this.f16915c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16913a, new tr.gov.turkiye.edevlet.kapisi.services.list.a(this), w.a(vg.c.class), this.f16914b);
        }
    }

    public InstitutionListFragment() {
        super(R.layout.fragment_institution_list);
        da.d dVarA = w.a(vg.d.class);
        this.f16902c = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16899k[0]);
        this.f16903d = d0.C(this, b.f16909a);
    }

    public final FragmentInstitutionListBinding E() {
        return (FragmentInstitutionListBinding) this.f16903d.a(this, f16899k[1]);
    }

    public final void F(InstitutionModelRealm institutionModelRealm) {
        FragmentKt.findNavController(this).navigate(R.id.institutionDetailFragment, BundleKt.bundleOf(new l9.g("institutionCode", Integer.valueOf(institutionModelRealm.getInstitutionCode())), new l9.g("categoryCode", Integer.valueOf(institutionModelRealm.getCategoryCode())), new l9.g("cityCode", Integer.valueOf(institutionModelRealm.getCityCode()))));
    }

    public final void G() {
        E().f16864e.setVisibility(8);
        E().f16863d.setVisibility(8);
        E().f16862c.f15873a.setVisibility(8);
        E().f.f15878a.setVisibility(0);
        E().f.f15881d.setText(getString(R.string.no_content_found_title));
        E().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = E().f.f15879b;
        h.e(imageView, "mInstitutionListFragment…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListUIController.a
    public final void c(InstitutionModelRealm institution) {
        View viewFindViewById;
        h.f(institution, "institution");
        gf.b bVar = this.f16900a;
        if (bVar == null) {
            Context context = this.f16907j;
            if (context != null) {
                FragmentActivity activity = getActivity();
                viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                int r02 = ke.d.f8929a;
                ConstraintLayout constraintLayout = E().f16861b;
                h.e(constraintLayout, "mInstitutionListFragmentBinding.containerList");
                ke.d dVarA = d.a.a(constraintLayout, R.string.service_error_info, viewFindViewById, R.drawable.toast_error, ContextCompat.getColor(context, R.color.error_color));
                if (dVarA != null) {
                    dVarA.show();
                    return;
                }
                return;
            }
            return;
        }
        if (bVar.a() || institution.isOpened()) {
            F(institution);
            return;
        }
        Context context2 = this.f16907j;
        if (context2 != null) {
            FragmentActivity activity2 = getActivity();
            viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
            int r03 = ke.d.f8929a;
            ConstraintLayout constraintLayout2 = E().f16861b;
            h.e(constraintLayout2, "mInstitutionListFragmentBinding.containerList");
            ke.d dVarE = d.a.e(constraintLayout2, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((vg.d) this.f16902c.getValue(), new a());
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
        this.f16907j = view.getContext();
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("categoryCode", 0)) : null;
        Bundle arguments2 = getArguments();
        Integer numValueOf2 = arguments2 != null ? Integer.valueOf(arguments2.getInt("cityCode", 0)) : null;
        if (numValueOf2 != null) {
            this.f16905g = numValueOf2.intValue();
        }
        if (numValueOf != null) {
            this.f16906h = numValueOf.intValue();
        }
        vg.d dVar = (vg.d) this.f16902c.getValue();
        int r22 = this.f16906h;
        int r32 = this.f16905g;
        dVar.getClass();
        vg.e eVar = new vg.e(dVar, r22, r32, null);
        a0 a0Var = dVar.f13883c;
        v.C(a0Var, null, 0, eVar, 3);
        v.D(a0Var, dVar.f18643h, new f(dVar, null));
        String str = "InstitutionList_Screen";
        if (numValueOf != null) {
            try {
                int r6 = numValueOf.intValue();
                switch (r6) {
                    case 1:
                        str = "NaturalGasInstitution_Screen";
                        break;
                    case 2:
                        str = "ElectricInstitution_Screen";
                        break;
                    case 3:
                        str = "TelecommunicationInstitution_Screen";
                        break;
                    case 4:
                        str = "MobileLineInstitution_Screen";
                        break;
                    case 5:
                        str = "WaterAndSewageInstitution_Screen";
                        break;
                    case 6:
                        str = "OtherInstitution_Screen";
                        break;
                    default:
                        switch (r6) {
                            case 90:
                                str = "Municipality_.Screen";
                                break;
                            case 91:
                                str = "MyCityInstitution_Screen";
                                break;
                            case 92:
                                str = "PublicInstitution_Screen";
                                break;
                            case 93:
                                str = "MersisInstitution_Screen";
                                break;
                            case 94:
                                str = "UniversityInstitution_Screen";
                                break;
                        }
                }
            } catch (Exception unused) {
                return;
            }
        } else {
            str = "InstitutionContact_Screen";
        }
        FirebaseAnalytics firebaseAnalytics = this.f16901b;
        if (firebaseAnalytics == null) {
            h.n("firebaseAnalytics");
            throw null;
        }
        b4 b4Var = new b4(2, 0);
        b4Var.d("screen_name", str);
        b4Var.d("screen_class", "InstitutionListFragment");
        firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
    }
}
