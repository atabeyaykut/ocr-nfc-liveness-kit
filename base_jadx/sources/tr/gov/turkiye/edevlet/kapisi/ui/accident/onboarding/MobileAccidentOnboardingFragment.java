package tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Group;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.work.BackoffPolicy;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.u;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import df.n0;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import org.greenrobot.eventbus.ThreadMode;
import qd.i;
import r0.q;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateModuleCheckWorker;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentOnboardingBinding;
import x9.l;
import yd.a;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingFragment;", "Lee/a;", "Ldf/n0;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentOnboardingFragment extends ee.a {
    public static final /* synthetic */ m<Object>[] f = {androidx.room.util.a.b(MobileAccidentOnboardingFragment.class, "mOnboardingFragment", "getMOnboardingFragment()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;"), androidx.room.util.a.b(MobileAccidentOnboardingFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/onboarding/MobileAccidentOnboardingViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17502a;

    /* renamed from: b, reason: collision with root package name */
    public final e f17503b;

    /* renamed from: c, reason: collision with root package name */
    public v.e f17504c;

    /* renamed from: d, reason: collision with root package name */
    public Context f17505d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f17506e;

    public static final class a extends j implements l<th.c, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:69:0x011d  */
        /* JADX WARN: Removed duplicated region for block: B:72:0x014f A[PHI: r1
          0x014f: PHI (r1v6 java.lang.Object) = (r1v1 java.lang.Object), (r1v22 java.lang.Object) binds: [B:71:0x014d, B:37:0x00b4] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(th.c r8) {
            /*
                Method dump skipped, instructions count: 569
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.MobileAccidentOnboardingFragment.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentOnboardingBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17508a = new b();

        public b() {
            super(1, FragmentOnboardingBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentOnboardingBinding;", 0);
        }

        @Override // x9.l
        public final FragmentOnboardingBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentOnboardingBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<th.d, th.c>, th.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17509a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17510b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17511c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17509a = fragment;
            this.f17510b = dVar;
            this.f17511c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, th.d] */
        @Override // x9.l
        public final th.d invoke(q<th.d, th.c> qVar) {
            q<th.d, th.c> stateFactory = qVar;
            h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17510b);
            Fragment fragment = this.f17509a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17511c, clsQ, th.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17512a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f17513b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17514c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f17512a = dVar;
            this.f17513b = cVar;
            this.f17514c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            h.f(thisRef, "thisRef");
            h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17512a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.onboarding.a(this), w.a(th.c.class), this.f17513b);
        }
    }

    public MobileAccidentOnboardingFragment() {
        super(R.layout.fragment_onboarding);
        this.f17502a = d0.C(this, b.f17508a);
        da.d dVarA = w.a(th.d.class);
        this.f17503b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f[1]);
    }

    public final FragmentOnboardingBinding E() {
        return (FragmentOnboardingBinding) this.f17502a.a(this, f[0]);
    }

    public final th.d F() {
        return (th.d) this.f17503b.getValue();
    }

    public final void G() {
        v.e eVar;
        E().f17175c.setVisibility(8);
        E().f17177e.f15873a.setVisibility(8);
        E().f17176d.f15887a.setVisibility(8);
        E().f.f15878a.setVisibility(8);
        v.e eVar2 = this.f17504c;
        boolean z10 = false;
        if (eVar2 != null && !eVar2.isShowing()) {
            z10 = true;
        }
        if (!z10 || (eVar = this.f17504c) == null) {
            return;
        }
        eVar.show();
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u(F(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(n0 n0Var) {
        qd.b.b().l(n0.class);
        Boolean boolValueOf = n0Var != null ? Boolean.valueOf(n0Var.f4882a) : null;
        Boolean bool = Boolean.FALSE;
        if (!h.a(boolValueOf, bool)) {
            boolean z10 = true;
            if (n0Var != null ? h.a(n0Var.f4883b, bool) : false) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("v0", new Object[0]);
                String str = n0Var.f4884c;
                if (str == null || str.length() == 0) {
                    return;
                }
                String str2 = n0Var.f4885d;
                if (str2 != null && str2.length() != 0) {
                    z10 = false;
                }
                if (z10) {
                    return;
                }
                c0306a.c("v1", new Object[0]);
                v.e eVar = this.f17504c;
                if (eVar != null) {
                    eVar.dismiss();
                }
                E().f17175c.setVisibility(8);
                E().f17177e.f15873a.setVisibility(8);
                E().f17176d.f15887a.setVisibility(8);
                E().f.f15878a.setVisibility(0);
                E().f.f15881d.setText(str);
                E().f.f15880c.setText(str2);
                return;
            }
            if (n0Var != null ? h.a(n0Var.f4886e, Boolean.TRUE) : false) {
                String str3 = n0Var.f4887g;
                String str4 = n0Var.f4888h;
                if (str4 == null || str4.length() == 0) {
                    return;
                }
                String str5 = n0Var.f;
                if (str5 != null && str5.length() != 0) {
                    z10 = false;
                }
                if (z10) {
                    return;
                }
                boolean zA = h.a(str3, "required");
                v.e eVar2 = this.f17504c;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                E().f17175c.setVisibility(8);
                E().f17177e.f15873a.setVisibility(8);
                E().f.f15878a.setVisibility(8);
                E().f17176d.f15887a.setVisibility(0);
                E().f17176d.f.setText(str5);
                E().f17176d.f15891e.setText(str4);
                Group group = E().f17176d.f15890d;
                if (zA) {
                    group.setVisibility(8);
                } else {
                    group.setVisibility(0);
                    E().f17176d.f15888b.setOnClickListener(new f(13, this));
                }
                E().f17176d.f15889c.setOnClickListener(new xf.d(14, this));
                return;
            }
        }
        F().d();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onPause() {
        super.onPause();
        if (qd.b.b().e(this)) {
            qd.b.b().n(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onResume() throws SecurityException {
        super.onResume();
        if (qd.b.b().e(this)) {
            return;
        }
        qd.b.b().k(this);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f17505d = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            v.e eVar = new v.e(context);
            this.f17504c = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f17504c;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        Context context2 = this.f17505d;
        if (context2 != null) {
            G();
            OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(UpdateModuleCheckWorker.class).setBackoffCriteria(BackoffPolicy.LINEAR, 1000L, TimeUnit.MILLISECONDS).build();
            h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                ).build()");
            WorkManager.getInstance(context2).enqueue(oneTimeWorkRequestBuild);
        }
        E().f17174b.setOnClickListener(new ie.d(17, this));
    }
}
