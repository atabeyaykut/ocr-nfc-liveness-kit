package x4;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.HashMap;
import r3.r;

/* loaded from: classes.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public final y4.b f19135a;

    public interface a {
    }

    public interface b {
        void a(@NonNull z4.d dVar);

        void b(@NonNull z4.d dVar);

        void c(@NonNull z4.d dVar);
    }

    public c(@NonNull y4.b bVar) {
        new HashMap();
        new HashMap();
        r.i(bVar);
        this.f19135a = bVar;
    }

    @NonNull
    public final z4.b a(@NonNull z4.c cVar) {
        try {
            if (cVar != null) {
                return new z4.b(this.f19135a.t(cVar));
            }
            throw new NullPointerException("CircleOptions must not be null.");
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    @Nullable
    public final void b(@NonNull z4.e eVar) {
        try {
            this.f19135a.t0(eVar);
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }

    public final void c(@NonNull x4.a aVar) {
        try {
            this.f19135a.n0(aVar.f19133a);
        } catch (RemoteException e10) {
            throw new z4.g(e10);
        }
    }
}
