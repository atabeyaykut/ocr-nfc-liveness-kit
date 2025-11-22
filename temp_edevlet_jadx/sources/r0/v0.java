package r0;

import androidx.lifecycle.ViewModel;
import r0.p;
import r0.z;

/* loaded from: classes.dex */
public final class v0<VM extends z<S>, S extends p> extends ViewModel {

    /* renamed from: a, reason: collision with root package name */
    public final VM f13872a;

    public v0(VM vm) {
        this.f13872a = vm;
    }

    @Override // androidx.lifecycle.ViewModel
    public final void onCleared() {
        super.onCleared();
        b8.f.m(this.f13872a.f13883c);
    }
}
