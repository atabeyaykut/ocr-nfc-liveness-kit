package ie;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.FragmentNfcScanDialogBinding;

/* loaded from: classes3.dex */
public final class a extends BottomSheetDialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public final InterfaceC0129a f7427a;

    /* renamed from: ie.a$a, reason: collision with other inner class name */
    public interface InterfaceC0129a {
        void onDismiss();
    }

    public a(xh.c cVar) {
        this.f7427a = cVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onCancel(dialog);
        this.f7427a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        h.f(inflater, "inflater");
        FragmentNfcScanDialogBinding fragmentNfcScanDialogBindingBind = FragmentNfcScanDialogBinding.bind(inflater.inflate(R.layout.fragment_nfc_scan_dialog, viewGroup, false));
        h.e(fragmentNfcScanDialogBindingBind, "inflate(\n            inf…ontainer, false\n        )");
        ConstraintLayout constraintLayout = fragmentNfcScanDialogBindingBind.f15863a;
        h.e(constraintLayout, "binding.root");
        return constraintLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onDismiss(dialog);
        this.f7427a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.setCanceledOnTouchOutside(false);
        }
    }
}
