package r0;

import android.os.Bundle;
import androidx.view.SavedStateRegistry;

/* loaded from: classes.dex */
public final class s0 implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v0 f13862a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ f1 f13863b;

    public s0(v0 v0Var, f1 f1Var) {
        this.f13862a = v0Var;
        this.f13863b = f1Var;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        return (Bundle) x5.a.u(this.f13862a.f13872a, new t0(this.f13863b.a()));
    }
}
