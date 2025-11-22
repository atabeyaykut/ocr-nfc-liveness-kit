package androidx.work;

import androidx.annotation.RestrictTo;
import c5.w;
import java.util.concurrent.ExecutionException;
import kotlin.Metadata;
import m5.a;
import nc.j;
import p9.d;

@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a#\u0010\u0002\u001a\u00028\u0000\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u0001H\u0087Hø\u0001\u0000¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0004"}, d2 = {"R", "Lm5/a;", "await", "(Lm5/a;Lp9/d;)Ljava/lang/Object;", "work-runtime-ktx_release"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes.dex */
public final class ListenableFutureKt {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static final <R> Object await(a<R> aVar, d<? super R> dVar) throws Throwable {
        if (!aVar.isDone()) {
            j jVar = new j(1, w.x(dVar));
            jVar.n();
            aVar.addListener(new ListenableFutureKt$await$2$1(jVar, aVar), DirectExecutor.INSTANCE);
            jVar.D(new ListenableFutureKt$await$2$2(aVar));
            return jVar.m();
        }
        try {
            return aVar.get();
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (cause == null) {
                throw e10;
            }
            throw cause;
        }
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    private static final <R> Object await$$forInline(a<R> aVar, d<? super R> dVar) throws Throwable {
        if (!aVar.isDone()) {
            j jVar = new j(1, w.x(dVar));
            jVar.n();
            aVar.addListener(new ListenableFutureKt$await$2$1(jVar, aVar), DirectExecutor.INSTANCE);
            jVar.D(new ListenableFutureKt$await$2$2(aVar));
            return jVar.m();
        }
        try {
            return aVar.get();
        } catch (ExecutionException e10) {
            Throwable cause = e10.getCause();
            if (cause == null) {
                throw e10;
            }
            throw cause;
        }
    }
}
