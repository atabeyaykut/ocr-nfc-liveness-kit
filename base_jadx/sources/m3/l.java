package m3;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;

/* loaded from: classes.dex */
public class l extends DialogFragment {

    /* renamed from: a, reason: collision with root package name */
    public Dialog f9961a;

    /* renamed from: b, reason: collision with root package name */
    public DialogInterface.OnCancelListener f9962b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public AlertDialog f9963c;

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f9962b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public final Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f9961a;
        if (dialog != null) {
            return dialog;
        }
        setShowsDialog(false);
        if (this.f9963c == null) {
            Context context = getContext();
            r3.r.i(context);
            this.f9963c = new AlertDialog.Builder(context).create();
        }
        return this.f9963c;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
