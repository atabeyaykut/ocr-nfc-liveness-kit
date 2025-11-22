package androidx.camera.core.impl.utils.futures;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;

@FunctionalInterface
@RequiresApi(21)
/* loaded from: classes.dex */
public interface AsyncFunction<I, O> {
    m5.a<O> apply(@Nullable I r12) throws Exception;
}
