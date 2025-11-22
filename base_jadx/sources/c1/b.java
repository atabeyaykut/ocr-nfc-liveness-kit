package c1;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import b1.o;
import b1.p;
import b1.s;
import c5.w;
import java.io.InputStream;
import v0.h;
import w0.a;

/* loaded from: classes.dex */
public final class b implements o<Uri, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1347a;

    public static class a implements p<Uri, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1348a;

        public a(Context context) {
            this.f1348a = context;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, InputStream> a(s sVar) {
            return new b(this.f1348a);
        }
    }

    public b(Context context) {
        this.f1347a = context.getApplicationContext();
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        Uri uri2 = uri;
        return w.A(uri2) && !uri2.getPathSegments().contains("video");
    }

    @Override // b1.o
    public final o.a<InputStream> b(@NonNull Uri uri, int r42, int r52, @NonNull h hVar) {
        Uri uri2 = uri;
        if (!(r42 != Integer.MIN_VALUE && r52 != Integer.MIN_VALUE && r42 <= 512 && r52 <= 384)) {
            return null;
        }
        p1.b bVar = new p1.b(uri2);
        Context context = this.f1347a;
        return new o.a<>(bVar, w0.a.c(context, uri2, new a.C0293a(context.getContentResolver())));
    }
}
