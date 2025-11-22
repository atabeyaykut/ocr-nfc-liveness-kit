package h5;

import android.os.Looper;
import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class y implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public final v4.a f6871a = new v4.a(Looper.getMainLooper());

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        this.f6871a.post(runnable);
    }
}
