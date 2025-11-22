package androidx.core.text;

import android.annotation.SuppressLint;
import android.text.Spannable;
import android.text.SpannableString;
import ca.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000(\n\u0002\u0010\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010\u0002\u001a\u00020\u0001*\u00020\u0000H\u0086\b\u001a\r\u0010\u0004\u001a\u00020\u0003*\u00020\u0001H\u0087\b\u001a%\u0010\n\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\bH\u0086\n\u001a\u001d\u0010\n\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\bH\u0086\n¨\u0006\r"}, d2 = {"", "Landroid/text/Spannable;", "toSpannable", "Ll9/m;", "clearSpans", "", "start", "end", "", "span", "set", "Lca/d;", "range", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SpannableStringKt {
    @SuppressLint({"SyntheticAccessor"})
    public static final void clearSpans(Spannable spannable) {
        h.f(spannable, "<this>");
        Object[] spans = spannable.getSpans(0, spannable.length(), Object.class);
        h.e(spans, "getSpans(start, end, T::class.java)");
        for (Object obj : spans) {
            spannable.removeSpan(obj);
        }
    }

    public static final void set(Spannable spannable, int r22, int r32, Object span) {
        h.f(spannable, "<this>");
        h.f(span, "span");
        spannable.setSpan(span, r22, r32, 17);
    }

    public static final void set(Spannable spannable, d range, Object span) {
        h.f(spannable, "<this>");
        h.f(range, "range");
        h.f(span, "span");
        spannable.setSpan(span, Integer.valueOf(range.f2246a).intValue(), Integer.valueOf(range.f2247b).intValue(), 17);
    }

    public static final Spannable toSpannable(CharSequence charSequence) {
        h.f(charSequence, "<this>");
        SpannableString spannableStringValueOf = SpannableString.valueOf(charSequence);
        h.e(spannableStringValueOf, "valueOf(this)");
        return spannableStringValueOf;
    }
}
