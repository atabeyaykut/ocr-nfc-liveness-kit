package tr.gov.turkiye.edevlet.kapisi.services.municipality;

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
import c5.v;
import com.airbnb.epoxy.EpoxyRecyclerView;
import da.m;
import io.realm.RealmQuery;
import io.realm.d0;
import io.realm.g0;
import io.realm.y0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.t;
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
import tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionListBinding;
import tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListUIController;
import wg.f;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListUIController$a;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MunicipalityListFragment extends ee.a implements MunicipalityListUIController.a {

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16919j = {androidx.room.util.a.b(MunicipalityListFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/services/municipality/MunicipalityListViewModel;"), androidx.room.util.a.b(MunicipalityListFragment.class, "mInstitutionListFragmentBinding", "getMInstitutionListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16920a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16921b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16922c;

    /* renamed from: d, reason: collision with root package name */
    public List<? extends InstitutionModelRealm> f16923d;

    /* renamed from: e, reason: collision with root package name */
    public MunicipalityListUIController f16924e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f16925g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16926h;

    public static final class a extends j implements l<wg.c, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(wg.c cVar) {
            Object next;
            wg.c state = cVar;
            h.f(state, "state");
            r0.b<Result<List<InstitutionModelRealm>>> bVar = state.f18912a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MunicipalityListFragment municipalityListFragment = MunicipalityListFragment.this;
            if (z10) {
                m<Object>[] mVarArr = MunicipalityListFragment.f16919j;
                municipalityListFragment.E().f16864e.setVisibility(8);
                municipalityListFragment.E().f16862c.f15873a.setVisibility(8);
                municipalityListFragment.E().f.f15878a.setVisibility(8);
                municipalityListFragment.E().f16863d.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = MunicipalityListFragment.f16919j;
                municipalityListFragment.getClass();
                List<InstitutionModelRealm> list = state.f18913b;
                List<InstitutionModelRealm> list2 = list;
                if (list2 == null || list2.isEmpty()) {
                    municipalityListFragment.G();
                } else {
                    municipalityListFragment.E().f16863d.setVisibility(8);
                    municipalityListFragment.E().f.f15878a.setVisibility(8);
                    municipalityListFragment.E().f16862c.f15873a.setVisibility(8);
                    municipalityListFragment.E().f16864e.setVisibility(0);
                    String string = municipalityListFragment.getString(R.string.plural_service_count_text);
                    h.e(string, "getString(R.string.plural_service_count_text)");
                    String string2 = municipalityListFragment.getString(R.string.service_count_text);
                    h.e(string2, "getString(R.string.service_count_text)");
                    g0 realm = g0.t();
                    h.e(realm, "realm");
                    RealmQuery realmQueryJ = realm.J(SectionListModelRealm.class);
                    realmQueryJ.h("code");
                    y0 y0VarD = realmQueryJ.d();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    if (!y0VarD.isEmpty()) {
                        List listS1 = t.s1(list, new wg.a());
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        for (Object obj : listS1) {
                            Integer numValueOf = Integer.valueOf(((InstitutionModelRealm) obj).getSectionCode());
                            Object arrayList = linkedHashMap2.get(numValueOf);
                            if (arrayList == null) {
                                arrayList = new ArrayList();
                                linkedHashMap2.put(numValueOf, arrayList);
                            }
                            ((List) arrayList).add(obj);
                        }
                        for (Map.Entry entry : linkedHashMap2.entrySet()) {
                            int r82 = ((Number) entry.getKey()).intValue();
                            d0.c cVar2 = new d0.c();
                            while (true) {
                                if (!cVar2.hasNext()) {
                                    next = null;
                                    break;
                                }
                                next = cVar2.next();
                                if (((SectionListModelRealm) next).getCode() == r82) {
                                    break;
                                }
                            }
                            SectionListModelRealm sectionListModelRealm = (SectionListModelRealm) next;
                            if (sectionListModelRealm != null) {
                                linkedHashMap.put(sectionListModelRealm, entry.getValue());
                            }
                        }
                    }
                    if (municipalityListFragment.f16924e == null) {
                        municipalityListFragment.f16924e = new MunicipalityListUIController(municipalityListFragment);
                        EpoxyRecyclerView epoxyRecyclerView = municipalityListFragment.E().f16864e;
                        MunicipalityListUIController municipalityListUIController = municipalityListFragment.f16924e;
                        if (municipalityListUIController == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        epoxyRecyclerView.setController(municipalityListUIController);
                        municipalityListFragment.f16923d = list;
                        MunicipalityListUIController municipalityListUIController2 = municipalityListFragment.f16924e;
                        if (municipalityListUIController2 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        if (list == null) {
                            h.n("mInstitutionList");
                            throw null;
                        }
                        municipalityListUIController2.setData(list, linkedHashMap, string, string2);
                    } else if (municipalityListFragment.f16923d != null) {
                        EpoxyRecyclerView epoxyRecyclerView2 = municipalityListFragment.E().f16864e;
                        MunicipalityListUIController municipalityListUIController3 = municipalityListFragment.f16924e;
                        if (municipalityListUIController3 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        epoxyRecyclerView2.setController(municipalityListUIController3);
                        MunicipalityListUIController municipalityListUIController4 = municipalityListFragment.f16924e;
                        if (municipalityListUIController4 == null) {
                            h.n("mInstitutionListController");
                            throw null;
                        }
                        List<? extends InstitutionModelRealm> list3 = municipalityListFragment.f16923d;
                        if (list3 == null) {
                            h.n("mInstitutionList");
                            throw null;
                        }
                        municipalityListUIController4.setData(list3, linkedHashMap, string, string2);
                    }
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = MunicipalityListFragment.f16919j;
                municipalityListFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    municipalityListFragment.startActivity(intentB);
                    FragmentActivity activity = municipalityListFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    municipalityListFragment.G();
                } else if (th2 instanceof NetworkErrorException) {
                    municipalityListFragment.E().f16864e.setVisibility(8);
                    municipalityListFragment.E().f16863d.setVisibility(8);
                    municipalityListFragment.E().f.f15878a.setVisibility(8);
                    municipalityListFragment.E().f16862c.f15873a.setVisibility(0);
                    municipalityListFragment.E().f16862c.f15874b.setOnClickListener(new nf.a(10, municipalityListFragment));
                } else {
                    municipalityListFragment.E().f16864e.setVisibility(8);
                    municipalityListFragment.E().f16863d.setVisibility(8);
                    municipalityListFragment.E().f16862c.f15873a.setVisibility(8);
                    municipalityListFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentInstitutionListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16928a = new b();

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

    public static final class c extends j implements l<q<wg.d, wg.c>, wg.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16929a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16930b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16931c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16929a = fragment;
            this.f16930b = dVar;
            this.f16931c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, wg.d] */
        @Override // x9.l
        public final wg.d invoke(q<wg.d, wg.c> qVar) {
            q<wg.d, wg.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = com.google.android.gms.internal.clearcut.d0.q(this.f16930b);
            Fragment fragment = this.f16929a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16931c, clsQ, wg.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16932a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16933b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16934c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16932a = dVar;
            this.f16933b = cVar;
            this.f16934c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return com.google.android.gms.internal.clearcut.d0.f3070e.a(thisRef, property, this.f16932a, new tr.gov.turkiye.edevlet.kapisi.services.municipality.a(this), w.a(wg.c.class), this.f16933b);
        }
    }

    public MunicipalityListFragment() {
        super(R.layout.fragment_institution_list);
        da.d dVarA = w.a(wg.d.class);
        this.f16921b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16919j[0]);
        this.f16922c = com.google.android.gms.internal.clearcut.d0.C(this, b.f16928a);
    }

    public final FragmentInstitutionListBinding E() {
        return (FragmentInstitutionListBinding) this.f16922c.a(this, f16919j[1]);
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

    @Override // tr.gov.turkiye.edevlet.kapisi.services.municipality.MunicipalityListUIController.a
    public final void c(InstitutionModelRealm institution) {
        View viewFindViewById;
        h.f(institution, "institution");
        gf.b bVar = this.f16920a;
        if (bVar == null) {
            Context context = this.f16926h;
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
        Context context2 = this.f16926h;
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
        x5.a.u((wg.d) this.f16921b.getValue(), new a());
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
        this.f16926h = view.getContext();
        this.f16925g = 90;
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("cityCode", 0)) : null;
        if (numValueOf != null) {
            this.f = numValueOf.intValue();
        }
        wg.d dVar = (wg.d) this.f16921b.getValue();
        int r12 = this.f16925g;
        int r22 = this.f;
        dVar.getClass();
        wg.e eVar = new wg.e(dVar, r12, r22, null);
        a0 a0Var = dVar.f13883c;
        v.C(a0Var, null, 0, eVar, 3);
        v.D(a0Var, dVar.f18914h, new f(dVar, null));
    }
}
