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
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.FragmentNfcWarningDialogBinding;

/* loaded from: classes3.dex */
public final class e extends BottomSheetDialogFragment {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f7434c = 0;

    /* renamed from: a, reason: collision with root package name */
    public final a f7435a;

    /* renamed from: b, reason: collision with root package name */
    public FragmentNfcWarningDialogBinding f7436b;

    public interface a {
        void onDismiss();
    }

    public e(a aVar) {
        this.f7435a = aVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onCancel(dialog);
        this.f7435a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater inflater, ViewGroup viewGroup, Bundle bundle) {
        h.f(inflater, "inflater");
        FragmentNfcWarningDialogBinding fragmentNfcWarningDialogBindingBind = FragmentNfcWarningDialogBinding.bind(inflater.inflate(R.layout.fragment_nfc_warning_dialog, viewGroup, false));
        h.e(fragmentNfcWarningDialogBindingBind, "inflate(\n            inf…ontainer, false\n        )");
        this.f7436b = fragmentNfcWarningDialogBindingBind;
        ConstraintLayout constraintLayout = fragmentNfcWarningDialogBindingBind.f15867a;
        h.e(constraintLayout, "binding.root");
        return constraintLayout;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialog) {
        h.f(dialog, "dialog");
        super.onDismiss(dialog);
        this.f7435a.onDismiss();
    }

    @Override // androidx.fragment.app.Fragment
    public final void onViewCreated(View view, Bundle bundle) {
        h.f(view, "view");
        FragmentNfcWarningDialogBinding fragmentNfcWarningDialogBinding = this.f7436b;
        if (fragmentNfcWarningDialogBinding == null) {
            h.n("binding");
            throw null;
        }
        fragmentNfcWarningDialogBinding.f15869c.setOnClickListener(new d(0, this));
        FragmentNfcWarningDialogBinding fragmentNfcWarningDialogBinding2 = this.f7436b;
        if (fragmentNfcWarningDialogBinding2 == null) {
            h.n("binding");
            throw null;
        }
        fragmentNfcWarningDialogBinding2.f15868b.setOnClickListener(new zd.e(1, this));
    }
}
