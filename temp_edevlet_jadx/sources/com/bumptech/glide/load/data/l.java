package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f2766a;

    /* renamed from: b, reason: collision with root package name */
    public final ContentResolver f2767b;

    /* renamed from: c, reason: collision with root package name */
    public T f2768c;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f2767b = contentResolver;
        this.f2766a = uri;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() {
        T t10 = this.f2768c;
        if (t10 != null) {
            try {
                c(t10);
            } catch (IOException unused) {
            }
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

    /* JADX WARN: Type inference failed for: r3v3, types: [T, java.lang.Object] */
    @Override // com.bumptech.glide.load.data.d
    public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super T> aVar) {
        try {
            ?? r32 = (T) f(this.f2767b, this.f2766a);
            this.f2768c = r32;
            aVar.f(r32);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e10);
            }
            aVar.c(e10);
        }
    }

    public abstract Object f(ContentResolver contentResolver, Uri uri) throws FileNotFoundException;
}
