package x4;

import android.app.Activity;
import android.os.RemoteException;
import androidx.annotation.VisibleForTesting;
import androidx.fragment.app.Fragment;
import java.util.ArrayList;
import java.util.Iterator;

@VisibleForTesting
/* loaded from: classes.dex */
public final class i extends z3.a {

    /* renamed from: e, reason: collision with root package name */
    public final Fragment f19144e;
    public com.airbnb.epoxy.a f;

    /* renamed from: g, reason: collision with root package name */
    public Activity f19145g;

    /* renamed from: h, reason: collision with root package name */
    public final ArrayList f19146h = new ArrayList();

    @VisibleForTesting
    public i(Fragment fragment) {
        this.f19144e = fragment;
    }

    public final void c() {
        Activity activity = this.f19145g;
        if (activity == null || this.f == null || this.f19793a != null) {
            return;
        }
        try {
            try {
                boolean z10 = d.f19136a;
                synchronized (d.class) {
                    d.a(activity);
                }
                y4.c cVarC0 = y4.j.a(this.f19145g).c0(new z3.d(this.f19145g));
                if (cVarC0 == null) {
                    return;
                }
                this.f.d(new h(this.f19144e, cVarC0));
                Iterator it = this.f19146h.iterator();
                while (it.hasNext()) {
                    e eVar = (e) it.next();
                    h hVar = (h) this.f19793a;
                    hVar.getClass();
                    try {
                        hVar.f19143b.B(new g(eVar));
                    } catch (RemoteException e10) {
                        throw new z4.g(e10);
                    }
                }
                this.f19146h.clear();
            } catch (RemoteException e11) {
                throw new z4.g(e11);
            }
        } catch (m3.g unused) {
        }
    }
}
