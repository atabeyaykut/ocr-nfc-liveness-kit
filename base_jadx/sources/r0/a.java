package r0;

import androidx.lifecycle.ViewModelStoreOwner;
import androidx.view.ComponentActivity;
import androidx.view.SavedStateRegistry;

/* loaded from: classes.dex */
public final class a extends f1 {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentActivity f13692a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13693b;

    /* renamed from: c, reason: collision with root package name */
    public final ViewModelStoreOwner f13694c;

    /* renamed from: d, reason: collision with root package name */
    public final SavedStateRegistry f13695d;

    public a(ComponentActivity componentActivity, Object obj, ViewModelStoreOwner viewModelStoreOwner, SavedStateRegistry savedStateRegistry) {
        this.f13692a = componentActivity;
        this.f13693b = obj;
        this.f13694c = viewModelStoreOwner;
        this.f13695d = savedStateRegistry;
    }

    @Override // r0.f1
    public final Object a() {
        return this.f13693b;
    }

    @Override // r0.f1
    public final ViewModelStoreOwner b() {
        return this.f13694c;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return kotlin.jvm.internal.h.a(this.f13692a, aVar.f13692a) && kotlin.jvm.internal.h.a(this.f13693b, aVar.f13693b) && kotlin.jvm.internal.h.a(this.f13694c, aVar.f13694c) && kotlin.jvm.internal.h.a(this.f13695d, aVar.f13695d);
    }

    public final int hashCode() {
        ComponentActivity componentActivity = this.f13692a;
        int r12 = (componentActivity != null ? componentActivity.hashCode() : 0) * 31;
        Object obj = this.f13693b;
        int r13 = (r12 + (obj != null ? obj.hashCode() : 0)) * 31;
        ViewModelStoreOwner viewModelStoreOwner = this.f13694c;
        int r14 = (r13 + (viewModelStoreOwner != null ? viewModelStoreOwner.hashCode() : 0)) * 31;
        SavedStateRegistry savedStateRegistry = this.f13695d;
        return r14 + (savedStateRegistry != null ? savedStateRegistry.hashCode() : 0);
    }

    public final String toString() {
        return "ActivityViewModelContext(activity=" + this.f13692a + ", args=" + this.f13693b + ", owner=" + this.f13694c + ", savedStateRegistry=" + this.f13695d + ")";
    }
}
