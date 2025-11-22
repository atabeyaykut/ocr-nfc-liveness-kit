package tr.gov.turkiye.edevlet.kapisi.dashboard.wonder;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.g0;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.FragmentServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.extension.EmptyListException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesFragment;", "Lee/a;", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class WonderServicesFragment extends ee.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16464e = {androidx.room.util.a.b(WonderServicesFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/dashboard/wonder/WonderServicesViewModel;"), androidx.room.util.a.b(WonderServicesFragment.class, "mWonderServicesBinding", "getMWonderServicesBinding()Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/FragmentServiceListBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public gf.b f16465a;

    /* renamed from: b, reason: collision with root package name */
    public final e f16466b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16467c;

    /* renamed from: d, reason: collision with root package name */
    public Context f16468d;

    public static final class a extends j implements l<yf.d, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(yf.d dVar) {
            yf.d state = dVar;
            h.f(state, "state");
            r0.b<Result<List<ServiceModelRealm>>> bVar = state.f19671a;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof k;
            WonderServicesFragment wonderServicesFragment = WonderServicesFragment.this;
            if (z11) {
                m<Object>[] mVarArr = WonderServicesFragment.f16464e;
                wonderServicesFragment.E().f16248e.setVisibility(8);
                wonderServicesFragment.E().f16246c.f15873a.setVisibility(8);
                wonderServicesFragment.E().f.f15878a.setVisibility(8);
                wonderServicesFragment.E().f16247d.setVisibility(0);
            } else if (bVar instanceof c1) {
                m<Object>[] mVarArr2 = WonderServicesFragment.f16464e;
                wonderServicesFragment.getClass();
                List<ServiceModelRealm> list = state.f19672b;
                List<ServiceModelRealm> list2 = list;
                if (list2 != null && !list2.isEmpty()) {
                    z10 = false;
                }
                if (!z10) {
                    wonderServicesFragment.E().f16246c.f15873a.setVisibility(8);
                    wonderServicesFragment.E().f.f15878a.setVisibility(8);
                    wonderServicesFragment.E().f16247d.setVisibility(8);
                    wonderServicesFragment.E().f16248e.setVisibility(0);
                    wonderServicesFragment.E().f16248e.h(new yf.b(list, g0.t(), wonderServicesFragment));
                }
            } else if (bVar instanceof i) {
                Throwable th2 = ((i) bVar).f13749b;
                m<Object>[] mVarArr3 = WonderServicesFragment.f16464e;
                wonderServicesFragment.getClass();
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    wonderServicesFragment.startActivity(intentB);
                    FragmentActivity activity = wonderServicesFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof EmptyListException) {
                    wonderServicesFragment.E().f16248e.setVisibility(8);
                    wonderServicesFragment.E().f16247d.setVisibility(8);
                    wonderServicesFragment.E().f16246c.f15873a.setVisibility(8);
                    wonderServicesFragment.E().f.f15878a.setVisibility(0);
                    wonderServicesFragment.E().f.f15881d.setText(wonderServicesFragment.getString(R.string.no_content_found_title));
                    wonderServicesFragment.E().f.f15880c.setText(wonderServicesFragment.getString(R.string.no_content_found_content));
                    ImageView imageView = wonderServicesFragment.E().f.f15879b;
                    h.e(imageView, "mWonderServicesBinding.systemErrorView.iconSearch");
                    ge.b.a(imageView, R.drawable.icon_system_error);
                } else if (th2 instanceof NetworkErrorException) {
                    wonderServicesFragment.E().f16248e.setVisibility(8);
                    wonderServicesFragment.E().f16247d.setVisibility(8);
                    wonderServicesFragment.E().f.f15878a.setVisibility(8);
                    wonderServicesFragment.E().f16246c.f15873a.setVisibility(0);
                    wonderServicesFragment.E().f16246c.f15874b.setOnClickListener(new zd.e(6, wonderServicesFragment));
                } else {
                    wonderServicesFragment.E().f16248e.setVisibility(8);
                    wonderServicesFragment.E().f16247d.setVisibility(8);
                    wonderServicesFragment.E().f16246c.f15873a.setVisibility(8);
                    wonderServicesFragment.E().f.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentServiceListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16470a = new b();

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

    public static final class c extends j implements l<q<yf.e, yf.d>, yf.e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16471a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16472b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16473c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16471a = fragment;
            this.f16472b = dVar;
            this.f16473c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, yf.e] */
        @Override // x9.l
        public final yf.e invoke(q<yf.e, yf.d> qVar) {
            q<yf.e, yf.d> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16472b);
            Fragment fragment = this.f16471a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16473c, clsQ, yf.d.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16474a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16475b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16476c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f16474a = dVar;
            this.f16475b = cVar;
            this.f16476c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16474a, new tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.a(this), w.a(yf.d.class), this.f16475b);
        }
    }

    public WonderServicesFragment() {
        super(R.layout.fragment_service_list);
        da.d dVarA = w.a(yf.e.class);
        this.f16466b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f16464e[0]);
        this.f16467c = d0.C(this, b.f16470a);
    }

    public final FragmentServiceListBinding E() {
        return (FragmentServiceListBinding) this.f16467c.a(this, f16464e[1]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((yf.e) this.f16466b.getValue(), new a());
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
        this.f16468d = view.getContext();
        E().f16248e.setLayoutManager(new LinearLayoutManager(this.f16468d));
    }
}
