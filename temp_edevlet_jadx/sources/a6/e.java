package a6;

import android.os.Bundle;
import b5.a;

/* loaded from: classes2.dex */
public final class e implements a.InterfaceC0045a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f f128a;

    public e(f fVar) {
        this.f128a = fVar;
    }

    @Override // c5.b5
    public final void a(long j10, Bundle bundle, String str, String str2) {
        if (str == null || str.equals("crash") || !(!b.f120a.contains(str2))) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str2);
        bundle2.putLong("timestampInMillis", j10);
        bundle2.putBundle("params", bundle);
        ((d6.b) this.f128a.f129a).a(3, bundle2);
    }
}
