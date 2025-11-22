package ie;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.FragmentNfcSupportDialogBinding;

/* loaded from: classes3.dex */
public final class c extends BottomSheetDialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f7429c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final a f7430a;

    /* renamed from: b, reason: collision with root package name */
    public FragmentNfcSupportDialogBinding f7431b;

    public interface a {
        void onDismiss();
    }

    public c(a aVar) {
        this.f7430a = aVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onCancel(dialog);
        this.f7430a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        h.f(inflater, "inflater");
        FragmentNfcSupportDialogBinding fragmentNfcSupportDialogBindingBind = FragmentNfcSupportDialogBinding.bind(inflater.inflate(R.layout.fragment_nfc_support_dialog, viewGroup, false));
        h.e(fragmentNfcSupportDialogBindingBind, "inflate(\n            inf…ontainer, false\n        )");
        this.f7431b = fragmentNfcSupportDialogBindingBind;
        ConstraintLayout constraintLayout = fragmentNfcSupportDialogBindingBind.f15865a;
        h.e(constraintLayout, "binding.root");
        return constraintLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onDismiss(dialog);
        this.f7430a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        FragmentNfcSupportDialogBinding fragmentNfcSupportDialogBinding = this.f7431b;
        if (fragmentNfcSupportDialogBinding == null) {
            h.n("binding");
            throw null;
        }
        fragmentNfcSupportDialogBinding.f15866b.setOnClickListener(new zd.d(3, this));
    }
}
