package tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import be.h;
import be.i;
import be.k;
import c5.u;
import c5.v;
import com.google.android.gms.internal.clearcut.d0;
import com.google.android.material.textfield.TextInputLayout;
import da.m;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.j;
import kotlin.jvm.internal.w;
import l9.e;
import nc.a0;
import org.greenrobot.eventbus.ThreadMode;
import r0.q;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.FragmentManualDynamicFieldBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyLoginWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeData;
import tr.gov.turkiye.edevlet.kapisi.data.barcode.BarcodeVerifyFieldModel;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ErrorResult;
import tr.gov.turkiye.edevlet.kapisi.data.extension.LoginException;
import tr.gov.turkiye.edevlet.kapisi.data.extension.ServiceErrorExceptionWithMessage;
import x9.l;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0007¨\u0006\b"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldFragment;", "Lee/a;", "Lme/c;", NotificationCompat.CATEGORY_EVENT, "Ll9/m;", "onEvent", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ManualDynamicFieldFragment extends ee.a {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f15820g = {androidx.room.util.a.b(ManualDynamicFieldFragment.class, "mDynamicFieldFragmentBinding", "getMDynamicFieldFragmentBinding()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;"), androidx.room.util.a.b(ManualDynamicFieldFragment.class, "mDynamicFieldViewModel", "getMDynamicFieldViewModel()Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/dynamic/ManualDynamicFieldViewModel;")};

    /* renamed from: a, reason: collision with root package name */
    public final FragmentViewBindingDelegate f15821a;

    /* renamed from: b, reason: collision with root package name */
    public final e f15822b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f15823c;

    /* renamed from: d, reason: collision with root package name */
    public String f15824d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f15825e;
    public Context f;

    public static final class a extends j implements l<h, l9.m> {
        public a() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0031  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final l9.m invoke(be.h r13) {
            /*
                Method dump skipped, instructions count: 456
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldFragment.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public /* synthetic */ class b extends g implements l<View, FragmentManualDynamicFieldBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f15827a = new b();

        public b() {
            super(1, FragmentManualDynamicFieldBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualDynamicFieldBinding;", 0);
        }

        @Override // x9.l
        public final FragmentManualDynamicFieldBinding invoke(View view) {
            View p02 = view;
            kotlin.jvm.internal.h.f(p02, "p0");
            return FragmentManualDynamicFieldBinding.bind(p02);
        }
    }

    public static final class c extends j implements l<q<be.j, h>, be.j> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Fragment f15828a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ da.d f15829b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f15830c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(Fragment fragment, da.d dVar, da.d dVar2) {
            super(1);
            this.f15828a = fragment;
            this.f15829b = dVar;
            this.f15830c = dVar2;
        }

        /* JADX WARN: Type inference failed for: r6v2, types: [be.j, r0.z] */
        @Override // x9.l
        public final be.j invoke(q<be.j, h> qVar) {
            q<be.j, h> stateFactory = qVar;
            kotlin.jvm.internal.h.f(stateFactory, "stateFactory");
            Class clsQ = d0.q(this.f15829b);
            Fragment fragment = this.f15828a;
            FragmentActivity fragmentActivityRequireActivity = fragment.requireActivity();
            kotlin.jvm.internal.h.e(fragmentActivityRequireActivity, "requireActivity()");
            return androidx.fragment.app.a.f(this.f15830c, clsQ, h.class, new r0.j(fragmentActivityRequireActivity, x5.a.c(fragment), fragment), stateFactory);
        }
    }

    public static final class d extends c6.a {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ da.d f15831a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f15832b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ da.d f15833c;

        public d(da.d dVar, c cVar, da.d dVar2) {
            this.f15831a = dVar;
            this.f15832b = cVar;
            this.f15833c = dVar2;
        }

        public final e t(Object obj, m property) {
            Fragment thisRef = (Fragment) obj;
            kotlin.jvm.internal.h.f(thisRef, "thisRef");
            kotlin.jvm.internal.h.f(property, "property");
            return d0.f3070e.a(thisRef, property, this.f15831a, new tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.a(this), w.a(h.class), this.f15832b);
        }
    }

    public ManualDynamicFieldFragment() {
        super(R.layout.fragment_manual_dynamic_field);
        this.f15821a = d0.C(this, b.f15827a);
        da.d dVarA = w.a(be.j.class);
        this.f15822b = new d(dVarA, new c(this, dVarA, dVarA), dVarA).t(this, f15820g[1]);
        this.f15823c = new ArrayList();
    }

    public final FragmentManualDynamicFieldBinding E() {
        return (FragmentManualDynamicFieldBinding) this.f15821a.a(this, f15820g[0]);
    }

    public final void F() {
        E().f15808e.f15873a.setVisibility(8);
        E().f.setVisibility(8);
        E().f15810h.f15878a.setVisibility(8);
        E().f15809g.setVisibility(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void G() {
        boolean z10;
        Boolean bool;
        ArrayList arrayList = this.f15823c;
        if (!arrayList.isEmpty()) {
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            String str = "";
            while (it.hasNext()) {
                i iVar = (i) it.next();
                String string = iVar.f1238b.getText().toString();
                BarcodeVerifyFieldModel barcodeVerifyFieldModel = iVar.f1239c;
                boolean zMatches = Pattern.matches(barcodeVerifyFieldModel.getFieldRegex(), string);
                TextInputLayout textInputLayout = iVar.f1237a;
                if (zMatches) {
                    str = str + (";" + barcodeVerifyFieldModel.getFieldQuery() + ':' + string);
                    textInputLayout.setError(null);
                    bool = Boolean.TRUE;
                } else {
                    textInputLayout.setError(barcodeVerifyFieldModel.getFieldRegexMessage());
                    bool = Boolean.FALSE;
                }
                arrayList2.add(bool);
            }
            Iterator it2 = arrayList2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z10 = true;
                    break;
                } else if (!((Boolean) it2.next()).booleanValue()) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                try {
                    ScrollView scrollView = E().f15809g;
                    kotlin.jvm.internal.h.e(scrollView, "mDynamicFieldFragmentBinding.svFormContainer");
                    d0.x(scrollView);
                } catch (Exception unused) {
                }
                E().f15808e.f15873a.setVisibility(8);
                E().f15810h.f15878a.setVisibility(8);
                E().f.setVisibility(0);
                StringBuilder sb2 = new StringBuilder("barkod:");
                String str2 = this.f15824d;
                if (str2 == null) {
                    kotlin.jvm.internal.h.n("mBarcodeNumber");
                    throw null;
                }
                l9.g[] gVarArr = {new l9.g("qrContent", androidx.camera.camera2.internal.c.h(sb2, str2, str))};
                Data.Builder builder = new Data.Builder();
                l9.g gVar = gVarArr[0];
                builder.put((String) gVar.f9582a, gVar.f9583b);
                Data dataBuild = builder.build();
                kotlin.jvm.internal.h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = (this.f15825e ? new OneTimeWorkRequest.Builder(BarcodeVerifyLoginWorker.class) : new OneTimeWorkRequest.Builder(BarcodeVerifyWorker.class)).setInputData(dataBuild).build();
                kotlin.jvm.internal.h.e(oneTimeWorkRequestBuild, "if (mFromLoginPage) {\n  …erData).build()\n        }");
                Context context = this.f;
                if (context != null) {
                    WorkManager.getInstance(context).enqueue(oneTimeWorkRequestBuild);
                } else {
                    kotlin.jvm.internal.h.n("mInflaterContext");
                    throw null;
                }
            }
        }
    }

    @Override // r0.w
    public final void invalidate() {
        x5.a.u((be.j) this.f15822b.getValue(), new a());
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        kotlin.jvm.internal.h.f(context, "context");
        c5.w.v(this);
        super.onAttach(context);
    }

    @qd.i(sticky = true, threadMode = ThreadMode.MAIN)
    public final void onEvent(me.c cVar) throws IllegalAccessException, IOException, IllegalArgumentException, InvocationTargetException {
        F();
        if (cVar != null) {
            if (cVar.f10382a) {
                String string = getString(R.string.filename_pdf);
                kotlin.jvm.internal.h.e(string, "getString(R.string.filename_pdf)");
                BarcodeData barcodeData = cVar.f10383b;
                String content = barcodeData != null ? barcodeData.getDocumentContent() : null;
                if (!(content == null || content.length() == 0)) {
                    Context context = this.f;
                    if (context == null) {
                        kotlin.jvm.internal.h.n("mInflaterContext");
                        throw null;
                    }
                    kotlin.jvm.internal.h.f(content, "content");
                    byte[] bArrA = je.a.a(content);
                    FileOutputStream fileOutputStreamOpenFileOutput = context.openFileOutput(string, 0);
                    try {
                        try {
                            fileOutputStreamOpenFileOutput.write(bArrA);
                            z = true;
                        } catch (Exception unused) {
                        }
                        l9.m mVar = l9.m.f9594a;
                        x5.a.f(fileOutputStreamOpenFileOutput, null);
                        if (z) {
                            Context context2 = this.f;
                            if (context2 == null) {
                                kotlin.jvm.internal.h.n("mInflaterContext");
                                throw null;
                            }
                            de.a.a(context2, string);
                        }
                    } finally {
                    }
                }
            } else {
                ErrorResult<Object> errorResult = cVar.f10384c;
                Throwable throwable = errorResult != null ? errorResult.getThrowable() : null;
                if (throwable instanceof LoginException) {
                    Intent intentB = android.support.v4.media.a.b("action.login.open", 32768);
                    if (Build.VERSION.SDK_INT >= 34) {
                        intentB.setPackage("tr.gov.turkiye.edevlet.kapisi");
                    }
                    startActivity(intentB);
                    FragmentActivity activity = getActivity();
                    if (activity != null) {
                        activity.finish();
                    }
                } else {
                    String errorMessage = throwable instanceof ServiceErrorExceptionWithMessage ? ((ServiceErrorExceptionWithMessage) throwable).getErrorMessage() : null;
                    FragmentActivity activity2 = getActivity();
                    Object systemService = activity2 != null ? activity2.getSystemService("layout_inflater") : null;
                    kotlin.jvm.internal.h.d(systemService, "null cannot be cast to non-null type android.view.LayoutInflater");
                    View viewInflate = ((LayoutInflater) systemService).inflate(R.layout.result_error_dialog, (ViewGroup) null);
                    kotlin.jvm.internal.h.e(viewInflate, "inflater.inflate(R.layou…esult_error_dialog, null)");
                    TextView textView = (TextView) viewInflate.findViewById(R.id.result_dialog_txt_content);
                    if (errorMessage == null || errorMessage.length() == 0) {
                        textView.setText(R.string.barcode_verify_common_error_message);
                    } else {
                        textView.setText(errorMessage);
                    }
                    Context context3 = this.f;
                    if (context3 == null) {
                        kotlin.jvm.internal.h.n("mInflaterContext");
                        throw null;
                    }
                    v.e eVar = new v.e(context3);
                    u.n(eVar, viewInflate);
                    eVar.show();
                    eVar.b(true);
                    v.e.e(eVar, Integer.valueOf(R.string.barcode_close_dialog), null, null, 6);
                    v.e.e(eVar, null, null, be.e.f1221a, 3);
                }
            }
        }
        qd.b.b().l(me.c.class);
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
        kotlin.jvm.internal.h.f(view, "view");
        super.onViewCreated(view, bundle);
        Context context = view.getContext();
        kotlin.jvm.internal.h.e(context, "view.context");
        this.f = context;
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f15825e = arguments.getBoolean("isFromLogin");
        }
        Bundle arguments2 = getArguments();
        this.f15824d = String.valueOf(arguments2 != null ? arguments2.getString("barcodeNumber") : null);
        boolean z10 = this.f15825e;
        e eVar = this.f15822b;
        if (z10) {
            be.j jVar = (be.j) eVar.getValue();
            String str = this.f15824d;
            if (str == null) {
                kotlin.jvm.internal.h.n("mBarcodeNumber");
                throw null;
            }
            jVar.getClass();
            k kVar = new k(jVar, str, null);
            a0 a0Var = jVar.f13883c;
            v.C(a0Var, null, 0, kVar, 3);
            v.D(a0Var, jVar.f1240h, new be.l(jVar, null));
        } else {
            be.j jVar2 = (be.j) eVar.getValue();
            String str2 = this.f15824d;
            if (str2 == null) {
                kotlin.jvm.internal.h.n("mBarcodeNumber");
                throw null;
            }
            jVar2.d(str2);
        }
        TextView textView = E().f15806c;
        String str3 = this.f15824d;
        if (str3 == null) {
            kotlin.jvm.internal.h.n("mBarcodeNumber");
            throw null;
        }
        textView.setText(str3);
        E().f15805b.setOnClickListener(new f(2, this));
    }
}
