package h5;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public abstract class k<TResult> {
    @NonNull
    public void a(@NonNull x xVar, @NonNull d dVar) {
        throw new UnsupportedOperationException("addOnCanceledListener is not implemented");
    }

    @NonNull
    public void b(@NonNull e eVar) {
        throw new UnsupportedOperationException("addOnCompleteListener is not implemented");
    }

    @NonNull
    public abstract z c(@NonNull Executor executor, @NonNull f fVar);

    @NonNull
    public abstract z d(@NonNull Executor executor, @NonNull g gVar);

    @NonNull
    public <TContinuationResult> k<TContinuationResult> e(@NonNull Executor executor, @NonNull b<TResult, TContinuationResult> bVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public void f(@NonNull b bVar) {
        throw new UnsupportedOperationException("continueWith is not implemented");
    }

    @NonNull
    public <TContinuationResult> k<TContinuationResult> g(@NonNull Executor executor, @NonNull b<TResult, k<TContinuationResult>> bVar) {
        throw new UnsupportedOperationException("continueWithTask is not implemented");
    }

    @Nullable
    public abstract Exception h();

    public abstract TResult i();

    public abstract Object j() throws Throwable;

    public abstract boolean k();

    public abstract boolean l();

    public abstract boolean m();

    @NonNull
    public <TContinuationResult> k<TContinuationResult> n(@NonNull Executor executor, @NonNull j<TResult, TContinuationResult> jVar) {
        throw new UnsupportedOperationException("onSuccessTask is not implemented");
    }
}
