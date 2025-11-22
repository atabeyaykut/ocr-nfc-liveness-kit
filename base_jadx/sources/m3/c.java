package m3;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class c extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public Dialog f9933a;

    /* renamed from: b, reason: collision with root package name */
    public DialogInterface.OnCancelListener f9934b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public AlertDialog f9935c;

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f9934b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f9933a;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f9935c == null) {
            Activity activity = getActivity();
            r3.r.i(activity);
            this.f9935c = new AlertDialog.Builder(activity).create();
        }
        return this.f9935c;
    }

    @Override // android.app.DialogFragment
    public final void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
