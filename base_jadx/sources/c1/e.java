package c1;

import androidx.annotation.NonNull;
import b1.g;
import b1.o;
import b1.p;
import b1.s;
import java.io.InputStream;
import java.net.URL;
import v0.h;

/* loaded from: classes.dex */
public final class e implements o<URL, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final o<g, InputStream> f1367a;

    public static class a implements p<URL, InputStream> {
        @Override // b1.p
        @NonNull
        public final o<URL, InputStream> a(s sVar) {
            return new e(sVar.c(g.class, InputStream.class));
        }
    }

    public e(o<g, InputStream> oVar) {
        this.f1367a = oVar;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull URL url) {
        return true;
    }

    @Override // b1.o
    public final o.a<InputStream> b(@NonNull URL url, int r32, int r42, @NonNull h hVar) {
        return this.f1367a.b(new g(url), r32, r42, hVar);
    }
}
