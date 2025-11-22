package androidx.view.result;

import h5.g;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import x9.l;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements ActivityResultCallback, g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l f440a;

    public /* synthetic */ b(l lVar) {
        this.f440a = lVar;
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        ActivityResultCallerKt.m3registerForActivityResult$lambda0(this.f440a, obj);
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        int r02 = ServicePageActivity.s0;
        l tmp0 = this.f440a;
        h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
