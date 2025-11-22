package androidx.view.result;

import h5.g;
import kotlin.jvm.internal.h;
import x9.l;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements ActivityResultCallback, g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f439a;

    public /* synthetic */ a(l lVar) {
        this.f439a = lVar;
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        ActivityResultCallerKt.m4registerForActivityResult$lambda1(this.f439a, obj);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        l tmp0 = this.f439a;
        h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
