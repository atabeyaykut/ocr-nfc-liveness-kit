package tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.text.Spanned;
import android.text.method.LinkMovementMethod;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.NavOptions;
import androidx.navigation.fragment.FragmentKt;
import c5.u;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import r0.c1;
import r0.d1;
import r0.k;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AgreementModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckClarificationModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CheckConfirmationResponseObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ClarificationControlData;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.ClarificationControlMapObject;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DocumentMap;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SendConfirmationRequestObject;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentAgreementBinding;
import x9.l;
import x9.q;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementFragment;", "Lee/a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentAgreementFragment extends ee.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f16945e = {androidx.room.util.a.b(MobileAccidentAgreementFragment.class, "mAgreementBinding", "getMAgreementBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;"), androidx.room.util.a.b(MobileAccidentAgreementFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/agreement/MobileAccidentAgreementViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f16946a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f16947b;

    /* renamed from: c, reason: collision with root package name */
    public Context f16948c;

    /* renamed from: d, reason: collision with root package name */
    public v.e f16949d;

    public static final class a extends kotlin.jvm.internal.j implements l<yg.c, l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f16950a = new a();

        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(yg.c cVar) {
            yg.c state = cVar;
            kotlin.jvm.internal.h.f(state, "state");
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements l<View, FragmentAgreementBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f16951a = new b();

        public b() {
            super(1, FragmentAgreementBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentAgreementBinding;", 0);
        }

        @Override // x9.l
        public final FragmentAgreementBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentAgreementBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment$onCreate$3", f = "MobileAccidentAgreementFragment.kt", l = {}, m = "invokeSuspend")
    public static final class e extends r9.i implements q<r0.b<? extends Result<CheckClarificationModel>>, CheckClarificationModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f16954a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ CheckClarificationModel f16955b;

        public e(p9.d<? super e> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<CheckClarificationModel>> bVar, CheckClarificationModel checkClarificationModel, p9.d<? super l9.m> dVar) {
            e eVar = MobileAccidentAgreementFragment.this.new e(dVar);
            eVar.f16954a = bVar;
            eVar.f16955b = checkClarificationModel;
            return eVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            SendConfirmationRequestObject sendConfirmationRequestObject;
            ClarificationControlMapObject clarificationControlMap;
            v.e eVar;
            w.F(obj);
            r0.b bVar = this.f16954a;
            CheckClarificationModel checkClarificationModel = this.f16955b;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentAgreementFragment mobileAccidentAgreementFragment = MobileAccidentAgreementFragment.this;
            if (z10) {
                yd.a.f19652a.c("Loading confirm ***", new Object[0]);
                v.e eVar2 = mobileAccidentAgreementFragment.f16949d;
                if (((eVar2 == null || eVar2.isShowing()) ? false : true) && (eVar = mobileAccidentAgreementFragment.f16949d) != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                v.e eVar3 = mobileAccidentAgreementFragment.f16949d;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
                ClarificationControlData clarificationControl = checkClarificationModel.getClarificationControl();
                if ((clarificationControl == null || (sendConfirmationRequestObject = clarificationControl.getSendConfirmationRequestObject()) == null || (clarificationControlMap = sendConfirmationRequestObject.getClarificationControlMap()) == null || !clarificationControlMap.getStatus()) ? false : true) {
                    FragmentKt.findNavController(mobileAccidentAgreementFragment).navigate(R.id.mktIntroductionFragment, (Bundle) null, new NavOptions.Builder().setPopUpTo(R.id.navigation_home, false).build());
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error confirm ***", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment$onCreate$6", f = "MobileAccidentAgreementFragment.kt", l = {}, m = "invokeSuspend")
    public static final class h extends r9.i implements q<r0.b<? extends Result<AgreementModel>>, AgreementModel, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f16959a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ AgreementModel f16960b;

        public h(p9.d<? super h> dVar) {
            super(3, dVar);
        }

        @Override // x9.q
        public final Object i(r0.b<? extends Result<AgreementModel>> bVar, AgreementModel agreementModel, p9.d<? super l9.m> dVar) {
            h hVar = MobileAccidentAgreementFragment.this.new h(dVar);
            hVar.f16959a = bVar;
            hVar.f16960b = agreementModel;
            return hVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            AppCompatTextView appCompatTextView;
            Spanned spannedFromHtml;
            CheckConfirmationResponseObject checkConfirmationResponseObject;
            DocumentMap documentMap;
            w.F(obj);
            r0.b bVar = this.f16959a;
            AgreementModel agreementModel = this.f16960b;
            boolean z10 = true;
            boolean z11 = bVar instanceof d1 ? true : bVar instanceof k;
            MobileAccidentAgreementFragment mobileAccidentAgreementFragment = MobileAccidentAgreementFragment.this;
            if (z11) {
                v.e eVar = mobileAccidentAgreementFragment.f16949d;
                if (eVar != null) {
                    eVar.show();
                }
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success agreement ***", new Object[0]);
                v.e eVar2 = mobileAccidentAgreementFragment.f16949d;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                AgreementData agreementData = agreementModel.getAgreementData();
                String document = (agreementData == null || (checkConfirmationResponseObject = agreementData.getCheckConfirmationResponseObject()) == null || (documentMap = checkConfirmationResponseObject.getDocumentMap()) == null) ? null : documentMap.getDocument();
                if (document != null && document.length() != 0) {
                    z10 = false;
                }
                if (!z10) {
                    mobileAccidentAgreementFragment.E().f.f15873a.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f17072g.f15878a.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f17070d.setVisibility(0);
                    if (Build.VERSION.SDK_INT >= 24) {
                        mobileAccidentAgreementFragment.E().f17073h.setMovementMethod(new ScrollingMovementMethod());
                        mobileAccidentAgreementFragment.E().f17073h.setMovementMethod(LinkMovementMethod.getInstance());
                        appCompatTextView = mobileAccidentAgreementFragment.E().f17073h;
                        spannedFromHtml = Html.fromHtml(document, 63);
                    } else {
                        mobileAccidentAgreementFragment.E().f17073h.setMovementMethod(LinkMovementMethod.getInstance());
                        appCompatTextView = mobileAccidentAgreementFragment.E().f17073h;
                        spannedFromHtml = Html.fromHtml(document);
                    }
                    appCompatTextView.setText(spannedFromHtml);
                }
            } else if (bVar instanceof r0.i) {
                Throwable th2 = ((r0.i) bVar).f13749b;
                v.e eVar3 = mobileAccidentAgreementFragment.f16949d;
                if (eVar3 != null) {
                    eVar3.dismiss();
                }
                if (th2 instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    mobileAccidentAgreementFragment.startActivity(intentB);
                    FragmentActivity activity = mobileAccidentAgreementFragment.getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else if (th2 instanceof NetworkErrorException) {
                    mobileAccidentAgreementFragment.E().f17070d.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f17072g.f15878a.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f.f15873a.setVisibility(0);
                    mobileAccidentAgreementFragment.E().f.f15874b.setOnClickListener(new zd.d(15, mobileAccidentAgreementFragment));
                } else if (th2 instanceof ServiceErrorExceptionWithMessage) {
                    String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
                    mobileAccidentAgreementFragment.E().f17070d.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f.f15873a.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f17072g.f15878a.setVisibility(0);
                    if (errorMessage != null && errorMessage.length() != 0) {
                        z10 = false;
                    }
                    if (!z10) {
                        mobileAccidentAgreementFragment.E().f17072g.f15880c.setText(errorMessage);
                    }
                } else {
                    mobileAccidentAgreementFragment.E().f17070d.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f.f15873a.setVisibility(8);
                    mobileAccidentAgreementFragment.E().f17072g.f15878a.setVisibility(0);
                }
            }
            return l9.m.f9594a;
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements l<r0.q<yg.d, yg.c>, yg.d> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f16962a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f16963b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16964c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f16962a = fragment;
            this.f16963b = dVar;
            this.f16964c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [r0.z, yg.d] */
        @Override // x9.l
        public final yg.d invoke(r0.q<yg.d, yg.c> qVar) {
            r0.q<yg.d, yg.c> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f16963b);
            Fragment fragment = this.f16962a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f16964c, clsQ, yg.c.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class j extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f16965a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f16966b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f16967c;

        public j(da.d dVar, i iVar, da.d dVar2) {
            this.f16965a = dVar;
            this.f16966b = iVar;
            this.f16967c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f16965a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.a(this), kotlin.jvm.internal.w.a(yg.c.class), this.f16966b);
        }
    }

    public MobileAccidentAgreementFragment() {
        super(R.layout.fragment_agreement);
        this.f16946a = d0.C(this, b.f16951a);
        da.d dVarA = kotlin.jvm.internal.w.a(yg.d.class);
        this.f16947b = new j(dVarA, new i(this, dVarA, dVarA), dVarA).t(this, f16945e[1]);
    }

    public final FragmentAgreementBinding E() {
        return (FragmentAgreementBinding) this.f16946a.a(this, f16945e[0]);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((yg.d) this.f16947b.getValue(), a.f16950a);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        l9.e eVar = this.f16947b;
        B((yg.d) eVar.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment.c
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((yg.c) obj).f19702b;
            }
        }, new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment.d
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((yg.c) obj).f19704d;
            }
        }, D(null), new e(null));
        B((yg.d) eVar.getValue(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment.f
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((yg.c) obj).f19701a;
            }
        }, new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.agreement.MobileAccidentAgreementFragment.g
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((yg.c) obj).f19703c;
            }
        }, D(null), new h(null));
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        this.f16948c = context;
        if (context != null) {
            FragmentActivity activity = getActivity();
            Object systemService = activity != null ? activity.getSystemService("layout_inflater") : null;
            kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
            View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.progress_dialog, (ViewGroup) null);
            kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layout.progress_dialog, null)");
            Context context2 = this.f16948c;
            kotlin.jvm.internal.h.c(context2);
            v.e eVar = new v.e(context2);
            this.f16949d = eVar;
            u.n(eVar, viewInflate);
            v.e eVar2 = this.f16949d;
            if (eVar2 != null) {
                eVar2.b(false);
            }
        }
        E().f17068b.setOnClickListener(new zd.a(11, this));
    }
}
