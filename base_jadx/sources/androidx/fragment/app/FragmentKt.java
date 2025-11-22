package androidx.fragment.app;

import android.os.Bundle;
import kotlin.Metadata;
import l9.m;
import x9.p;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u001a\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003\u001a\u0012\u0010\u0007\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u001a,\u0010\n\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00050\b\u001a\u0012\u0010\u000b\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\f"}, d2 = {"Landroidx/fragment/app/Fragment;", "", "requestKey", "Landroid/os/Bundle;", "result", "Ll9/m;", "setFragmentResult", "clearFragmentResult", "Lkotlin/Function2;", "listener", "setFragmentResultListener", "clearFragmentResultListener", "fragment-ktx_release"}, k = 2, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class FragmentKt {
    public static final void clearFragmentResult(Fragment fragment, String requestKey) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(requestKey, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResult(requestKey);
    }

    public static final void clearFragmentResultListener(Fragment fragment, String requestKey) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(requestKey, "requestKey");
        fragment.getParentFragmentManager().clearFragmentResultListener(requestKey);
    }

    public static final void setFragmentResult(Fragment fragment, String requestKey, Bundle result) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(requestKey, "requestKey");
        kotlin.jvm.internal.h.f(result, "result");
        fragment.getParentFragmentManager().setFragmentResult(requestKey, result);
    }

    public static final void setFragmentResultListener(Fragment fragment, String requestKey, p<? super String, ? super Bundle, m> listener) {
        kotlin.jvm.internal.h.f(fragment, "<this>");
        kotlin.jvm.internal.h.f(requestKey, "requestKey");
        kotlin.jvm.internal.h.f(listener, "listener");
        fragment.getParentFragmentManager().setFragmentResultListener(requestKey, fragment, new androidx.camera.core.impl.p(2, listener));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setFragmentResultListener$lambda-0, reason: not valid java name */
    public static final void m15setFragmentResultListener$lambda0(p tmp0, String p02, Bundle p12) {
        kotlin.jvm.internal.h.f(tmp0, "$tmp0");
        kotlin.jvm.internal.h.f(p02, "p0");
        kotlin.jvm.internal.h.f(p12, "p1");
        tmp0.mo7invoke(p02, p12);
    }
}
