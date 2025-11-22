package androidx.view;

import androidx.core.view.ViewKt;
import x9.a;

/* loaded from: classes.dex */
public final /* synthetic */ class d implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f434a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f435b;

    public /* synthetic */ d(int r12, Object obj) {
        this.f434a = r12;
        this.f435b = obj;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f434a;
        Object obj = this.f435b;
        switch (r02) {
            case 0:
                ComponentDialog.m0onBackPressedDispatcher$lambda1((ComponentDialog) obj);
                break;
            default:
                ViewKt.m14postOnAnimationDelayed$lambda1((a) obj);
                break;
        }
    }
}
