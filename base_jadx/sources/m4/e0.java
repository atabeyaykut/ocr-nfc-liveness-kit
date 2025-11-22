package m4;

import java.util.concurrent.Executor;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class e0 implements Executor {

    /* renamed from: a, reason: collision with root package name */
    public static final e0 f9994a;

    /* renamed from: b, reason: collision with root package name */
    public static final /* synthetic */ e0[] f9995b;

    static {
        e0 e0Var = new e0();
        f9994a = e0Var;
        f9995b = new e0[]{e0Var};
    }

    public static e0[] values() {
        return (e0[]) f9995b.clone();
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        runnable.run();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "MoreExecutors.directExecutor()";
    }
}
