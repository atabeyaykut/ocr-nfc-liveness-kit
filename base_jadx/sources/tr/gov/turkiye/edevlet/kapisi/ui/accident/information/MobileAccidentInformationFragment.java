package tr.gov.turkiye.edevlet.kapisi.ui.accident.information;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import androidx.core.content.ContextCompat;
import androidx.core.widget.NestedScrollView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.navigation.fragment.FragmentKt;
import c5.v;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import java.io.File;
import java.util.ArrayList;
import ke.d;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import nc.a0;
import org.jmrtd.lds.ImageInfo;
import r0.c1;
import r0.d1;
import r0.e1;
import r0.p0;
import r0.q;
import r0.q0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.NetworkErrorException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.Result;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.DescriptionSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.LocationSaveModel;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.PhotoSaveModel;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.FragmentInformationBinding;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui.ImageItemUIController;
import x9.p;
import yd.a;

@Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationFragment;", "Lee/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/ui/ImageItemUIController$a;", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class MobileAccidentInformationFragment extends ee.a implements ImageItemUIController.a {

    /* renamed from: v, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f17275v = {androidx.room.util.a.b(MobileAccidentInformationFragment.class, "mInformationBinding", "getMInformationBinding()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;"), androidx.room.util.a.b(MobileAccidentInformationFragment.class, "viewModel", "getViewModel()Ltr/gov/turkiye/edevlet/kapisi/ui/accident/information/MobileAccidentInformationViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f17276a;

    /* renamed from: b, reason: collision with root package name */
    public final l9.e f17277b;

    /* renamed from: c, reason: collision with root package name */
    public ImageItemUIController f17278c;

    /* renamed from: d, reason: collision with root package name */
    public v.e f17279d;

    /* renamed from: e, reason: collision with root package name */
    public v.e f17280e;
    public Context f;

    /* renamed from: g, reason: collision with root package name */
    public final ArrayList f17281g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f17282h;

    /* renamed from: j, reason: collision with root package name */
    public ArrayList f17283j;

    /* renamed from: k, reason: collision with root package name */
    public ArrayList f17284k;

    /* renamed from: l, reason: collision with root package name */
    public String f17285l;

    /* renamed from: m, reason: collision with root package name */
    public String f17286m;

    /* renamed from: n, reason: collision with root package name */
    public String f17287n;

    /* renamed from: p, reason: collision with root package name */
    public String f17288p;

    /* renamed from: q, reason: collision with root package name */
    public String f17289q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f17290r;

    /* renamed from: s, reason: collision with root package name */
    public File f17291s;

    /* renamed from: t, reason: collision with root package name */
    public int f17292t;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<hh.f, l9.m> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(hh.f fVar) {
            String str;
            v.e eVar;
            hh.f state = fVar;
            kotlin.jvm.internal.h.f(state, "state");
            String str2 = state.f7147h;
            int r12 = str2.hashCode();
            if (r12 == -390821313) {
                str = "saveDescription";
            } else {
                if (r12 != 167060583) {
                    if (r12 == 1836644434 && str2.equals("saveLocation")) {
                        r0.b<Result<LocationSaveModel>> bVar = state.f7143c;
                        boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
                        MobileAccidentInformationFragment mobileAccidentInformationFragment = MobileAccidentInformationFragment.this;
                        if (z10) {
                            yd.a.f19652a.c("Loading location", new Object[0]);
                            v.e eVar2 = mobileAccidentInformationFragment.f17279d;
                            if (((eVar2 == null || eVar2.isShowing()) ? false : true) && (eVar = mobileAccidentInformationFragment.f17279d) != null) {
                                eVar.show();
                            }
                        } else if (bVar instanceof c1) {
                            yd.a.f19652a.c("Success location", new Object[0]);
                            m<Object>[] mVarArr = MobileAccidentInformationFragment.f17275v;
                            mobileAccidentInformationFragment.G().d(String.valueOf(mobileAccidentInformationFragment.F().f17143d.getText()));
                        } else if (bVar instanceof r0.i) {
                            yd.a.f19652a.c("Fail location", new Object[0]);
                            MobileAccidentInformationFragment.E(mobileAccidentInformationFragment, ((r0.i) bVar).f13749b);
                        }
                    }
                    return l9.m.f9594a;
                }
                str = "saveMedia";
            }
            str2.equals(str);
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class b extends kotlin.jvm.internal.g implements x9.l<View, FragmentInformationBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f17294a = new b();

        public b() {
            super(1, FragmentInformationBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/FragmentInformationBinding;", 0);
        }

        @Override // x9.l
        public final FragmentInformationBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentInformationBinding.bind(p02);
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment$onActivityResult$1", f = "MobileAccidentInformationFragment.kt", l = {185}, m = "invokeSuspend")
    public static final class c extends r9.i implements p<a0, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public MobileAccidentInformationFragment f17295a;

        /* renamed from: b, reason: collision with root package name */
        public int f17296b;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ Uri f17298d;

        public static final class a extends kotlin.jvm.internal.j implements x9.l<x8.a, l9.m> {

            /* renamed from: a, reason: collision with root package name */
            public static final a f17299a = new a();

            public a() {
                super(1);
            }

            @Override // x9.l
            public final l9.m invoke(x8.a aVar) {
                x8.a compress = aVar;
                kotlin.jvm.internal.h.f(compress, "$this$compress");
                compress.f19185a.add(new x8.c(10, 10));
                return l9.m.f9594a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Uri uri, p9.d<? super c> dVar) {
            super(2, dVar);
            this.f17298d = uri;
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            return MobileAccidentInformationFragment.this.new c(this.f17298d, dVar);
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(a0 a0Var, p9.d<? super l9.m> dVar) {
            return ((c) create(a0Var, dVar)).invokeSuspend(l9.m.f9594a);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x006a  */
        @Override // r9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r14) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 292
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment.c.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<Throwable, l9.m> {
        public d() {
            super(1);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00f8  */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0183 A[PHI: r15
          0x0183: PHI (r15v13 v.e) = (r15v12 v.e), (r15v18 v.e) binds: [B:75:0x0181, B:70:0x0176] A[DONT_GENERATE, DONT_INLINE]] */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(java.lang.Throwable r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instructions count: 407
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment.d.invoke(java.lang.Object):java.lang.Object");
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment$onCreate$2", f = "MobileAccidentInformationFragment.kt", l = {}, m = "invokeSuspend")
    public static final class f extends r9.i implements p<r0.b<? extends Result<DescriptionSaveModel>>, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ Object f17302a;

        public f(p9.d<? super f> dVar) {
            super(2, dVar);
        }

        @Override // r9.a
        public final p9.d<l9.m> create(Object obj, p9.d<?> dVar) {
            f fVar = MobileAccidentInformationFragment.this.new f(dVar);
            fVar.f17302a = obj;
            return fVar;
        }

        @Override // x9.p
        /* renamed from: invoke */
        public final Object mo7invoke(r0.b<? extends Result<DescriptionSaveModel>> bVar, p9.d<? super l9.m> dVar) {
            return ((f) create(bVar, dVar)).invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            w.F(obj);
            r0.b bVar = (r0.b) this.f17302a;
            if (bVar instanceof d1 ? true : bVar instanceof r0.k) {
                yd.a.f19652a.c("Loading description vehicle ***", new Object[0]);
            } else if (bVar instanceof c1) {
                yd.a.f19652a.c("Success description ***", new Object[0]);
                MobileAccidentInformationFragment mobileAccidentInformationFragment = MobileAccidentInformationFragment.this;
                v.e eVar = mobileAccidentInformationFragment.f17279d;
                if (eVar != null) {
                    eVar.dismiss();
                }
                if (mobileAccidentInformationFragment.f17290r) {
                    mobileAccidentInformationFragment.f17290r = false;
                    FragmentKt.findNavController(mobileAccidentInformationFragment).navigate(R.id.mktDashPointFragment);
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error save description ***", new Object[0]);
            }
            return l9.m.f9594a;
        }
    }

    public /* synthetic */ class g extends r {

        /* renamed from: a, reason: collision with root package name */
        public static final g f17304a = new g();

        public g() {
            super(hh.f.class, "photoSaveState", "getPhotoSaveState()Lcom/airbnb/mvrx/Async;");
        }

        @Override // kotlin.jvm.internal.r, da.l
        public final Object get(Object obj) {
            return ((hh.f) obj).f7141a;
        }
    }

    public /* synthetic */ class h extends r {

        /* renamed from: a, reason: collision with root package name */
        public static final h f17305a = new h();

        public h() {
            super(hh.f.class, "photoSaveData", "getPhotoSaveData()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/PhotoSaveModel;");
        }

        @Override // kotlin.jvm.internal.r, da.l
        public final Object get(Object obj) {
            return ((hh.f) obj).f7144d;
        }
    }

    public /* synthetic */ class i extends r {

        /* renamed from: a, reason: collision with root package name */
        public static final i f17306a = new i();

        public i() {
            super(hh.f.class, "uploadedMediaIndex", "getUploadedMediaIndex()Ljava/lang/Integer;");
        }

        @Override // kotlin.jvm.internal.r, da.l
        public final Object get(Object obj) {
            return ((hh.f) obj).f7146g;
        }
    }

    @r9.e(c = "tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment$onCreate$6", f = "MobileAccidentInformationFragment.kt", l = {}, m = "invokeSuspend")
    public static final class j extends r9.i implements x9.r<r0.b<? extends Result<PhotoSaveModel>>, PhotoSaveModel, Integer, p9.d<? super l9.m>, Object> {

        /* renamed from: a, reason: collision with root package name */
        public /* synthetic */ r0.b f17307a;

        /* renamed from: b, reason: collision with root package name */
        public /* synthetic */ Integer f17308b;

        public j(p9.d<? super j> dVar) {
            super(4, dVar);
        }

        @Override // x9.r
        public final Object invoke(r0.b<? extends Result<PhotoSaveModel>> bVar, PhotoSaveModel photoSaveModel, Integer num, p9.d<? super l9.m> dVar) {
            j jVar = MobileAccidentInformationFragment.this.new j(dVar);
            jVar.f17307a = bVar;
            jVar.f17308b = num;
            return jVar.invokeSuspend(l9.m.f9594a);
        }

        @Override // r9.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            v.e eVar;
            w.F(obj);
            r0.b bVar = this.f17307a;
            Integer num = this.f17308b;
            boolean z10 = bVar instanceof d1 ? true : bVar instanceof r0.k;
            MobileAccidentInformationFragment mobileAccidentInformationFragment = MobileAccidentInformationFragment.this;
            if (z10) {
                if (mobileAccidentInformationFragment.f17290r && (eVar = mobileAccidentInformationFragment.f17279d) != null) {
                    eVar.show();
                }
                yd.a.f19652a.c("Loading media", new Object[0]);
            } else if (bVar instanceof c1) {
                a.C0306a c0306a = yd.a.f19652a;
                c0306a.c("success media", new Object[0]);
                if (num != null && num.intValue() < mobileAccidentInformationFragment.f17284k.size()) {
                    mobileAccidentInformationFragment.f17283j.add((hh.i) mobileAccidentInformationFragment.f17284k.get(num.intValue()));
                    mobileAccidentInformationFragment.f17284k.remove(num.intValue());
                    c0306a.c("not uploaded photos " + mobileAccidentInformationFragment.f17284k.size(), new Object[0]);
                    if (!mobileAccidentInformationFragment.f17284k.isEmpty()) {
                        mobileAccidentInformationFragment.f17292t = 0;
                        mobileAccidentInformationFragment.G().f((hh.i) mobileAccidentInformationFragment.f17284k.get(mobileAccidentInformationFragment.f17292t), mobileAccidentInformationFragment.f17292t);
                    } else if (kotlin.jvm.internal.h.a(mobileAccidentInformationFragment.f17289q, "HOST")) {
                        hh.g gVarG = mobileAccidentInformationFragment.G();
                        String str = mobileAccidentInformationFragment.f17285l;
                        if (str == null) {
                            kotlin.jvm.internal.h.n("mLocationLatitude");
                            throw null;
                        }
                        String str2 = mobileAccidentInformationFragment.f17286m;
                        if (str2 == null) {
                            kotlin.jvm.internal.h.n("mLocationLongitude");
                            throw null;
                        }
                        gVarG.e(str, str2);
                    } else {
                        mobileAccidentInformationFragment.G().d(String.valueOf(mobileAccidentInformationFragment.F().f17143d.getText()));
                    }
                }
            } else if (bVar instanceof r0.i) {
                yd.a.f19652a.c("Error Media", new Object[0]);
                v.e eVar2 = mobileAccidentInformationFragment.f17279d;
                if (eVar2 != null) {
                    eVar2.dismiss();
                }
                MobileAccidentInformationFragment.E(mobileAccidentInformationFragment, ((r0.i) bVar).f13749b);
            }
            return l9.m.f9594a;
        }
    }

    public static final class k extends kotlin.jvm.internal.j implements x9.l<q<hh.g, hh.f>, hh.g> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f17310a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f17311b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17312c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public k(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f17310a = fragment;
            this.f17311b = dVar;
            this.f17312c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [hh.g, r0.z] */
        @Override // x9.l
        public final hh.g invoke(q<hh.g, hh.f> qVar) {
            q<hh.g, hh.f> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f17311b);
            Fragment fragment = this.f17310a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f17312c, clsQ, hh.f.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class l extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f17313a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ x9.l f17314b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f17315c;

        public l(da.d dVar, k kVar, da.d dVar2) {
            this.f17313a = dVar;
            this.f17314b = kVar;
            this.f17315c = dVar2;
        }

        public final l9.e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f17313a, new tr.gov.turkiye.edevlet.kapisi.ui.accident.information.a(this), kotlin.jvm.internal.w.a(hh.f.class), this.f17314b);
        }
    }

    public MobileAccidentInformationFragment() {
        super(R.layout.fragment_information);
        this.f17276a = d0.C(this, b.f17294a);
        da.d dVarA = kotlin.jvm.internal.w.a(hh.g.class);
        this.f17277b = new l(dVarA, new k(this, dVarA, dVarA), dVarA).t(this, f17275v[1]);
        this.f17281g = new ArrayList();
        Uri EMPTY = Uri.EMPTY;
        kotlin.jvm.internal.h.e(EMPTY, "EMPTY");
        this.f17282h = b8.f.Y(new hh.i(" ", EMPTY, " ", true, " "));
        this.f17283j = new ArrayList();
        this.f17284k = new ArrayList();
        new ArrayList();
    }

    public static final void E(MobileAccidentInformationFragment mobileAccidentInformationFragment, Throwable th2) {
        v.e eVar = mobileAccidentInformationFragment.f17279d;
        if (eVar != null) {
            eVar.dismiss();
        }
        if (th2 instanceof LoginException) {
            Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
            if (Build.VERSION.SDK_INT >= 34) {
                intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
            }
            mobileAccidentInformationFragment.startActivity(intentB);
            FragmentActivity activity = mobileAccidentInformationFragment.getActivity();
            if (activity != null) {
                activity.finish();
                return;
            }
            return;
        }
        if (th2 instanceof NetworkErrorException) {
            mobileAccidentInformationFragment.F().f17144e.setVisibility(8);
            mobileAccidentInformationFragment.F().f17148j.f15878a.setVisibility(8);
            mobileAccidentInformationFragment.F().f17146h.f15873a.setVisibility(0);
            mobileAccidentInformationFragment.F().f17146h.f15874b.setOnClickListener(new hh.b(0));
            return;
        }
        if (!(th2 instanceof ServiceErrorExceptionWithMessage)) {
            mobileAccidentInformationFragment.F().f17144e.setVisibility(8);
            mobileAccidentInformationFragment.F().f17146h.f15873a.setVisibility(8);
            mobileAccidentInformationFragment.F().f17148j.f15878a.setVisibility(0);
            return;
        }
        String errorMessage = ((ServiceErrorExceptionWithMessage) th2).getErrorMessage();
        mobileAccidentInformationFragment.F().f17144e.setVisibility(8);
        mobileAccidentInformationFragment.F().f17146h.f15873a.setVisibility(8);
        mobileAccidentInformationFragment.F().f17148j.f15878a.setVisibility(0);
        if (errorMessage == null || errorMessage.length() == 0) {
            return;
        }
        mobileAccidentInformationFragment.F().f17148j.f15880c.setText(errorMessage);
    }

    public final FragmentInformationBinding F() {
        return (FragmentInformationBinding) this.f17276a.a(this, f17275v[0]);
    }

    public final hh.g G() {
        return (hh.g) this.f17277b.getValue();
    }

    public final void H(int r52) {
        Context context = this.f;
        if (context != null) {
            int r12 = ke.d.f8929a;
            NestedScrollView nestedScrollView = F().f;
            kotlin.jvm.internal.h.e(nestedScrollView, "mInformationBinding.mktA…nformationParentContainer");
            ke.d dVarE = d.a.e(nestedScrollView, r52, null, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.info_toast));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui.ImageItemUIController.a
    public final void f() {
        n2.a aVar = new n2.a(this);
        aVar.f10539b = o2.a.GALLERY;
        aVar.f10540c = new String[]{"image/png", "image/jpg", ImageInfo.JPEG_MIME_TYPE};
        aVar.a(2404);
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u(G(), new a());
    }

    @Override // tr.gov.turkiye.edevlet.kapisi.ui.accident.information.ui.ImageItemUIController.a
    public final void m(hh.i service) {
        kotlin.jvm.internal.h.f(service, "service");
        ArrayList arrayList = this.f17282h;
        arrayList.remove(service);
        this.f17281g.remove(service);
        Uri EMPTY = Uri.EMPTY;
        kotlin.jvm.internal.h.e(EMPTY, "EMPTY");
        hh.i iVar = new hh.i(" ", EMPTY, " ", true, " ");
        if (!arrayList.contains(iVar)) {
            arrayList.add(iVar);
        }
        ImageItemUIController imageItemUIController = this.f17278c;
        if (imageItemUIController != null) {
            imageItemUIController.setData(arrayList, null);
        } else {
            kotlin.jvm.internal.h.n("mServiceListController");
            throw null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onActivityResult(int r32, int r42, Intent intent) {
        super.onActivityResult(r32, r42, intent);
        if (r42 != -1) {
            if (r42 != 64) {
                yd.a.f19652a.c("task canncelled", new Object[0]);
            }
        } else {
            v.e eVar = this.f17280e;
            if (eVar != null) {
                eVar.show();
            }
            Uri data = intent != null ? intent.getData() : null;
            kotlin.jvm.internal.h.c(data);
            v.C(LifecycleOwnerKt.getLifecycleScope(this), null, 0, new c(data, null), 3).o(new d());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        LifecycleOwner viewLifecycleOwner;
        super.onCreate(bundle);
        C(G(), new r() { // from class: tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment.e
            @Override // kotlin.jvm.internal.r, da.l
            public final Object get(Object obj) {
                return ((hh.f) obj).f7142b;
            }
        }, D(null), new f(null));
        hh.g onEach = G();
        g prop1 = g.f17304a;
        h prop2 = h.f17305a;
        i prop3 = i.f17306a;
        e1 e1VarD = D(null);
        j jVar = new j(null);
        kotlin.jvm.internal.h.f(onEach, "$this$onEach");
        kotlin.jvm.internal.h.f(prop1, "prop1");
        kotlin.jvm.internal.h.f(prop2, "prop2");
        kotlin.jvm.internal.h.f(prop3, "prop3");
        try {
            viewLifecycleOwner = getViewLifecycleOwner();
        } catch (IllegalStateException unused) {
        }
        if (viewLifecycleOwner == null) {
            viewLifecycleOwner = this;
        }
        onEach.b(b8.f.z(new p0(onEach.f13884d.a(), prop1, prop2, prop3)), viewLifecycleOwner, e1VarD.a(prop1, prop2, prop3), new q0(jVar, null));
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x00b4 A[PHI: r1
      0x00b4: PHI (r1v17 androidx.appcompat.widget.AppCompatTextView) = (r1v16 androidx.appcompat.widget.AppCompatTextView), (r1v21 androidx.appcompat.widget.AppCompatTextView) binds: [B:27:0x00ad, B:24:0x009c] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onViewCreated(android.view.View r5, android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 307
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.information.MobileAccidentInformationFragment.onViewCreated(android.view.View, android.os.Bundle):void");
    }
}
