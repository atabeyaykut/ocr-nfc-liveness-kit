package r0;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.view.ComponentActivity;
import androidx.view.SavedStateRegistry;

/* loaded from: classes.dex */
public final class j extends f1 {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentActivity f13755a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13756b;

    /* renamed from: c, reason: collision with root package name */
    public final Fragment f13757c;

    /* renamed from: d, reason: collision with root package name */
    public final ViewModelStoreOwner f13758d;

    /* renamed from: e, reason: collision with root package name */
    public final SavedStateRegistry f13759e;

    public j(ComponentActivity componentActivity, Object obj, Fragment fragment, ViewModelStoreOwner owner, SavedStateRegistry savedStateRegistry) {
        kotlin.jvm.internal.h.f(fragment, "fragment");
        kotlin.jvm.internal.h.f(owner, "owner");
        kotlin.jvm.internal.h.f(savedStateRegistry, "savedStateRegistry");
        this.f13755a = componentActivity;
        this.f13756b = obj;
        this.f13757c = fragment;
        this.f13758d = owner;
        this.f13759e = savedStateRegistry;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public /* synthetic */ j(FragmentActivity fragmentActivity, Object obj, Fragment fragment) {
        SavedStateRegistry savedStateRegistry = fragment.getSavedStateRegistry();
        kotlin.jvm.internal.h.e(savedStateRegistry, "fragment.savedStateRegistry");
        this(fragmentActivity, obj, fragment, fragment, savedStateRegistry);
    }

    @Override // r0.f1
    public final Object a() {
        return this.f13756b;
    }

    @Override // r0.f1
    public final ViewModelStoreOwner b() {
        return this.f13758d;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        return kotlin.jvm.internal.h.a(this.f13755a, jVar.f13755a) && kotlin.jvm.internal.h.a(this.f13756b, jVar.f13756b) && kotlin.jvm.internal.h.a(this.f13757c, jVar.f13757c) && kotlin.jvm.internal.h.a(this.f13758d, jVar.f13758d) && kotlin.jvm.internal.h.a(this.f13759e, jVar.f13759e);
    }

    public final int hashCode() {
        ComponentActivity componentActivity = this.f13755a;
        int r12 = (componentActivity != null ? componentActivity.hashCode() : 0) * 31;
        Object obj = this.f13756b;
        int r13 = (r12 + (obj != null ? obj.hashCode() : 0)) * 31;
        Fragment fragment = this.f13757c;
        int r14 = (r13 + (fragment != null ? fragment.hashCode() : 0)) * 31;
        ViewModelStoreOwner viewModelStoreOwner = this.f13758d;
        int r15 = (r14 + (viewModelStoreOwner != null ? viewModelStoreOwner.hashCode() : 0)) * 31;
        SavedStateRegistry savedStateRegistry = this.f13759e;
        return r15 + (savedStateRegistry != null ? savedStateRegistry.hashCode() : 0);
    }

    public final String toString() {
        return "FragmentViewModelContext(activity=" + this.f13755a + ", args=" + this.f13756b + ", fragment=" + this.f13757c + ", owner=" + this.f13758d + ", savedStateRegistry=" + this.f13759e + ")";
    }
}
