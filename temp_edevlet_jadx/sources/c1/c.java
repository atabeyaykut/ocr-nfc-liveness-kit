package c1;

import android.content.Context;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b1.o;
import b1.p;
import b1.s;
import c5.w;
import e1.b0;
import java.io.InputStream;
import v0.h;
import w0.a;

/* loaded from: classes.dex */
public final class c implements o<Uri, InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1349a;

    public static class a implements p<Uri, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1350a;

        public a(Context context) {
            this.f1350a = context;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, InputStream> a(s sVar) {
            return new c(this.f1350a);
        }
    }

    public c(Context context) {
        this.f1349a = context.getApplicationContext();
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        Uri uri2 = uri;
        return w.A(uri2) && uri2.getPathSegments().contains("video");
    }

    @Override // b1.o
    @Nullable
    public final o.a<InputStream> b(@NonNull Uri uri, int r6, int r72, @NonNull h hVar) {
        Uri uri2 = uri;
        if (r6 != Integer.MIN_VALUE && r72 != Integer.MIN_VALUE && r6 <= 512 && r72 <= 384) {
            Long l5 = (Long) hVar.c(b0.f5021d);
            if (l5 != null && l5.longValue() == -1) {
                p1.b bVar = new p1.b(uri2);
                Context context = this.f1349a;
                return new o.a<>(bVar, w0.a.c(context, uri2, new a.b(context.getContentResolver())));
            }
        }
        return null;
    }
}
