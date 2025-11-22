package androidx.core.text;

import android.annotation.SuppressLint;
import android.os.Build;
import android.text.Html;
import android.text.Spanned;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class HtmlCompat {
    public static final int FROM_HTML_MODE_COMPACT = 63;
    public static final int FROM_HTML_MODE_LEGACY = 0;
    public static final int FROM_HTML_OPTION_USE_CSS_COLORS = 256;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_BLOCKQUOTE = 32;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_DIV = 16;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_HEADING = 2;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST = 8;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_LIST_ITEM = 4;
    public static final int FROM_HTML_SEPARATOR_LINE_BREAK_PARAGRAPH = 1;
    public static final int TO_HTML_PARAGRAPH_LINES_CONSECUTIVE = 0;
    public static final int TO_HTML_PARAGRAPH_LINES_INDIVIDUAL = 1;

    @RequiresApi(24)
    public static class Api24Impl {
        private Api24Impl() {
        }

        @DoNotInline
        public static Spanned fromHtml(String str, int r12) {
            return Html.fromHtml(str, r12);
        }

        @DoNotInline
        public static Spanned fromHtml(String str, int r12, Html.ImageGetter imageGetter, Html.TagHandler tagHandler) {
            return Html.fromHtml(str, r12, imageGetter, tagHandler);
        }

        @DoNotInline
        public static String toHtml(Spanned spanned, int r12) {
            return Html.toHtml(spanned, r12);
        }
    }

    private HtmlCompat() {
    }

    @NonNull
    public static Spanned fromHtml(@NonNull String str, int r32) {
        return Build.VERSION.SDK_INT >= 24 ? Api24Impl.fromHtml(str, r32) : Html.fromHtml(str);
    }

    @NonNull
    public static Spanned fromHtml(@NonNull String str, int r32, @Nullable Html.ImageGetter imageGetter, @Nullable Html.TagHandler tagHandler) {
        return Build.VERSION.SDK_INT >= 24 ? Api24Impl.fromHtml(str, r32, imageGetter, tagHandler) : Html.fromHtml(str, imageGetter, tagHandler);
    }

    @NonNull
    public static String toHtml(@NonNull Spanned spanned, int r32) {
        return Build.VERSION.SDK_INT >= 24 ? Api24Impl.toHtml(spanned, r32) : Html.toHtml(spanned);
    }
}
