package o3;

import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import n3.a;

/* loaded from: classes.dex */
public abstract class m<A, ResultT> {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final m3.d[] f11162a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f11163b;

    /* renamed from: c, reason: collision with root package name */
    public final int f11164c;

    public static class a<A, ResultT> {

        /* renamed from: a, reason: collision with root package name */
        public k f11165a;

        /* renamed from: c, reason: collision with root package name */
        public m3.d[] f11167c;

        /* renamed from: b, reason: collision with root package name */
        public boolean f11166b = true;

        /* renamed from: d, reason: collision with root package name */
        public int f11168d = 0;

        @NonNull
        public final q0 a() {
            r3.r.b(this.f11165a != null, "execute parameter required");
            return new q0(this, this.f11167c, this.f11166b, this.f11168d);
        }
    }

    @Deprecated
    public m() {
        this.f11162a = null;
        this.f11163b = false;
        this.f11164c = 0;
    }

    public m(@Nullable m3.d[] dVarArr, boolean z10, int r42) {
        this.f11162a = dVarArr;
        boolean z11 = false;
        if (dVarArr != null && z10) {
            z11 = true;
        }
        this.f11163b = z11;
        this.f11164c = r42;
    }

    public abstract void a(@NonNull a.e eVar, @NonNull h5.l lVar) throws RemoteException;
}
