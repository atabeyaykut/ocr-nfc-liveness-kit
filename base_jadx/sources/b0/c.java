package b0;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.RestrictTo;
import androidx.core.content.ContextCompat;
import kotlin.jvm.internal.h;
import v.e;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class c {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static int a(View dimenPx, @DimenRes int r22) {
        h.g(dimenPx, "$this$dimenPx");
        Context context = dimenPx.getContext();
        h.b(context, "context");
        return context.getResources().getDimensionPixelSize(r22);
    }

    public static void b(TextView textView, Context context, Integer num) {
        int r32;
        h.g(context, "context");
        if (textView == null || num == null || num == null || (r32 = c(context, null, num, null, 10)) == 0) {
            return;
        }
        textView.setTextColor(r32);
    }

    public static int c(Context context, Integer num, Integer num2, x9.a aVar, int r6) {
        if ((r6 & 2) != 0) {
            num = null;
        }
        if ((r6 & 4) != 0) {
            num2 = null;
        }
        if ((r6 & 8) != 0) {
            aVar = null;
        }
        h.g(context, "context");
        if (num2 == null) {
            return ContextCompat.getColor(context, num != null ? num.intValue() : 0);
        }
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(new int[]{num2.intValue()});
        try {
            int color = typedArrayObtainStyledAttributes.getColor(0, 0);
            if (color == 0 && aVar != null) {
                color = ((Number) aVar.invoke()).intValue();
            }
            return color;
        } finally {
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    public static CharSequence d(e materialDialog, Integer num, Integer num2, int r52) throws Resources.NotFoundException {
        if ((r52 & 2) != 0) {
            num = null;
        }
        if ((r52 & 4) != 0) {
            num2 = null;
        }
        h.g(materialDialog, "materialDialog");
        Context context = materialDialog.f18183l;
        h.g(context, "context");
        int r32 = num != null ? num.intValue() : num2 != null ? num2.intValue() : 0;
        if (r32 == 0) {
            return null;
        }
        CharSequence text = context.getResources().getText(r32);
        h.b(text, "context.resources.getText(resourceId)");
        return text;
    }

    public static void e(View view, int r32, int r42, int r52, int r6, int r72) {
        if ((r72 & 1) != 0) {
            r32 = view != null ? view.getPaddingLeft() : 0;
        }
        if ((r72 & 2) != 0) {
            r42 = view != null ? view.getPaddingTop() : 0;
        }
        if ((r72 & 4) != 0) {
            r52 = view != null ? view.getPaddingRight() : 0;
        }
        if ((r72 & 8) != 0) {
            r6 = view != null ? view.getPaddingBottom() : 0;
        }
        if ((view != null && r32 == view.getPaddingLeft() && r42 == view.getPaddingTop() && r52 == view.getPaddingRight() && r6 == view.getPaddingBottom()) || view == null) {
            return;
        }
        view.setPadding(r32, r42, r52, r6);
    }
}
