package tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.core.os.BundleKt;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import b8.f;
import c5.b4;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.chip.Chip;
import com.google.firebase.analytics.FirebaseAnalytics;
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
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentMyCityBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.MyCityUIController;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.section.SectionListModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/controller/MyCityUIController$a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MyCityFragment extends ee.a implements MyCityUIController.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16402k = {androidx.room.util.a.b(MyCityFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/page/MyCityViewModel;"), androidx.room.util.a.b(MyCityFragment.class, "mInstitutionListFragmentBinding", "getMInstitutionListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16403a;

    /* renamed from: b, reason: collision with root package name */
    public FirebaseAnalytics f16404b;

    /* renamed from: c, reason: collision with root package name */
    public final e f16405c;

    /* renamed from: d, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16406d;

    /* renamed from: e, reason: collision with root package name */
    public List<? extends InstitutionModelRealm> f16407e;
    public MyCityUIController f;

    /* renamed from: g, reason: collision with root package name */
    public int f16408g;

    /* renamed from: h, reason: collision with root package name */
    public int f16409h;

    /* renamed from: j, reason: collision with root package name */
    public Context f16410j;

    public static final class a extends j implements l<uf.c, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(uf.c cVar) {
            Object next;
            uf.c state = cVar;
            h.f(state, "state");
            r0.b<Result<List<InstitutionModelRealm>>> bVar = state.f18131a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MyCityFragment myCityFragment = MyCityFragment.this;
            if (z10) {
                m<Object>[] mVarArr = MyCityFragment.f16402k;
                myCityFragment.H();
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = MyCityFragment.f16402k;
                myCityFragment.getClass();
                List<InstitutionModelRealm> list = state.f18132b;
                List<InstitutionModelRealm> list2 = list;
                if (list2 == null || list2.isEmpty()) {
                    myCityFragment.G();
                } else {
                    myCityFragment.E().f16232g.setVisibility(8);
                    myCityFragment.E().f16234i.f15878a.setVisibility(8);
                    myCityFragment.E().f.f15873a.setVisibility(8);
                    myCityFragment.E().f16233h.setVisibility(0);
                    String string = myCityFragment.getString(R.string.plural_service_count_text);
                    h.e(string, "getString(R.string.plural_service_count_text)");
                    String string2 = myCityFragment.getString(R.string.service_count_text);
                    h.e(string2, "getString(R.string.service_count_text)");
                    g0 realm = g0.t();
                    h.e(realm, "realm");
                    RealmQuery realmQueryJ = realm.J(SectionListModelRealm.class);
                    realmQueryJ.h("code");
                    y0 y0VarD = realmQueryJ.d();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    if (!y0VarD.isEmpty()) {
                        List listS1 = t.s1(list, new uf.a());
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
                    myCityFragment.f = new MyCityUIController(myCityFragment);
                    EpoxyRecyclerView epoxyRecyclerView = myCityFragment.E().f16233h;
                    MyCityUIController myCityUIController = myCityFragment.f;
                    if (myCityUIController == null) {
                        h.n("mInstitutionListController");
                        throw null;
                    }
                    epoxyRecyclerView.setController(myCityUIController);
                    myCityFragment.f16407e = list;
                    MyCityUIController myCityUIController2 = myCityFragment.f;
                    if (myCityUIController2 == null) {
                        h.n("mInstitutionListController");
                        throw null;
                    }
                    if (list == null) {
                        h.n("mInstitutionList");
                        throw null;
                    }
                    myCityUIController2.setData(list, linkedHashMap, string, string2);
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = MyCityFragment.f16402k;
                myCityFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    myCityFragment.startActivity(intentB);
                    FragmentActivity activity = myCityFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    myCityFragment.G();
                } else if (th2 instanceof NetworkErrorException) {
                    myCityFragment.E().f16233h.setVisibility(8);
                    myCityFragment.E().f16232g.setVisibility(8);
                    myCityFragment.E().f16234i.f15878a.setVisibility(8);
                    myCityFragment.E().f.f15873a.setVisibility(0);
                    myCityFragment.E().f.f15874b.setOnClickListener(new be.d(2, myCityFragment));
                } else {
                    myCityFragment.E().f16233h.setVisibility(8);
                    myCityFragment.E().f16232g.setVisibility(8);
                    myCityFragment.E().f.f15873a.setVisibility(8);
                    myCityFragment.E().f16234i.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentMyCityBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16412a = new b();

        public b() {
            super(1, FragmentMyCityBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityBinding;", 0);
        }

        @Override // x9.l
        public final FragmentMyCityBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentMyCityBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<uf.d, uf.c>, uf.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16413a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16414b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16415c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16413a = fragment;
            this.f16414b = dVar;
            this.f16415c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, uf.d] */
        @Override // x9.l
        public final uf.d invoke(q<uf.d, uf.c> qVar) {
            q<uf.d, uf.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = com.google.android.gms.internal.clearcut.d0.q(this.f16414b);
            Fragment fragment = this.f16413a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16415c, clsQ, uf.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16416a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16417b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16418c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16416a = dVar;
            this.f16417b = cVar;
            this.f16418c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return com.google.android.gms.internal.clearcut.d0.f3070e.a(thisRef, property, this.f16416a, new tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.page.a(this), w.a(uf.c.class), this.f16417b);
        }
    }

    public MyCityFragment() {
        super(R.layout.fragment_my_city);
        da.d dVarA = w.a(uf.d.class);
        this.f16405c = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16402k[0]);
        this.f16406d = com.google.android.gms.internal.clearcut.d0.C(this, b.f16412a);
    }

    public final FragmentMyCityBinding E() {
        return (FragmentMyCityBinding) this.f16406d.a(this, f16402k[1]);
    }

    public final void F(InstitutionModelRealm institutionModelRealm) {
        FragmentKt.findNavController(this).navigate(R.id.institutionDetailFragment, BundleKt.bundleOf(new l9.g("institutionCode", Integer.valueOf(institutionModelRealm.getInstitutionCode())), new l9.g("categoryCode", Integer.valueOf(institutionModelRealm.getCategoryCode())), new l9.g("cityCode", Integer.valueOf(institutionModelRealm.getCityCode()))));
    }

    public final void G() {
        E().f16233h.setVisibility(8);
        E().f16232g.setVisibility(8);
        E().f.f15873a.setVisibility(8);
        E().f16234i.f15878a.setVisibility(0);
        E().f16234i.f15881d.setText(getString(R.string.no_content_found_title));
        E().f16234i.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = E().f16234i.f15879b;
        h.e(imageView, "mInstitutionListFragment…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    public final void H() {
        E().f.f15873a.setVisibility(8);
        E().f16234i.f15878a.setVisibility(8);
        E().f16233h.setVisibility(4);
        E().f16232g.setVisibility(0);
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.dashboard.ui.controller.MyCityUIController.a
    public final void c(InstitutionModelRealm institution) {
        View viewFindViewById;
        h.f(institution, "institution");
        gf.b bVar = this.f16403a;
        if (bVar == null) {
            Context context = this.f16410j;
            if (context != null) {
                FragmentActivity activity = getActivity();
                viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                int r02 = ke.d.f8929a;
                ConstraintLayout constraintLayout = E().f16230d;
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
        Context context2 = this.f16410j;
        if (context2 != null) {
            FragmentActivity activity2 = getActivity();
            viewFindViewById = activity2 != null ? activity2.findViewById(R.id.nav_view) : null;
            int r03 = ke.d.f8929a;
            ConstraintLayout constraintLayout2 = E().f16230d;
            h.e(constraintLayout2, "mInstitutionListFragmentBinding.containerList");
            ke.d dVarE = d.a.e(constraintLayout2, R.string.connection_error_info, viewFindViewById, ContextCompat.getColor(context2, R.color.black), ContextCompat.getColor(context2, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((uf.d) this.f16405c.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16410j = view.getContext();
        this.f16409h = 91;
        g0 realm = g0.t();
        h.e(realm, "realm");
        y0 y0VarD = realm.J(MyCityListDBModel.class).d();
        MyCityListDBModel myCityListDBModel = (MyCityListDBModel) realm.J(MyCityListDBModel.class).e();
        int r12 = 1;
        if (y0VarD.isEmpty()) {
            E().f16228b.removeAllViews();
            E().f16229c.setVisibility(8);
        } else {
            E().f16229c.setVisibility(0);
            d0.c cVar = new d0.c();
            int r32 = 0;
            while (true) {
                int r6 = 2;
                if (cVar.hasNext()) {
                    E next = cVar.next();
                    int r72 = r32 + 1;
                    if (r32 < 0) {
                        f.k0();
                        throw null;
                    }
                    MyCityListDBModel myCityListDBModel2 = (MyCityListDBModel) next;
                    View viewInflate = getLayoutInflater().inflate(R.layout.item_choice_chip, (ViewGroup) null, false);
                    h.d(viewInflate, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
                    Chip chip = (Chip) viewInflate;
                    chip.setText(myCityListDBModel2.getCityName());
                    chip.setId(myCityListDBModel2.getCityId());
                    chip.setClickable(true);
                    chip.setCheckable(true);
                    if (r32 == 0) {
                        chip.setChecked(true);
                    }
                    chip.setOnClickListener(new zd.a(r6, this));
                    E().f16228b.addView(chip);
                    r32 = r72;
                } else {
                    try {
                        if (!y0VarD.isEmpty()) {
                            String str = y0VarD.size() > 1 ? "Multiple" : "Single";
                            FirebaseAnalytics firebaseAnalytics = this.f16404b;
                            if (firebaseAnalytics == null) {
                                h.n("firebaseAnalytics");
                                throw null;
                            }
                            b4 b4Var = new b4(2, 0);
                            b4Var.d("action", str);
                            firebaseAnalytics.a((Bundle) b4Var.f1418a, "EDK_MyCity");
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        if (myCityListDBModel != null) {
            if (this.f16408g == 0) {
                this.f16408g = myCityListDBModel.getCityId();
            }
            ((uf.d) this.f16405c.getValue()).d(this.f16409h, this.f16408g);
        }
        E().f16231e.setOnClickListener(new nf.a(r12, this));
    }
}
