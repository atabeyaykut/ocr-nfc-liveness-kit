package z4;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import r3.r;

/* loaded from: classes.dex */
public final class b {

    /* renamed from: a, reason: collision with root package name */
    public final n4.l f19814a;

    public b(n4.l lVar) {
        r.i(lVar);
        this.f19814a = lVar;
    }

    public final boolean equals(@Nullable Object obj) {
        if (!(obj instanceof b)) {
            return false;
        }
        try {
            return this.f19814a.W(((b) obj).f19814a);
        } catch (RemoteException e10) {
            throw new g(e10);
        }
    }

    public final int hashCode() {
        try {
            return this.f19814a.h();
        } catch (RemoteException e10) {
            throw new g(e10);
        }
    }
}
