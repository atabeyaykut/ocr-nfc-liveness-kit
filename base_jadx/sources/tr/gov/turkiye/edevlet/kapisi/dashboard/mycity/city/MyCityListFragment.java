package tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.collection.ArrayMap;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DividerItemDecoration;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.chip.Chip;
import da.m;
import e8.b;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import m9.n;
import m9.t;
import m9.v;
import nc.a0;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tf.f;
import tf.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentMyCityListBinding;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b;
import tr.gov.turkiye.edevlet.kapisi.data.city.CityModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.city.MyCityListDBModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.l;

@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListFragment;", "Lee/a;", "Li8/d;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/b;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MyCityListFragment extends ee.a implements i8.d<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16381k = {androidx.room.util.a.b(MyCityListFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/mycity/city/MyCityListViewModel;"), androidx.room.util.a.b(MyCityListFragment.class, "mMyCityBinding", "getMMyCityBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public final e f16382a;

    /* renamed from: b, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16383b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16384c;

    /* renamed from: d, reason: collision with root package name */
    public j8.d<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> f16385d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f16386e;
    public final HashMap<Integer, View> f;

    /* renamed from: g, reason: collision with root package name */
    public final HashMap<Integer, tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> f16387g;

    /* renamed from: h, reason: collision with root package name */
    public e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> f16388h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f16389j;

    public static final class a extends j implements l<h, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(h hVar) {
            e8.d dVarA;
            h state = hVar;
            kotlin.jvm.internal.h.f(state, "state");
            r0.b<Result<List<CityModelRealm>>> bVar = state.f15700a;
            int r22 = 1;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            int r32 = 0;
            final MyCityListFragment myCityListFragment = MyCityListFragment.this;
            if (z10) {
                m<Object>[] mVarArr = MyCityListFragment.f16381k;
                myCityListFragment.F().f16241h.setVisibility(8);
                myCityListFragment.F().f16242i.f15871a.setVisibility(8);
                myCityListFragment.F().f.f15873a.setVisibility(8);
                myCityListFragment.F().f16243j.f15878a.setVisibility(8);
                myCityListFragment.F().f16240g.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = MyCityListFragment.f16381k;
                myCityListFragment.F().f16240g.setVisibility(8);
                myCityListFragment.F().f16243j.f15878a.setVisibility(8);
                myCityListFragment.F().f.f15873a.setVisibility(8);
                myCityListFragment.F().f16241h.setVisibility(0);
                myCityListFragment.F().f16242i.f15871a.setVisibility(0);
                g0 realm = g0.t();
                myCityListFragment.f16386e = new ArrayList();
                List<CityModelRealm> list = state.f15701b;
                ArrayList arrayList = new ArrayList(n.Q0(list));
                for (CityModelRealm cityModelRealm : list) {
                    kotlin.jvm.internal.h.e(realm, "realm");
                    RealmQuery realmQueryJ = realm.J(MyCityListDBModel.class);
                    realmQueryJ.b(Integer.valueOf(cityModelRealm.getCityCode()), "cityId");
                    MyCityListDBModel myCityListDBModel = (MyCityListDBModel) realmQueryJ.e();
                    tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar2 = new tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b();
                    String name = cityModelRealm.getCityName();
                    kotlin.jvm.internal.h.f(name, "name");
                    bVar2.f16399e = name;
                    bVar2.f = Integer.valueOf(cityModelRealm.getCityCode());
                    bVar2.f7022a = cityModelRealm.getCityCode();
                    if (myCityListDBModel != null) {
                        bVar2.f7024c = true;
                        myCityListFragment.f16386e.add(bVar2);
                    }
                    arrayList.add(bVar2);
                }
                ArrayList arrayList2 = myCityListFragment.f16386e;
                if (arrayList2 == null || arrayList2.isEmpty()) {
                    myCityListFragment.F().f16236b.removeAllViews();
                    myCityListFragment.F().f16237c.setVisibility(8);
                } else {
                    myCityListFragment.F().f16236b.removeAllViews();
                    myCityListFragment.F().f16237c.setVisibility(0);
                    Iterator it = myCityListFragment.f16386e.iterator();
                    while (it.hasNext()) {
                        tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar3 = (tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b) it.next();
                        View viewInflate = myCityListFragment.getLayoutInflater().inflate(R.layout.item_select_chip, (ViewGroup) null, false);
                        kotlin.jvm.internal.h.d(viewInflate, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
                        Chip chip = (Chip) viewInflate;
                        chip.setText(bVar3.f16399e);
                        Integer num = bVar3.f;
                        kotlin.jvm.internal.h.c(num);
                        chip.setId(num.intValue());
                        chip.setClickable(true);
                        chip.setCheckable(false);
                        chip.setOnCloseIconClickListener(new tf.c(r32, myCityListFragment, bVar3));
                        HashMap<Integer, View> map = myCityListFragment.f;
                        Integer num2 = bVar3.f;
                        kotlin.jvm.internal.h.c(num2);
                        map.put(num2, chip);
                        HashMap<Integer, tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> map2 = myCityListFragment.f16387g;
                        Integer num3 = bVar3.f;
                        kotlin.jvm.internal.h.c(num3);
                        map2.put(num3, bVar3);
                        myCityListFragment.F().f16236b.addView(chip);
                    }
                }
                myCityListFragment.F().f16241h.setLayoutManager(new LinearLayoutManager(myCityListFragment.f16384c));
                myCityListFragment.F().f16241h.setItemAnimator(new DefaultItemAnimator());
                myCityListFragment.F().f16241h.addItemDecoration(new DividerItemDecoration(myCityListFragment.f16384c, 1));
                final f8.a aVar = new f8.a();
                e8.b.f5142o.getClass();
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVarC = b.a.c(aVar);
                myCityListFragment.f16388h = bVarC;
                b.a aVar2 = new b.a();
                LinkedList linkedList = bVarC.f5147e;
                if (linkedList == null) {
                    linkedList = new LinkedList();
                    bVarC.f5147e = linkedList;
                }
                linkedList.add(aVar2);
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVar4 = myCityListFragment.f16388h;
                if (bVar4 == null) {
                    kotlin.jvm.internal.h.n("mCityListFastAdapter");
                    throw null;
                }
                bVar4.setHasStableIds(true);
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVar5 = myCityListFragment.f16388h;
                if (bVar5 == null) {
                    kotlin.jvm.internal.h.n("mCityListFastAdapter");
                    throw null;
                }
                int r82 = j8.d.f8309g;
                ArrayMap<Class<?>, e8.d<Item>> arrayMap = bVar5.f;
                if (arrayMap.containsKey(j8.d.class)) {
                    Object obj = arrayMap.get(j8.d.class);
                    if (obj == null) {
                        throw new NullPointerException("null cannot be cast to non-null type T");
                    }
                    dVarA = (e8.d) obj;
                } else {
                    g8.a<?> aVar3 = g8.b.f5953a.get(j8.d.class);
                    dVarA = aVar3 != null ? aVar3.a(bVar5) : null;
                    if (!(dVarA instanceof e8.d)) {
                        dVarA = null;
                    }
                    if (dVarA != null) {
                        arrayMap.put(j8.d.class, dVarA);
                    } else {
                        dVarA = null;
                    }
                }
                kotlin.jvm.internal.h.c(dVarA);
                j8.d<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> dVar = (j8.d) dVarA;
                myCityListFragment.f16385d = dVar;
                dVar.f8313d = true;
                dVar.f8310a = true;
                dVar.f8311b = false;
                dVar.f8314e = new tf.e(myCityListFragment);
                f8.b<Model, Item> bVar6 = aVar.f;
                bVar6.f5541b = myCityListFragment;
                bVar6.f5542c = f.f15687a;
                RecyclerView recyclerView = myCityListFragment.F().f16241h;
                e8.b<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> bVar7 = myCityListFragment.f16388h;
                if (bVar7 == null) {
                    kotlin.jvm.internal.h.n("mCityListFastAdapter");
                    throw null;
                }
                recyclerView.setAdapter(bVar7);
                aVar.e(arrayList);
                AppCompatEditText appCompatEditText = myCityListFragment.F().f16242i.f15872b;
                kotlin.jvm.internal.h.e(appCompatEditText, "mMyCityBinding.searchView.searchText");
                appCompatEditText.addTextChangedListener(new tf.d(aVar));
                myCityListFragment.F().f16242i.f15872b.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: tf.b
                    @Override // android.widget.TextView.OnEditorActionListener
                    public final boolean onEditorAction(TextView textView, int r33, KeyEvent keyEvent) {
                        m<Object>[] mVarArr3 = MyCityListFragment.f16381k;
                        MyCityListFragment this$0 = myCityListFragment;
                        kotlin.jvm.internal.h.f(this$0, "this$0");
                        f8.a cityListAdapter = aVar;
                        kotlin.jvm.internal.h.f(cityListAdapter, "$cityListAdapter");
                        if (r33 != 3) {
                            return true;
                        }
                        cityListAdapter.f.filter(String.valueOf(this$0.F().f16242i.f15872b.getText()));
                        return true;
                    }
                });
                myCityListFragment.F().f16239e.setOnClickListener(new ke.c(r22, myCityListFragment, realm));
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = MyCityListFragment.f16381k;
                myCityListFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    myCityListFragment.startActivity(intentB);
                    FragmentActivity activity = myCityListFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    myCityListFragment.F().f16241h.setVisibility(8);
                    myCityListFragment.F().f16242i.f15871a.setVisibility(8);
                    myCityListFragment.F().f16240g.setVisibility(8);
                    myCityListFragment.F().f.f15873a.setVisibility(8);
                    myCityListFragment.F().f16243j.f15878a.setVisibility(0);
                    myCityListFragment.F().f16243j.f15881d.setText(myCityListFragment.getString(R.string.no_content_found_title));
                    myCityListFragment.F().f16243j.f15880c.setText(myCityListFragment.getString(R.string.no_content_found_content));
                    ImageView imageView = myCityListFragment.F().f16243j.f15879b;
                    kotlin.jvm.internal.h.e(imageView, "mMyCityBinding.systemErrorView.iconSearch");
                    ge.b.a(imageView, R.drawable.icon_system_error);
                } else if (th2 instanceof NetworkErrorException) {
                    myCityListFragment.F().f16241h.setVisibility(8);
                    myCityListFragment.F().f16242i.f15871a.setVisibility(8);
                    myCityListFragment.F().f16240g.setVisibility(8);
                    myCityListFragment.F().f16243j.f15878a.setVisibility(8);
                    myCityListFragment.F().f.f15873a.setVisibility(0);
                    myCityListFragment.F().f.f15874b.setOnClickListener(new ie.d(2, myCityListFragment));
                } else {
                    myCityListFragment.F().f16241h.setVisibility(8);
                    myCityListFragment.F().f16242i.f15871a.setVisibility(8);
                    myCityListFragment.F().f16240g.setVisibility(8);
                    myCityListFragment.F().f.f15873a.setVisibility(8);
                    myCityListFragment.F().f16243j.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentMyCityListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16391a = new b();

        public b() {
            super(1, FragmentMyCityListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentMyCityListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentMyCityListBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentMyCityListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<tf.i, h>, tf.i> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16392a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16393b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16394c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16392a = fragment;
            this.f16393b = dVar;
            this.f16394c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, tf.i] */
        @Override // x9.l
        public final tf.i invoke(q<tf.i, h> qVar) {
            q<tf.i, h> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16393b);
            Fragment fragment = this.f16392a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16394c, clsQ, h.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16395a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16396b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16397c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16395a = dVar;
            this.f16396b = cVar;
            this.f16397c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16395a, new tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.a(this), w.a(h.class), this.f16396b);
        }
    }

    public MyCityListFragment() {
        super(R.layout.fragment_my_city_list);
        da.d dVarA = w.a(tf.i.class);
        this.f16382a = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16381k[0]);
        this.f16383b = d0.C(this, b.f16391a);
        this.f16386e = t.w1(v.f10173a);
        this.f = new HashMap<>();
        this.f16387g = new HashMap<>();
        this.f16389j = true;
    }

    public static final void E(MyCityListFragment myCityListFragment, boolean z10, tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar) {
        HashMap<Integer, View> map = myCityListFragment.f;
        int r22 = 1;
        if (z10) {
            myCityListFragment.f16386e.add(bVar);
            View viewInflate = myCityListFragment.getLayoutInflater().inflate(R.layout.item_select_chip, (ViewGroup) null, false);
            kotlin.jvm.internal.h.d(viewInflate, "null cannot be cast to non-null type com.google.android.material.chip.Chip");
            Chip chip = (Chip) viewInflate;
            chip.setText(bVar.f16399e);
            Integer num = bVar.f;
            kotlin.jvm.internal.h.c(num);
            chip.setId(num.intValue());
            chip.setClickable(true);
            chip.setCheckable(false);
            chip.setOnCloseIconClickListener(new ke.a(r22, myCityListFragment, bVar));
            Integer num2 = bVar.f;
            kotlin.jvm.internal.h.c(num2);
            map.put(num2, chip);
            HashMap<Integer, tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> map2 = myCityListFragment.f16387g;
            Integer num3 = bVar.f;
            kotlin.jvm.internal.h.c(num3);
            map2.put(num3, bVar);
            myCityListFragment.F().f16236b.addView(chip);
        } else {
            View view = map.get(bVar.f);
            myCityListFragment.f16386e.remove(bVar);
            myCityListFragment.F().f16236b.removeView(view);
        }
        ArrayList arrayList = myCityListFragment.f16386e;
        if (arrayList == null || arrayList.isEmpty()) {
            myCityListFragment.F().f16236b.removeAllViews();
            myCityListFragment.F().f16237c.setVisibility(8);
        } else {
            myCityListFragment.F().f16237c.addOnLayoutChangeListener(new androidx.camera.view.g(1, myCityListFragment));
            myCityListFragment.F().f16237c.setVisibility(0);
        }
    }

    public final FragmentMyCityListBinding F() {
        return (FragmentMyCityListBinding) this.f16383b.a(this, f16381k[1]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((tf.i) this.f16382a.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        try {
            AppCompatEditText appCompatEditText = F().f16242i.f15872b;
            kotlin.jvm.internal.h.e(appCompatEditText, "mMyCityBinding.searchView.searchText");
            d0.x(appCompatEditText);
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16384c = view.getContext();
        Bundle arguments = getArguments();
        this.f16389j = arguments != null ? arguments.getBoolean("mustAtLeastOne", true) : true;
        tf.i iVar = (tf.i) this.f16382a.getValue();
        iVar.getClass();
        tf.j jVar = new tf.j(iVar, 91, null);
        a0 a0Var = iVar.f13883c;
        c5.v.C(a0Var, null, 0, jVar, 3);
        c5.v.D(a0Var, iVar.f15702h, new tf.k(iVar, null));
    }

    @Override // i8.d
    public final void r() {
    }

    @Override // i8.d
    public final void y() {
    }
}
