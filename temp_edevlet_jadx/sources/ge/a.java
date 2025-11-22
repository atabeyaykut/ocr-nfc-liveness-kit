package ge;

import android.graphics.drawable.Drawable;
import android.widget.TextView;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class a {
    public static final void a(TextView textView, Drawable drawable) {
        Drawable[] compoundDrawablesRelative = textView.getCompoundDrawablesRelative();
        h.e(compoundDrawablesRelative, "compoundDrawablesRelative");
        Drawable drawable2 = compoundDrawablesRelative[0];
        Drawable[] compoundDrawablesRelative2 = textView.getCompoundDrawablesRelative();
        h.e(compoundDrawablesRelative2, "compoundDrawablesRelative");
        Drawable drawable3 = compoundDrawablesRelative2[1];
        Drawable[] compoundDrawablesRelative3 = textView.getCompoundDrawablesRelative();
        h.e(compoundDrawablesRelative3, "compoundDrawablesRelative");
        textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable2, drawable3, drawable, compoundDrawablesRelative3[3]);
    }
}
