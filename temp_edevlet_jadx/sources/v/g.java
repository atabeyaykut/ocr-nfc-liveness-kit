package v;

import android.R;
import android.content.Context;
import android.graphics.Color;
import androidx.annotation.CheckResult;
import kotlin.jvm.internal.h;

/* loaded from: classes.dex */
public final class g {
    @CheckResult
    public static final boolean a(Context context) {
        h.g(context, "context");
        if (b0.c.c(context, null, Integer.valueOf(R.attr.textColorPrimary), null, 10) != 0) {
            if (1 - (((Color.blue(r9) * 0.114d) + ((Color.green(r9) * 0.587d) + (Color.red(r9) * 0.299d))) / 255) >= 0.5d) {
                return true;
            }
        }
        return false;
    }
}
