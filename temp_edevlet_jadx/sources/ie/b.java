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
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.FragmentNfcSuccessDialogBinding;

/* loaded from: classes3.dex */
public final class b extends BottomSheetDialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public final a f7428a;

    public interface a {
        void onDismiss();
    }

    public b(xh.d dVar) {
        this.f7428a = dVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onCancel(dialog);
        this.f7428a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        h.f(inflater, "inflater");
        FragmentNfcSuccessDialogBinding fragmentNfcSuccessDialogBindingBind = FragmentNfcSuccessDialogBinding.bind(inflater.inflate(R.layout.fragment_nfc_success_dialog, viewGroup, false));
        h.e(fragmentNfcSuccessDialogBindingBind, "inflate(\n            inf…ontainer, false\n        )");
        ConstraintLayout constraintLayout = fragmentNfcSuccessDialogBindingBind.f15864a;
        h.e(constraintLayout, "binding.root");
        return constraintLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onDismiss(dialog);
        this.f7428a.onDismiss();
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
