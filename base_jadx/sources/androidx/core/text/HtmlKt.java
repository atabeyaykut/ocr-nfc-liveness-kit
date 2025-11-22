package androidx.core.text;

import android.text.Html;
import android.text.Spanned;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a/\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0086\b\u001a\u0017\u0010\t\u001a\u00020\u0002*\u00020\u00012\b\b\u0002\u0010\n\u001a\u00020\u0004H\u0086\b¨\u0006\u000b"}, d2 = {"parseAsHtml", "Landroid/text/Spanned;", "", "flags", "", "imageGetter", "Landroid/text/Html$ImageGetter;", "tagHandler", "Landroid/text/Html$TagHandler;", "toHtml", "option", "core-ktx_release"}, k = 2, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes.dex */
public final class HtmlKt {
    public static final Spanned parseAsHtml(String str, int r22, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
        h.f(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, r22, imageGetter, tagHandler);
        h.e(spannedFromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static /* synthetic */ Spanned parseAsHtml$default(String str, int r22, Html.ImageGetter imageGetter, Html.TagHandler tagHandler, int r52, Object obj) {
        if ((r52 & 1) != 0) {
            r22 = 0;
        }
        if ((r52 & 2) != 0) {
            imageGetter = null;
        }
        if ((r52 & 4) != 0) {
            tagHandler = null;
        }
        h.f(str, "<this>");
        Spanned spannedFromHtml = HtmlCompat.fromHtml(str, r22, imageGetter, tagHandler);
        h.e(spannedFromHtml, "fromHtml(this, flags, imageGetter, tagHandler)");
        return spannedFromHtml;
    }

    public static final String toHtml(Spanned spanned, int r22) {
        h.f(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, r22);
        h.e(html, "toHtml(this, option)");
        return html;
    }

    public static /* synthetic */ String toHtml$default(Spanned spanned, int r12, int r22, Object obj) {
        if ((r22 & 1) != 0) {
            r12 = 0;
        }
        h.f(spanned, "<this>");
        String html = HtmlCompat.toHtml(spanned, r12);
        h.e(html, "toHtml(this, option)");
        return html;
    }
}
