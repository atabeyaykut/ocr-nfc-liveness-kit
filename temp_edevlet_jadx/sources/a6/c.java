package a6;

import android.os.Bundle;
import b5.a;
import java.util.HashSet;

/* loaded from: classes2.dex */
public final class c implements a.InterfaceC0045a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d f125a;

    public c(d dVar) {
        this.f125a = dVar;
    }

    @Override // c5.b5
    public final void a(long j10, Bundle bundle, String str, String str2) {
        d dVar = this.f125a;
        if (dVar.f126a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            HashSet hashSet = b.f120a;
            String strH0 = b8.f.H0(a.f114e, str2, a.f112c);
            if (strH0 != null) {
                str2 = strH0;
            }
            bundle2.putString("events", str2);
            ((d6.b) dVar.f127b).a(2, bundle2);
        }
    }
}
