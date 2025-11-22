package b1;

import android.net.Uri;
import androidx.annotation.NonNull;
import b1.o;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class y<Data> implements o<Uri, Data> {

    /* renamed from: b, reason: collision with root package name */
    public static final Set<String> f1088b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: a, reason: collision with root package name */
    public final o<g, Data> f1089a;

    public static class a implements p<Uri, InputStream> {
        @Override // b1.p
        @NonNull
        public final o<Uri, InputStream> a(s sVar) {
            return new y(sVar.c(g.class, InputStream.class));
        }
    }

    public y(o<g, Data> oVar) {
        this.f1089a = oVar;
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        return f1088b.contains(uri.getScheme());
    }

    @Override // b1.o
    public final o.a b(@NonNull Uri uri, int r32, int r42, @NonNull v0.h hVar) {
        return this.f1089a.b(new g(uri.toString()), r32, r42, hVar);
    }
}
