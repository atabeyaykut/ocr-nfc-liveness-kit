package g7;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final /* synthetic */ class l implements Executor {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public static final /* synthetic */ l f5875a = new l();

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
