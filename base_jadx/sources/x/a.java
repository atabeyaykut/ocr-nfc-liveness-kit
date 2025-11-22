package x;

import androidx.annotation.RestrictTo;
import b0.d;
import com.afollestad.materialdialogs.internal.button.DialogActionButtonLayout;

/* loaded from: classes.dex */
public final class a {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final boolean a(DialogActionButtonLayout dialogActionButtonLayout) {
        if (dialogActionButtonLayout == null) {
            return false;
        }
        return ((dialogActionButtonLayout.getVisibleButtons().length == 0) ^ true) || d.c(dialogActionButtonLayout.getCheckBoxPrompt());
    }
}
