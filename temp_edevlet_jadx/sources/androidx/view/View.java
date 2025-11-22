package androidx.view;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import lc.q;
import lc.w;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u001a\u001b\u0010\u0006\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005\u001a\u0015\u0010\t\u001a\u0004\u0018\u00010\u0001*\u00020\u0000H\u0007¢\u0006\u0004\b\u0007\u0010\b¨\u0006\n"}, d2 = {"Landroid/view/View;", "Landroidx/activity/OnBackPressedDispatcherOwner;", "onBackPressedDispatcherOwner", "Ll9/m;", "set", "(Landroid/view/View;Landroidx/activity/OnBackPressedDispatcherOwner;)V", "setViewTreeOnBackPressedDispatcherOwner", "get", "(Landroid/view/View;)Landroidx/activity/OnBackPressedDispatcherOwner;", "findViewTreeOnBackPressedDispatcherOwner", "activity_release"}, k = 2, mv = {1, 6, 0})
/* renamed from: androidx.activity.ViewTreeOnBackPressedDispatcherOwner, reason: from Kotlin metadata */
/* loaded from: classes.dex */
public final class View {
    public static final OnBackPressedDispatcherOwner get(android.view.View view) {
        h.f(view, "<this>");
        return (OnBackPressedDispatcherOwner) w.X0(w.a1(q.R0(ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$1.INSTANCE, view), ViewTreeOnBackPressedDispatcherOwner$findViewTreeOnBackPressedDispatcherOwner$2.INSTANCE));
    }

    public static final void set(android.view.View view, OnBackPressedDispatcherOwner onBackPressedDispatcherOwner) {
        h.f(view, "<this>");
        h.f(onBackPressedDispatcherOwner, "onBackPressedDispatcherOwner");
        view.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, onBackPressedDispatcherOwner);
    }
}
