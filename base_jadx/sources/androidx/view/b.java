package androidx.view;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandle;
import androidx.view.SavedStateRegistry;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements SavedStateRegistry.SavedStateProvider {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f431a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f432b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f431a = r12;
        this.f432b = obj;
    }

    @Override // androidx.savedstate.SavedStateRegistry.SavedStateProvider
    public final Bundle saveState() {
        int r02 = this.f431a;
        Object obj = this.f432b;
        switch (r02) {
            case 0:
                return ((ComponentActivity) obj).lambda$new$0();
            default:
                return SavedStateHandle.m26savedStateProvider$lambda0((SavedStateHandle) obj);
        }
    }
}
