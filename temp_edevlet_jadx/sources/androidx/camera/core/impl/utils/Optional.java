package androidx.camera.core.impl.utils;

import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.util.Preconditions;
import androidx.core.util.Supplier;
import java.io.Serializable;

@RequiresApi(21)
/* loaded from: classes.dex */
public abstract class Optional<T> implements Serializable {
    private static final long serialVersionUID = 0;

    public static <T> Optional<T> absent() {
        return Absent.withType();
    }

    public static <T> Optional<T> fromNullable(@Nullable T t10) {
        return t10 == null ? absent() : new Present(t10);
    }

    public static <T> Optional<T> of(T t10) {
        return new Present(Preconditions.checkNotNull(t10));
    }

    public abstract boolean equals(@Nullable Object obj);

    public abstract T get();

    public abstract int hashCode();

    public abstract boolean isPresent();

    public abstract Optional<T> or(Optional<? extends T> optional);

    public abstract T or(Supplier<? extends T> supplier);

    public abstract T or(T t10);

    @Nullable
    public abstract T orNull();

    public abstract String toString();
}
