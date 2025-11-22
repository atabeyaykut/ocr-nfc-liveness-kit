package androidx.work;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import com.google.android.material.transformation.FabTransformationScrimBehavior;

/* loaded from: classes.dex */
public interface RunnableScheduler {
    void cancel(@NonNull Runnable runnable);

    void scheduleWithDelay(@IntRange(from = FabTransformationScrimBehavior.COLLAPSE_DELAY) long j10, @NonNull Runnable runnable);
}
