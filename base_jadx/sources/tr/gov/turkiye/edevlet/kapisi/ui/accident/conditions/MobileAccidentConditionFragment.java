package tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import c5.u;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import r0.q;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentConditionListBinding;
import x9.l;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentConditionFragment extends ee.a {

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17029k = {androidx.room.util.a.b(MobileAccidentConditionFragment.class, "mConditionListBinding", "getMConditionListBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;"), androidx.room.util.a.b(MobileAccidentConditionFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/conditions/MobileAccidentConditionViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17030a;

    /* renamed from: b, reason: collision with root package name */
    public final e f17031b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17032c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17033d;

    /* renamed from: e, reason: collision with root package name */
    public String f17034e;
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public String f17035g;

    /* renamed from: h, reason: collision with root package name */
    public ArrayList f17036h;

    /* renamed from: j, reason: collision with root package name */
    public boolean f17037j;

    public static final class a extends j implements l<bh.b, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:60:0x0166  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(bh.b r12) {
            /*
                Method dump skipped, instructions count: 909
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.MobileAccidentConditionFragment.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentConditionListBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17039a = new b();

        public b() {
            super(1, FragmentConditionListBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentConditionListBinding;", 0);
        }

        @Override // x9.l
        public final FragmentConditionListBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentConditionListBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<bh.c, bh.b>, bh.c> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17040a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17041b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17042c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17040a = fragment;
            this.f17041b = dVar;
            this.f17042c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [bh.c, r0.z] */
        @Override // x9.l
        public final bh.c invoke(q<bh.c, bh.b> qVar) {
            q<bh.c, bh.b> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17041b);
            Fragment fragment = this.f17040a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17042c, clsQ, bh.b.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17043a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17044b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17045c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f17043a = dVar;
            this.f17044b = cVar;
            this.f17045c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17043a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.conditions.a(this), w.a(bh.b.class), this.f17044b);
        }
    }

    public MobileAccidentConditionFragment() {
        super(R.layout.fragment_condition_list);
        this.f17030a = d0.C(this, b.f17039a);
        da.d dVarA = w.a(bh.c.class);
        this.f17031b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f17029k[1]);
        this.f17036h = new ArrayList();
    }

    public final FragmentConditionListBinding E() {
        return (FragmentConditionListBinding) this.f17030a.a(this, f17029k[0]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((bh.c) this.f17031b.getValue(), new a());
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
        this.f17033d = view.getContext();
        Bundle arguments = getArguments();
        this.f17034e = arguments != null ? arguments.getString("latitude") : null;
        Bundle arguments2 = getArguments();
        this.f = arguments2 != null ? arguments2.getString("longitude") : null;
        Bundle arguments3 = getArguments();
        this.f17035g = arguments3 != null ? arguments3.getString("partyRole") : null;
        Context context = this.f17033d;
        if (context != null) {
            Object systemService = context.getSystemService("layout_inflater");
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            Context context2 = this.f17033d;
            h.c(context2);
            v.e eVar = new v.e(context2);
            this.f17032c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17032c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        E().f17091c.setOnClickListener(new ie.d(11, this));
        E().f17092d.setOnClickListener(new zd.e(12, this));
        E().f17090b.setOnClickListener(new f(10, this));
    }
}
