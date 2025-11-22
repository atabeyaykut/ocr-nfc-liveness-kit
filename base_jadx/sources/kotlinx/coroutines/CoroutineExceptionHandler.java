package kotlinx.coroutines;

import kotlin.Metadata;
import p9.f;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/CoroutineExceptionHandler;", "Lp9/f$b;", "a", "kotlinx-coroutines-core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public interface CoroutineExceptionHandler extends f.b {

    public static final class a implements f.c<CoroutineExceptionHandler> {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ a f9009a = new a();
    }

    void handleException(f fVar, Throwable th2);
}
