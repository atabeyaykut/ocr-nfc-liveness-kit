package tr.gov.turkiye.edevlet.kapisi.dashboard.about;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.GridLayoutManager;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import mf.f;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentAboutPageBinding;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageFragment;", "Lee/a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class AboutPageFragment extends ee.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16173e = {androidx.room.util.a.b(AboutPageFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/about/AboutPageViewModel;"), androidx.room.util.a.b(AboutPageFragment.class, "mAboutPageBinding", "getMAboutPageBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16174a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16175b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16176c;

    /* renamed from: d, reason: collision with root package name */
    public Context f16177d;

    public static final class a extends j implements l<mf.e, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(mf.e eVar) {
            mf.e state = eVar;
            h.f(state, "state");
            r0.b<Result<List<AboutPageModelRealm>>> bVar = state.f10406a;
            int r22 = 1;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            AboutPageFragment aboutPageFragment = AboutPageFragment.this;
            if (z10) {
                m<Object>[] mVarArr = AboutPageFragment.f16173e;
                aboutPageFragment.E().f16223e.setVisibility(8);
                aboutPageFragment.E().f16221c.f15873a.setVisibility(8);
                aboutPageFragment.E().f.f15878a.setVisibility(8);
                aboutPageFragment.E().f16222d.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = AboutPageFragment.f16173e;
                aboutPageFragment.getClass();
                List<AboutPageModelRealm> list = state.f10407b;
                List<AboutPageModelRealm> list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    r22 = 0;
                }
                if (r22 == 0) {
                    aboutPageFragment.E().f16221c.f15873a.setVisibility(8);
                    aboutPageFragment.E().f.f15878a.setVisibility(8);
                    aboutPageFragment.E().f16222d.setVisibility(8);
                    aboutPageFragment.E().f16223e.setVisibility(0);
                    aboutPageFragment.E().f16223e.h(new mf.b(list, aboutPageFragment));
                } else {
                    aboutPageFragment.F();
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = AboutPageFragment.f16173e;
                aboutPageFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    aboutPageFragment.startActivity(intentB);
                    FragmentActivity activity = aboutPageFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    aboutPageFragment.F();
                } else if (th2 instanceof NetworkErrorException) {
                    aboutPageFragment.E().f16223e.setVisibility(8);
                    aboutPageFragment.E().f16222d.setVisibility(8);
                    aboutPageFragment.E().f.f15878a.setVisibility(8);
                    aboutPageFragment.E().f16221c.f15873a.setVisibility(0);
                    aboutPageFragment.E().f16221c.f15874b.setOnClickListener(new zd.a(r22, aboutPageFragment));
                } else {
                    aboutPageFragment.E().f16223e.setVisibility(8);
                    aboutPageFragment.E().f16222d.setVisibility(8);
                    aboutPageFragment.E().f16221c.f15873a.setVisibility(8);
                    aboutPageFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentAboutPageBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16179a = new b();

        public b() {
            super(1, FragmentAboutPageBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentAboutPageBinding;", 0);
        }

        @Override // x9.l
        public final FragmentAboutPageBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentAboutPageBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<f, mf.e>, f> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16180a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16181b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16182c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16180a = fragment;
            this.f16181b = dVar;
            this.f16182c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [mf.f, r0.z] */
        @Override // x9.l
        public final f invoke(q<f, mf.e> qVar) {
            q<f, mf.e> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16181b);
            Fragment fragment = this.f16180a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16182c, clsQ, mf.e.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16183a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16184b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16185c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16183a = dVar;
            this.f16184b = cVar;
            this.f16185c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16183a, new tr.gov.turkiye.edevlet.kapisi.dashboard.about.a(this), w.a(mf.e.class), this.f16184b);
        }
    }

    public AboutPageFragment() {
        super(R.layout.fragment_about_page);
        da.d dVarA = w.a(f.class);
        this.f16175b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16173e[0]);
        this.f16176c = d0.C(this, b.f16179a);
    }

    public final FragmentAboutPageBinding E() {
        return (FragmentAboutPageBinding) this.f16176c.a(this, f16173e[1]);
    }

    public final void F() {
        E().f16223e.setVisibility(8);
        E().f16222d.setVisibility(8);
        E().f16221c.f15873a.setVisibility(8);
        E().f.f15878a.setVisibility(0);
        E().f.f15881d.setText(getString(R.string.no_content_found_title));
        E().f.f15880c.setText(getString(R.string.no_content_found_content));
        ImageView imageView = E().f.f15879b;
        h.e(imageView, "mAboutPageBinding.systemErrorView.iconSearch");
        ge.b.a(imageView, R.drawable.icon_system_error);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((f) this.f16175b.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        EpoxyRecyclerView epoxyRecyclerView;
        GridLayoutManager gridLayoutManager;
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f16177d = view.getContext();
        if (getResources().getBoolean(R.bool.isTablet)) {
            epoxyRecyclerView = E().f16223e;
            gridLayoutManager = new GridLayoutManager(this.f16177d, 3);
        } else {
            epoxyRecyclerView = E().f16223e;
            gridLayoutManager = new GridLayoutManager(this.f16177d, 2);
        }
        epoxyRecyclerView.setLayoutManager(gridLayoutManager);
    }
}
