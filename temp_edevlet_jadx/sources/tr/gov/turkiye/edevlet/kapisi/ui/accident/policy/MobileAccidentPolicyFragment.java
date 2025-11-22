package tr.gov.turkiye.edevlet.kapisi.ui.accident.policy;

import android.content.Context;
import android.view.View;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import b8.f;
import com.airbnb.epoxy.p;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import io.realm.q0;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import r0.c1;
import r0.d1;
import r0.i;
import r0.k;
import r0.q;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportPolicy;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentReportVehicle;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentPolicyBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.ui.PolicyListModel_;
import x9.l;
import yd.a;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentPolicyFragment extends ee.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17516e = {androidx.room.util.a.b(MobileAccidentPolicyFragment.class, "mPolicyBinding", "getMPolicyBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;"), androidx.room.util.a.b(MobileAccidentPolicyFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/policy/MobileAccidentPolicyViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17517a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17518b;

    /* renamed from: c, reason: collision with root package name */
    public Context f17519c;

    /* renamed from: d, reason: collision with root package name */
    public String f17520d;

    public static final class a extends j implements l<uh.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f17521a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(uh.c cVar) {
            uh.c state = cVar;
            h.f(state, "state");
            r0.b<Result<q0<AccidentReportPolicy>>> bVar = state.f18166a;
            if (!(bVar instanceof d1 ? true : bVar instanceof k)) {
                if (bVar instanceof c1) {
                    yd.a.f19652a.c("Success", new Object[0]);
                } else {
                    boolean z10 = bVar instanceof i;
                }
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentPolicyBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17522a = new b();

        public b() {
            super(1, FragmentPolicyBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentPolicyBinding;", 0);
        }

        @Override // x9.l
        public final FragmentPolicyBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentPolicyBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<p, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ MKTAccidentReport f17523a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(MKTAccidentReport mKTAccidentReport) {
            super(1);
            this.f17523a = mKTAccidentReport;
        }

        @Override // x9.l
        public final l9.m invoke(p pVar) {
            q0<AccidentReportPolicy> policies;
            q0<AccidentReportPolicy> policies2;
            p withModels = pVar;
            h.f(withModels, "$this$withModels");
            MKTAccidentReport mKTAccidentReport = this.f17523a;
            AccidentReportVehicle vehicle = mKTAccidentReport.getVehicle();
            Integer numValueOf = (vehicle == null || (policies2 = vehicle.getPolicies()) == null) ? null : Integer.valueOf(policies2.size());
            AccidentReportVehicle vehicle2 = mKTAccidentReport.getVehicle();
            if (vehicle2 != null && (policies = vehicle2.getPolicies()) != null) {
                Iterator<AccidentReportPolicy> it = policies.iterator();
                int r42 = 0;
                while (it.hasNext()) {
                    AccidentReportPolicy next = it.next();
                    int r6 = r42 + 1;
                    if (r42 < 0) {
                        f.k0();
                        throw null;
                    }
                    AccidentReportPolicy accidentReportPolicy = next;
                    PolicyListModel_ policyListModel_ = new PolicyListModel_();
                    policyListModel_.mo446id((CharSequence) accidentReportPolicy.getId());
                    policyListModel_.policyItem(accidentReportPolicy);
                    a.C0306a c0306a = yd.a.f19652a;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(r42);
                    sb2.append(' ');
                    sb2.append(numValueOf);
                    c0306a.c(sb2.toString(), new Object[0]);
                    policyListModel_.isDivider((numValueOf == null || r42 != numValueOf.intValue() + (-1)) ? "SHOW" : "HIDE");
                    withModels.add(policyListModel_);
                    r42 = r6;
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class d extends j implements l<q<uh.d, uh.c>, uh.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17524a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17525b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17526c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17524a = fragment;
            this.f17525b = dVar;
            this.f17526c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, uh.d] */
        @Override // x9.l
        public final uh.d invoke(q<uh.d, uh.c> qVar) {
            q<uh.d, uh.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17525b);
            Fragment fragment = this.f17524a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17526c, clsQ, uh.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class e extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17527a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17528b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17529c;

        public e(da.d dVar, d dVar2, da.d dVar3) {
            this.f17527a = dVar;
            this.f17528b = dVar2;
            this.f17529c = dVar3;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17527a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.a(this), w.a(uh.c.class), this.f17528b);
        }
    }

    public MobileAccidentPolicyFragment() {
        super(R.layout.fragment_policy);
        this.f17517a = d0.C(this, b.f17522a);
        da.d dVarA = w.a(uh.d.class);
        this.f17518b = new e(dVarA, new d(this, dVarA, dVarA), dVarA).t(this, f17516e[1]);
    }

    public final FragmentPolicyBinding E() {
        return (FragmentPolicyBinding) this.f17517a.a(this, f17516e[0]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((uh.d) this.f17518b.getValue(), a.f17521a);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0113  */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onViewCreated(android.view.View r7, android.os.Bundle r8) {
        /*
            Method dump skipped, instructions count: 351
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.policy.MobileAccidentPolicyFragment.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
