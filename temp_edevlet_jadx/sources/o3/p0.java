package o3;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.Set;
import n3.d;

/* loaded from: classes.dex */
public final class p0 extends f5.d implements d.a, d.b {

    /* renamed from: h, reason: collision with root package name */
    public static final e5.b f11176h = e5.e.f5108a;

    /* renamed from: a, reason: collision with root package name */
    public final Context f11177a;

    /* renamed from: b, reason: collision with root package name */
    public final Handler f11178b;

    /* renamed from: c, reason: collision with root package name */
    public final e5.b f11179c = f11176h;

    /* renamed from: d, reason: collision with root package name */
    public final Set f11180d;

    /* renamed from: e, reason: collision with root package name */
    public final r3.e f11181e;
    public e5.f f;

    /* renamed from: g, reason: collision with root package name */
    public o0 f11182g;

    @WorkerThread
    public p0(Context context, h4.i iVar, @NonNull r3.e eVar) {
        this.f11177a = context;
        this.f11178b = iVar;
        this.f11181e = eVar;
        this.f11180d = eVar.f13945b;
    }

    @Override // o3.c
    @WorkerThread
    public final void onConnected(@Nullable Bundle bundle) {
        this.f.i(this);
    }

    @Override // o3.j
    @WorkerThread
    public final void onConnectionFailed(@NonNull m3.b bVar) {
        ((d0) this.f11182g).b(bVar);
    }

    @Override // o3.c
    @WorkerThread
    public final void onConnectionSuspended(int r12) {
        this.f.h();
    }
}
