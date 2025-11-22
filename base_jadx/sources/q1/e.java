package q1;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a f13303a = new a();

    /* renamed from: b, reason: collision with root package name */
    public static final b f13304b = new b();

    public class a implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            m.e().post(runnable);
        }
    }

    public class b implements Executor {
        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            runnable.run();
        }
    }
}
