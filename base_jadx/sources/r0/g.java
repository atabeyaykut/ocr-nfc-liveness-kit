package r0;

import androidx.fragment.app.Fragment;
import com.airbnb.mvrx.lifecycleAwareLazy;

/* loaded from: classes.dex */
public final class g implements g1 {
    @Override // r0.g1
    public final lifecycleAwareLazy a(Fragment fragment, da.m viewModelProperty, da.d viewModelClass, x9.a aVar, da.d stateClass, x9.l viewModelProvider) {
        kotlin.jvm.internal.h.f(fragment, "fragment");
        kotlin.jvm.internal.h.f(viewModelProperty, "viewModelProperty");
        kotlin.jvm.internal.h.f(viewModelClass, "viewModelClass");
        kotlin.jvm.internal.h.f(stateClass, "stateClass");
        kotlin.jvm.internal.h.f(viewModelProvider, "viewModelProvider");
        return new lifecycleAwareLazy(fragment, new f(fragment, viewModelProvider));
    }
}
