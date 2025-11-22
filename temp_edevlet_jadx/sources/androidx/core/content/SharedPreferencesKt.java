package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a.\u0010\u0007\u001a\u00020\u0005*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0087\bø\u0001\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\b"}, d2 = {"Landroid/content/SharedPreferences;", "", "commit", "Lkotlin/Function1;", "Landroid/content/SharedPreferences$Editor;", "Ll9/m;", "action", "edit", "core-ktx_release"}, k = 2, mv = {1, 7, 1})
/* loaded from: classes.dex */
public final class SharedPreferencesKt {
    @SuppressLint({"ApplySharedPref"})
    public static final void edit(SharedPreferences sharedPreferences, boolean z10, x9.l<? super SharedPreferences.Editor, l9.m> action) {
        kotlin.jvm.internal.h.f(sharedPreferences, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        SharedPreferences.Editor editor = sharedPreferences.edit();
        kotlin.jvm.internal.h.e(editor, "editor");
        action.invoke(editor);
        if (z10) {
            editor.commit();
        } else {
            editor.apply();
        }
    }

    public static /* synthetic */ void edit$default(SharedPreferences sharedPreferences, boolean z10, x9.l action, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            z10 = false;
        }
        kotlin.jvm.internal.h.f(sharedPreferences, "<this>");
        kotlin.jvm.internal.h.f(action, "action");
        SharedPreferences.Editor editor = sharedPreferences.edit();
        kotlin.jvm.internal.h.e(editor, "editor");
        action.invoke(editor);
        if (z10) {
            editor.commit();
        } else {
            editor.apply();
        }
    }
}
