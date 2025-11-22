package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.data.e;
import e1.w;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class k implements e<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final w f2764a;

    public static final class a implements e.a<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final y0.b f2765a;

        public a(y0.b bVar) {
            this.f2765a = bVar;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final Class<InputStream> a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.e.a
        @NonNull
        public final e<InputStream> b(InputStream inputStream) {
            return new k(inputStream, this.f2765a);
        }
    }

    public k(InputStream inputStream, y0.b bVar) {
        w wVar = new w(inputStream, bVar);
        this.f2764a = wVar;
        wVar.mark(5242880);
    }

    @Override // com.bumptech.glide.load.data.e
    @NonNull
    public final InputStream a() throws IOException {
        w wVar = this.f2764a;
        wVar.reset();
        return wVar;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void b() {
        this.f2764a.b();
    }
}
