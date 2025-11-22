package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import java.io.IOException;

/* loaded from: classes.dex */
public interface e<T> {

    public interface a<T> {
        @NonNull
        Class<T> a();

        @NonNull
        e<T> b(@NonNull T t10);
    }

    @NonNull
    T a() throws IOException;

    void b();
}
