package tr.gov.turkiye.edevlet.kapisi.search;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.browser.trusted.j;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import c5.b4;
import com.airbnb.epoxy.p;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.transition.MaterialFadeThrough;
import com.google.firebase.analytics.FirebaseAnalytics;
import da.m;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.w;
import mc.n;
import ng.i;
import ng.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;
import tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding;
import tr.gov.turkiye.edevlet.kapisi.search.ui.SearchServiceListController;
import tr.gov.turkiye.edevlet.kapisi.search.ui.SearchServiceListItemModel_;
import x9.l;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/search/SearchFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/search/ui/SearchServiceListController$a;", "<init>", "()V", "ui-search_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class SearchFragment extends ee.a implements SearchServiceListController.a {

    /* renamed from: s, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16707s = {androidx.room.util.a.b(SearchFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/search/SearchViewModel;"), androidx.room.util.a.b(SearchFragment.class, "binding", "getBinding()Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public String f16708a;

    /* renamed from: b, reason: collision with root package name */
    public SharedPreferences.Editor f16709b;

    /* renamed from: c, reason: collision with root package name */
    public SharedPreferences f16710c;

    /* renamed from: d, reason: collision with root package name */
    public FirebaseAnalytics f16711d;

    /* renamed from: e, reason: collision with root package name */
    public final l9.e f16712e;
    public final FragmentViewBindingDelegate f;

    /* renamed from: g, reason: collision with root package name */
    public FragmentSearchBinding f16713g;

    /* renamed from: h, reason: collision with root package name */
    public Context f16714h;

    /* renamed from: j, reason: collision with root package name */
    public Handler f16715j;

    /* renamed from: k, reason: collision with root package name */
    public j f16716k;

    /* renamed from: l, reason: collision with root package name */
    public SearchServiceListController f16717l;

    /* renamed from: m, reason: collision with root package name */
    public String f16718m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f16719n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f16720p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f16721q;

    /* renamed from: r, reason: collision with root package name */
    public List<? extends ServiceModelRealm> f16722r;

    public /* synthetic */ class a extends g implements l<View, FragmentSearchBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16723a = new a();

        public a() {
            super(1, FragmentSearchBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/search/databinding/FragmentSearchBinding;", 0);
        }

        @Override // x9.l
        public final FragmentSearchBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentSearchBinding.bind(p02);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements l<i, l9.m> {
        public b() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:135:0x01e0  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(ng.i r9) {
            /*
                Method dump skipped, instructions count: 543
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.search.SearchFragment.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements l<p, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ List<ServiceModelRealm> f16725a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SearchFragment f16726b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(List<? extends ServiceModelRealm> list, SearchFragment searchFragment) {
            super(1);
            this.f16725a = list;
            this.f16726b = searchFragment;
        }

        @Override // x9.l
        public final l9.m invoke(p pVar) {
            p withModels = pVar;
            h.f(withModels, "$this$withModels");
            for (ServiceModelRealm serviceModelRealm : this.f16725a) {
                SearchServiceListItemModel_ searchServiceListItemModel_ = new SearchServiceListItemModel_();
                searchServiceListItemModel_.mo313id(serviceModelRealm.getServiceCode());
                searchServiceListItemModel_.service(serviceModelRealm);
                searchServiceListItemModel_.listener((l<? super ServiceModelRealm, l9.m>) new tr.gov.turkiye.edevlet.kapisi.search.a(this.f16726b));
                withModels.add(searchServiceListItemModel_);
            }
            return l9.m.f9594a;
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements l<q<k, i>, k> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16727a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16728b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16729c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16727a = fragment;
            this.f16728b = dVar;
            this.f16729c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [ng.k, r0.z] */
        @Override // x9.l
        public final k invoke(q<k, i> qVar) {
            q<k, i> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16728b);
            Fragment fragment = this.f16727a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16729c, clsQ, i.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class e extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16730a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16731b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16732c;

        public e(da.d dVar, d dVar2, da.d dVar3) {
            this.f16730a = dVar;
            this.f16731b = dVar2;
            this.f16732c = dVar3;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16730a, new tr.gov.turkiye.edevlet.kapisi.search.b(this), w.a(i.class), this.f16731b);
        }
    }

    public SearchFragment() {
        super(R.layout.fragment_search);
        da.d dVarA = w.a(k.class);
        this.f16712e = new e(dVarA, new d(this, dVarA, dVarA), dVarA).t(this, f16707s[0]);
        this.f = d0.C(this, a.f16723a);
        this.f16720p = true;
    }

    public final void E() {
        try {
            if (this.f16721q) {
                this.f16721q = false;
                FragmentSearchBinding fragmentSearchBinding = this.f16713g;
                if (fragmentSearchBinding == null) {
                    h.n("mSearchFragmentBinding");
                    throw null;
                }
                AppCompatEditText appCompatEditText = fragmentSearchBinding.f.f15877c;
                h.e(appCompatEditText, "mSearchFragmentBinding.searchView.searchText");
                d0.x(appCompatEditText);
            }
        } catch (Exception unused) {
        }
    }

    public final void F(String str) {
        Handler handler = this.f16715j;
        if (handler != null) {
            j jVar = this.f16716k;
            if (jVar == null) {
                h.n("mSearchRunner");
                throw null;
            }
            handler.removeCallbacks(jVar);
        }
        if (str.length() == 0) {
            FragmentSearchBinding fragmentSearchBinding = this.f16713g;
            if (fragmentSearchBinding != null) {
                fragmentSearchBinding.f.f15876b.setVisibility(8);
                return;
            } else {
                h.n("mSearchFragmentBinding");
                throw null;
            }
        }
        FragmentSearchBinding fragmentSearchBinding2 = this.f16713g;
        if (fragmentSearchBinding2 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding2.f.f15876b.setVisibility(0);
        if (n.i0(str).toString().length() >= 3) {
            String string = n.i0(str).toString();
            Handler handler2 = new Handler(Looper.getMainLooper());
            this.f16715j = handler2;
            j jVar2 = new j(4, string, this);
            this.f16716k = jVar2;
            handler2.postDelayed(jVar2, 750L);
        }
    }

    public final void G(List<? extends ServiceModelRealm> list) {
        if (!list.isEmpty()) {
            try {
                this.f16720p = true;
                FragmentSearchBinding fragmentSearchBinding = this.f16713g;
                if (fragmentSearchBinding != null) {
                    fragmentSearchBinding.f16739e.h(new c(list, this));
                } else {
                    h.n("mSearchFragmentBinding");
                    throw null;
                }
            } catch (Exception unused) {
            }
        }
    }

    public final void H() {
        FragmentSearchBinding fragmentSearchBinding = this.f16713g;
        if (fragmentSearchBinding == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding.f16738d.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding2 = this.f16713g;
        if (fragmentSearchBinding2 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding2.f16741h.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding3 = this.f16713g;
        if (fragmentSearchBinding3 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding3.f16737c.f15873a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding4 = this.f16713g;
        if (fragmentSearchBinding4 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding4.f16740g.f15878a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding5 = this.f16713g;
        if (fragmentSearchBinding5 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding5.f16736b.f16742a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding6 = this.f16713g;
        if (fragmentSearchBinding6 != null) {
            fragmentSearchBinding6.f16739e.setVisibility(0);
        } else {
            h.n("mSearchFragmentBinding");
            throw null;
        }
    }

    public final void I() {
        FragmentSearchBinding fragmentSearchBinding = this.f16713g;
        if (fragmentSearchBinding == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding.f16739e.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding2 = this.f16713g;
        if (fragmentSearchBinding2 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding2.f16741h.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding3 = this.f16713g;
        if (fragmentSearchBinding3 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding3.f16737c.f15873a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding4 = this.f16713g;
        if (fragmentSearchBinding4 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding4.f16740g.f15878a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding5 = this.f16713g;
        if (fragmentSearchBinding5 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding5.f16736b.f16742a.setVisibility(8);
        FragmentSearchBinding fragmentSearchBinding6 = this.f16713g;
        if (fragmentSearchBinding6 != null) {
            fragmentSearchBinding6.f16738d.setVisibility(0);
        } else {
            h.n("mSearchFragmentBinding");
            throw null;
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((k) this.f16712e.getValue(), new b());
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
        try {
            setEnterTransition(new MaterialFadeThrough());
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() {
        super.onResume();
        try {
            FirebaseAnalytics firebaseAnalytics = this.f16711d;
            if (firebaseAnalytics == null) {
                h.n("firebaseAnalytics");
                throw null;
            }
            b4 b4Var = new b4(2, 0);
            b4Var.d("screen_name", "Search_Screen");
            b4Var.d("screen_class", "SearchFragment");
            firebaseAnalytics.a((Bundle) b4Var.f1418a, "screen_view");
        } catch (Exception unused) {
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16714h = view.getContext();
        FragmentSearchBinding binding = (FragmentSearchBinding) this.f.a(this, f16707s[1]);
        h.e(binding, "binding");
        this.f16713g = binding;
        binding.f16739e.setLayoutManager(new LinearLayoutManager(this.f16714h));
        FragmentSearchBinding fragmentSearchBinding = this.f16713g;
        if (fragmentSearchBinding == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding.f.f15877c.setOnFocusChangeListener(new View.OnFocusChangeListener() { // from class: ng.b
            /* JADX WARN: Removed duplicated region for block: B:15:0x0023  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0033  */
            @Override // android.view.View.OnFocusChangeListener
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void onFocusChange(android.view.View r6, boolean r7) {
                /*
                    r5 = this;
                    da.m<java.lang.Object>[] r6 = tr.gov.turkiye.edevlet.kapisi.search.SearchFragment.f16707s
                    tr.gov.turkiye.edevlet.kapisi.search.SearchFragment r6 = r5.f10950a
                    java.lang.String r0 = "this$0"
                    kotlin.jvm.internal.h.f(r6, r0)
                    if (r7 == 0) goto L78
                    android.content.SharedPreferences r7 = r6.f16710c
                    r0 = 0
                    if (r7 == 0) goto L72
                    java.lang.String[] r7 = ng.j.a(r7)
                    r1 = 1
                    r2 = 0
                    if (r7 == 0) goto L23
                    int r3 = r7.length
                    if (r3 != 0) goto L1d
                    r3 = 1
                    goto L1e
                L1d:
                    r3 = 0
                L1e:
                    if (r3 == 0) goto L21
                    goto L23
                L21:
                    r3 = 0
                    goto L24
                L23:
                    r3 = 1
                L24:
                    if (r3 != 0) goto L78
                    if (r7 == 0) goto L33
                    int r3 = r7.length
                    if (r3 != 0) goto L2d
                    r3 = 1
                    goto L2e
                L2d:
                    r3 = 0
                L2e:
                    if (r3 == 0) goto L31
                    goto L33
                L31:
                    r3 = 0
                    goto L34
                L33:
                    r3 = 1
                L34:
                    if (r3 != 0) goto L78
                    r6.f16720p = r1
                    tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding r1 = r6.f16713g
                    java.lang.String r3 = "mSearchFragmentBinding"
                    if (r1 == 0) goto L6e
                    tr.gov.turkiye.edevlet.kapisi.search.databinding.ItemSearchDeleteHistoryBinding r1 = r1.f16736b
                    androidx.constraintlayout.widget.ConstraintLayout r1 = r1.f16742a
                    r1.setVisibility(r2)
                    tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding r1 = r6.f16713g
                    if (r1 == 0) goto L6a
                    tr.gov.turkiye.edevlet.kapisi.search.databinding.ItemSearchDeleteHistoryBinding r1 = r1.f16736b
                    androidx.appcompat.widget.AppCompatImageView r1 = r1.f16743b
                    zd.d r2 = new zd.d
                    r4 = 12
                    r2.<init>(r4, r6)
                    r1.setOnClickListener(r2)
                    tr.gov.turkiye.edevlet.kapisi.search.databinding.FragmentSearchBinding r1 = r6.f16713g
                    if (r1 == 0) goto L66
                    ng.g r0 = new ng.g
                    r0.<init>(r7, r6)
                    com.airbnb.epoxy.EpoxyRecyclerView r6 = r1.f16739e
                    r6.h(r0)
                    goto L78
                L66:
                    kotlin.jvm.internal.h.n(r3)
                    throw r0
                L6a:
                    kotlin.jvm.internal.h.n(r3)
                    throw r0
                L6e:
                    kotlin.jvm.internal.h.n(r3)
                    throw r0
                L72:
                    java.lang.String r6 = "sharedPreferences"
                    kotlin.jvm.internal.h.n(r6)
                    throw r0
                L78:
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: ng.b.onFocusChange(android.view.View, boolean):void");
            }
        });
        FragmentSearchBinding fragmentSearchBinding2 = this.f16713g;
        if (fragmentSearchBinding2 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        fragmentSearchBinding2.f.f15877c.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: ng.c
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int r32, KeyEvent keyEvent) {
                m<Object>[] mVarArr = SearchFragment.f16707s;
                SearchFragment this$0 = this.f10951a;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                if (r32 == 3) {
                    FragmentSearchBinding fragmentSearchBinding3 = this$0.f16713g;
                    if (fragmentSearchBinding3 == null) {
                        kotlin.jvm.internal.h.n("mSearchFragmentBinding");
                        throw null;
                    }
                    String strValueOf = String.valueOf(fragmentSearchBinding3.f.f15877c.getText());
                    this$0.f16721q = true;
                    this$0.F(strValueOf);
                }
                return true;
            }
        });
        FragmentSearchBinding fragmentSearchBinding3 = this.f16713g;
        if (fragmentSearchBinding3 == null) {
            h.n("mSearchFragmentBinding");
            throw null;
        }
        AppCompatEditText appCompatEditText = fragmentSearchBinding3.f.f15877c;
        h.e(appCompatEditText, "mSearchFragmentBinding.searchView.searchText");
        appCompatEditText.addTextChangedListener(new ng.e(this));
        FragmentSearchBinding fragmentSearchBinding4 = this.f16713g;
        if (fragmentSearchBinding4 != null) {
            fragmentSearchBinding4.f.f15876b.setOnClickListener(new xf.d(6, this));
        } else {
            h.n("mSearchFragmentBinding");
            throw null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:78:0x0153 A[PHI: r0
      0x0153: PHI (r0v14 android.content.Intent) = 
      (r0v4 android.content.Intent)
      (r0v6 android.content.Intent)
      (r0v8 android.content.Intent)
      (r0v11 android.content.Intent)
      (r0v11 android.content.Intent)
      (r0v16 android.content.Intent)
     binds: [B:77:0x0151, B:74:0x014a, B:68:0x012c, B:61:0x00fa, B:62:0x00fc, B:52:0x00cc] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // tr.gov.turkiye.edevlet.kapisi.search.ui.SearchServiceListController.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void q(tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent r11) throws j7.m {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.search.SearchFragment.q(tr.gov.turkiye.edevlet.kapisi.data.service.SearchServiceContent):void");
    }
}
