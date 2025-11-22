package tr.gov.turkiye.edevlet.kapisi.barcode.manual;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import c5.w;
import com.google.android.gms.internal.clearcut.d0;
import da.m;
import gf.b;
import kotlin.Metadata;
import kotlin.jvm.internal.g;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.barcode.databinding.FragmentManualBarcodeBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.binding.FragmentViewBindingDelegate;
import x9.l;
import zd.d;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/barcode/manual/ManualInputBarcodeFragment;", "Lee/a;", "<init>", "()V", "ui-barcode_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class ManualInputBarcodeFragment extends ee.a {

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ m<Object>[] f15814e = {androidx.room.util.a.b(ManualInputBarcodeFragment.class, "manualBarcodeBinding", "getManualBarcodeBinding()Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;")};

    /* renamed from: a, reason: collision with root package name */
    public boolean f15815a;

    /* renamed from: b, reason: collision with root package name */
    public b f15816b;

    /* renamed from: c, reason: collision with root package name */
    public final FragmentViewBindingDelegate f15817c;

    /* renamed from: d, reason: collision with root package name */
    public Context f15818d;

    public /* synthetic */ class a extends g implements l<View, FragmentManualBarcodeBinding> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f15819a = new a();

        public a() {
            super(1, FragmentManualBarcodeBinding.class, "bind", "bind(Landroid/view/View;)Ltr/gov/turkiye/edevlet/kapisi/barcode/databinding/FragmentManualBarcodeBinding;", 0);
        }

        @Override // x9.l
        public final FragmentManualBarcodeBinding invoke(View view) {
            View p02 = view;
            h.f(p02, "p0");
            return FragmentManualBarcodeBinding.bind(p02);
        }
    }

    public ManualInputBarcodeFragment() {
        super(R.layout.fragment_manual_barcode);
        this.f15817c = d0.C(this, a.f15819a);
    }

    public final FragmentManualBarcodeBinding E() {
        return (FragmentManualBarcodeBinding) this.f15817c.a(this, f15814e[0]);
    }

    @Override // r0.w
    public final void invalidate() {
    }

    @Override // androidx.fragment.app.Fragment
    public final void onAttach(Context context) {
        h.f(context, "context");
        w.v(this);
        super.onAttach(context);
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        super.onViewCreated(view, bundle);
        this.f15818d = view.getContext();
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f15815a = arguments.getBoolean("isFromLogin");
        }
        E().f15800b.setOnClickListener(new d(1, this));
    }
}
