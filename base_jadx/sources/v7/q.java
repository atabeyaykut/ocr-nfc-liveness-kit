package v7;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes2.dex */
public final class q implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final q f18286a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ q[] f18287b;

    static {
        q qVar = new q();
        f18286a = qVar;
        f18287b = new q[]{qVar};
    }

    public static q[] values() {
        return (q[]) f18287b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        g.a().f18266a.post(runnable);
    }
}
