package tr.gov.turkiye.edevlet.kapisi.services.city;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import c5.v;
import com.google.android.gms.internal.clearcut.d0;
import e8.b;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.n;
import nc.a0;
import org.bouncycastle.i18n.MessageBundle;
import qg.h;
import qg.m;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.services.city.InstitutionCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.FragmentInstitutionCityListBinding;
import x9.l;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListFragment;", "Lee/a;", "Li8/d;", "Lqg/m;", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InstitutionCityListFragment extends ee.a implements i8.d<m> {
    public static final /* synthetic */ da.m<Object>[] f = {androidx.room.util.a.b(InstitutionCityListFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/services/city/InstitutionCityListViewModel;"), androidx.room.util.a.b(InstitutionCityListFragment.class, "mInstitutionCityListFragmentBinding", "getMInstitutionCityListFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public final e f16830a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16831b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16832c;

    /* renamed from: d, reason: collision with root package name */
    public int f16833d;

    /* renamed from: e, reason: collision with root package name */
    public String f16834e;

    public static final class a extends j implements l<h, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(h hVar) {
            h state = hVar;
            kotlin.jvm.internal.h.f(state, "state");
            r0.b<Result<List<CityModelRealm>>> bVar = state.f13672a;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            final InstitutionCityListFragment institutionCityListFragment = InstitutionCityListFragment.this;
            if (z10) {
                da.m<Object>[] mVarArr = InstitutionCityListFragment.f;
                institutionCityListFragment.E().f16853d.setVisibility(8);
                institutionCityListFragment.E().f16851b.f15873a.setVisibility(8);
                institutionCityListFragment.E().f.f15878a.setVisibility(8);
                institutionCityListFragment.E().f16854e.f15871a.setVisibility(8);
                institutionCityListFragment.E().f16852c.setVisibility(0);
            } else if (bVar instanceof c1) {
                da.m<Object>[] mVarArr2 = InstitutionCityListFragment.f;
                institutionCityListFragment.getClass();
                List<CityModelRealm> list = state.f13673b;
                List<CityModelRealm> list2 = list;
                if (list2 == null || list2.isEmpty()) {
                    institutionCityListFragment.F();
                } else {
                    institutionCityListFragment.E().f16852c.setVisibility(8);
                    institutionCityListFragment.E().f.f15878a.setVisibility(8);
                    institutionCityListFragment.E().f16851b.f15873a.setVisibility(8);
                    institutionCityListFragment.E().f16854e.f15871a.setVisibility(0);
                    institutionCityListFragment.E().f16853d.setVisibility(0);
                    List<CityModelRealm> list3 = list;
                    ArrayList arrayList = new ArrayList(n.Q0(list3));
                    for (CityModelRealm cityModelRealm : list3) {
                        m mVar = new m();
                        String name = cityModelRealm.getCityName();
                        kotlin.jvm.internal.h.f(name, "name");
                        mVar.f13688e = name;
                        mVar.f = Integer.valueOf(cityModelRealm.getCityCode());
                        arrayList.add(mVar);
                    }
                    institutionCityListFragment.E().f16853d.setLayoutManager(new LinearLayoutManager(institutionCityListFragment.f16832c));
                    institutionCityListFragment.E().f16853d.setItemAnimator(new DefaultItemAnimator());
                    institutionCityListFragment.E().f16853d.addItemDecoration(new DividerItemDecoration(institutionCityListFragment.f16832c, 1));
                    final f8.a aVar = new f8.a();
                    e8.b.f5142o.getClass();
                    e8.b bVarC = b.a.c(aVar);
                    f8.b<Model, Item> bVar2 = aVar.f;
                    bVar2.f5541b = institutionCityListFragment;
                    bVar2.f5542c = qg.d.f13653a;
                    institutionCityListFragment.E().f16853d.setAdapter(bVarC);
                    aVar.e(arrayList);
                    AppCompatEditText appCompatEditText = institutionCityListFragment.E().f16854e.f15872b;
                    kotlin.jvm.internal.h.e(appCompatEditText, "mInstitutionCityListFrag…ing.searchView.searchText");
                    appCompatEditText.addTextChangedListener(new qg.c(aVar));
                    institutionCityListFragment.E().f16854e.f15872b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: qg.b
                        @Override // android.widget.TextView.OnEditorActionListener
                        public final boolean onEditorAction(TextView textView, int r32, KeyEvent keyEvent) {
                            da.m<Object>[] mVarArr3 = InstitutionCityListFragment.f;
                            InstitutionCityListFragment this$0 = institutionCityListFragment;
                            kotlin.jvm.internal.h.f(this$0, "this$0");
                            f8.a cityListAdapter = aVar;
                            kotlin.jvm.internal.h.f(cityListAdapter, "$cityListAdapter");
                            if (r32 != 3) {
                                return true;
                            }
                            cityListAdapter.f.filter(String.valueOf(this$0.E().f16854e.f15872b.getText()));
                            return true;
                        }
                    });
                    bVarC.f5150i = new qg.e(institutionCityListFragment);
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                da.m<Object>[] mVarArr3 = InstitutionCityListFragment.f;
                institutionCityListFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    institutionCityListFragment.startActivity(intentB);
                    FragmentActivity activity = institutionCityListFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    institutionCityListFragment.F();
                } else if (th2 instanceof NetworkErrorException) {
                    institutionCityListFragment.E().f16853d.setVisibility(8);
                    institutionCityListFragment.E().f16852c.setVisibility(8);
                    institutionCityListFragment.E().f.f15878a.setVisibility(8);
                    institutionCityListFragment.E().f16854e.f15871a.setVisibility(8);
                    institutionCityListFragment.E().f16851b.f15873a.setVisibility(0);
                    institutionCityListFragment.E().f16851b.f15874b.setOnClickListener(new xf.d(7, institutionCityListFragment));
                } else {
                    institutionCityListFragment.E().f16853d.setVisibility(8);
                    institutionCityListFragment.E().f16852c.setVisibility(8);
                    institutionCityListFragment.E().f16851b.f15873a.setVisibility(8);
                    institutionCityListFragment.E().f16854e.f15871a.setVisibility(8);
                    institutionCityListFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentInstitutionCityListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16836a = new b();

        public b() {
            super(1, FragmentInstitutionCityListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/services/databinding/FragmentInstitutionCityListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInstitutionCityListBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentInstitutionCityListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<qg.i, h>, qg.i> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16837a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16838b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16839c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16837a = fragment;
            this.f16838b = dVar;
            this.f16839c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [qg.i, r0.z] */
        @Override // x9.l
        public final qg.i invoke(q<qg.i, h> qVar) {
            q<qg.i, h> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16838b);
            Fragment fragment = this.f16837a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16839c, clsQ, h.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16840a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16841b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16842c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16840a = dVar;
            this.f16841b = cVar;
            this.f16842c = dVar2;
        }

        public final e t(Object obj, da.m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16840a, new tr.gov.turkiye.edevlet.kapisi.services.city.a(this), w.a(h.class), this.f16841b);
        }
    }

    public InstitutionCityListFragment() {
        super(R.layout.fragment_institution_city_list);
        da.d dVarA = w.a(qg.i.class);
        this.f16830a = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f[0]);
        this.f16831b = d0.C(this, b.f16836a);
    }

    public final FragmentInstitutionCityListBinding E() {
        return (FragmentInstitutionCityListBinding) this.f16831b.a(this, f[1]);
    }

    public final void F() {
        E().f16853d.setVisibility(8);
        E().f16852c.setVisibility(8);
        E().f16851b.f15873a.setVisibility(8);
        E().f16854e.f15871a.setVisibility(8);
        E().f.f15878a.setVisibility(0);
        E().f.f15881d.setText(getString(R.string.no_content_found_title));
        E().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = E().f.f15879b;
        kotlin.jvm.internal.h.e(imageView, "mInstitutionCityListFrag…ystemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((qg.i) this.f16830a.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        try {
            AppCompatEditText appCompatEditText = E().f16854e.f15872b;
            kotlin.jvm.internal.h.e(appCompatEditText, "mInstitutionCityListFrag…ing.searchView.searchText");
            d0.x(appCompatEditText);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16832c = view.getContext();
        Bundle arguments = getArguments();
        Integer numValueOf = arguments != null ? Integer.valueOf(arguments.getInt("categoryCode", 0)) : null;
        if (numValueOf != null) {
            this.f16833d = numValueOf.intValue();
        }
        Bundle arguments2 = getArguments();
        this.f16834e = String.valueOf(arguments2 != null ? arguments2.getString(MessageBundle.TITLE_ENTRY) : null);
        int r52 = this.f16833d;
        qg.i iVar = (qg.i) this.f16830a.getValue();
        iVar.getClass();
        qg.j jVar = new qg.j(iVar, r52, null);
        a0 a0Var = iVar.f13883c;
        v.C(a0Var, null, 0, jVar, 3);
        v.D(a0Var, iVar.f13674h, new qg.k(iVar, null));
    }

    @Override // i8.d
    public final void r() {
    }

    @Override // i8.d
    public final void y() {
    }
}
