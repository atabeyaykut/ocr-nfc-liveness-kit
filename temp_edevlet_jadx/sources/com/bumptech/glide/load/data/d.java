package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public interface d<T> {

    public interface a<T> {
        void c(@NonNull Exception exc);

        void f(@Nullable T t10);
    }

    @NonNull
    Class<T> a();

    void b();

    void cancel();

    @NonNull
    v0.a d();

    void e(@NonNull com.bumptech.glide.j jVar, @NonNull a<? super T> aVar);
}
