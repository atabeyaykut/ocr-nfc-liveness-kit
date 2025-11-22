package j3;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.locks.ReentrantLock;

/* loaded from: classes.dex */
public final class n {

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public static n f7993b;

    /* renamed from: a, reason: collision with root package name */
    public final b f7994a;

    public n(Context context) {
        b bVarA = b.a(context);
        this.f7994a = bVarA;
        bVarA.b();
        bVarA.c();
    }

    public static synchronized n a(@NonNull Context context) {
        return c(context.getApplicationContext());
    }

    public static synchronized n c(Context context) {
        n nVar = f7993b;
        if (nVar != null) {
            return nVar;
        }
        n nVar2 = new n(context);
        f7993b = nVar2;
        return nVar2;
    }

    public final synchronized void b() {
        b bVar = this.f7994a;
        ReentrantLock reentrantLock = bVar.f7983a;
        reentrantLock.lock();
        try {
            bVar.f7984b.edit().clear().apply();
        } finally {
            reentrantLock.unlock();
        }
    }
}
