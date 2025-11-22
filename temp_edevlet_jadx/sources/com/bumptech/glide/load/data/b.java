package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.d;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final String f2745a;

    /* renamed from: b, reason: collision with root package name */
    public final AssetManager f2746b;

    /* renamed from: c, reason: collision with root package name */
    public T f2747c;

    public b(AssetManager assetManager, String str) {
        this.f2746b = assetManager;
        this.f2745a = str;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        T t10 = this.f2747c;
        if (t10 == null) {
            return;
        }
        try {
            c(t10);
        } catch (IOException unused) {
        }
    }

    public abstract void c(T t10) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public final void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public final v0.a d() {
        return v0.a.LOCAL;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super T> aVar) {
        try {
            T tF = f(this.f2746b, this.f2745a);
            this.f2747c = tF;
            aVar.f(tF);
        } catch (IOException e10) {
            if (Log.isLoggable("AssetPathFetcher", 3)) {
                Log.d("AssetPathFetcher", "Failed to load data from asset manager", e10);
            }
            aVar.c(e10);
        }
    }

    public abstract T f(AssetManager assetManager, String str) throws IOException;
}
