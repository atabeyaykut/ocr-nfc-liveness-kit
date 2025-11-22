package g7;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final /* synthetic */ class x implements Executor {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public static final /* synthetic */ x f5943a = new x();

    @Override // java.util.concurrent.Executor
    public final void execute(@NonNull Runnable runnable) {
        runnable.run();
    }
}
