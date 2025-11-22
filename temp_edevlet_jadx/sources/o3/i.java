package o3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Scope;
import java.util.Collections;
import java.util.Set;
import n3.a;
import r3.c;

/* loaded from: classes.dex */
public final class i implements a.e, ServiceConnection {
    @Override // n3.a.e
    @NonNull
    public final Set<Scope> b() {
        return Collections.emptySet();
    }

    @Override // n3.a.e
    @WorkerThread
    public final void c(@NonNull c.InterfaceC0236c interfaceC0236c) {
        Thread.currentThread();
        throw null;
    }

    @Override // n3.a.e
    @WorkerThread
    public final void d(@NonNull String str) {
        Thread.currentThread();
        throw null;
    }

    @Override // n3.a.e
    @WorkerThread
    public final boolean e() {
        Thread.currentThread();
        throw null;
    }

    @Override // n3.a.e
    @NonNull
    public final String f() {
        r3.r.i(null);
        throw null;
    }

    @Override // n3.a.e
    public final void g(@NonNull z zVar) {
    }

    @Override // n3.a.e
    @WorkerThread
    public final void h() {
        throw null;
    }

    @Override // n3.a.e
    @WorkerThread
    public final boolean isConnected() {
        Thread.currentThread();
        throw null;
    }

    @Override // n3.a.e
    public final void j(@Nullable r3.k kVar, @Nullable Set<Scope> set) {
    }

    @Override // n3.a.e
    public final boolean k() {
        return false;
    }

    @Override // n3.a.e
    public final int l() {
        return 0;
    }

    @Override // n3.a.e
    @NonNull
    public final m3.d[] m() {
        return new m3.d[0];
    }

    @Override // n3.a.e
    @Nullable
    public final String n() {
        return null;
    }

    @Override // n3.a.e
    public final boolean o() {
        return false;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@NonNull ComponentName componentName, @NonNull IBinder iBinder) {
        throw null;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@NonNull ComponentName componentName) {
        throw null;
    }
}
