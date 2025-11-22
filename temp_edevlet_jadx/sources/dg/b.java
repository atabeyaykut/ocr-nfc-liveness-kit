package dg;

import androidx.navigation.ui.AppBarConfiguration;
import kotlin.jvm.internal.h;

/* loaded from: classes3.dex */
public final class b implements AppBarConfiguration.OnNavigateUpListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ x9.a f4907a;

    public b(c cVar) {
        this.f4907a = cVar;
    }

    @Override // androidx.navigation.ui.AppBarConfiguration.OnNavigateUpListener
    public final /* synthetic */ boolean onNavigateUp() {
        Object objInvoke = this.f4907a.invoke();
        h.b(objInvoke, "invoke(...)");
        return ((Boolean) objInvoke).booleanValue();
    }
}
