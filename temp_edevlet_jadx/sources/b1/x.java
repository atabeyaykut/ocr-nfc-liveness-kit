package b1;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import androidx.annotation.NonNull;
import b1.o;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class x<Data> implements o<Uri, Data> {

    /* renamed from: b, reason: collision with root package name */
    public static final Set<String> f1083b = Collections.unmodifiableSet(new HashSet(Arrays.asList("file", "android.resource", "content")));

    /* renamed from: a, reason: collision with root package name */
    public final c<Data> f1084a;

    public static final class a implements p<Uri, AssetFileDescriptor>, c<AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f1085a;

        public a(ContentResolver contentResolver) {
            this.f1085a = contentResolver;
        }

        @Override // b1.p
        public final o<Uri, AssetFileDescriptor> a(s sVar) {
            return new x(this);
        }

        @Override // b1.x.c
        public final com.bumptech.glide.load.data.d<AssetFileDescriptor> b(Uri uri) {
            return new com.bumptech.glide.load.data.a(this.f1085a, uri);
        }
    }

    public static class b implements p<Uri, ParcelFileDescriptor>, c<ParcelFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f1086a;

        public b(ContentResolver contentResolver) {
            this.f1086a = contentResolver;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, ParcelFileDescriptor> a(s sVar) {
            return new x(this);
        }

        @Override // b1.x.c
        public final com.bumptech.glide.load.data.d<ParcelFileDescriptor> b(Uri uri) {
            return new com.bumptech.glide.load.data.i(this.f1086a, uri);
        }
    }

    public interface c<Data> {
        com.bumptech.glide.load.data.d<Data> b(Uri uri);
    }

    public static class d implements p<Uri, InputStream>, c<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f1087a;

        public d(ContentResolver contentResolver) {
            this.f1087a = contentResolver;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, InputStream> a(s sVar) {
            return new x(this);
        }

        @Override // b1.x.c
        public final com.bumptech.glide.load.data.d<InputStream> b(Uri uri) {
            return new com.bumptech.glide.load.data.n(this.f1087a, uri);
        }
    }

    public x(c<Data> cVar) {
        this.f1084a = cVar;
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        return f1083b.contains(uri.getScheme());
    }

    @Override // b1.o
    public final o.a b(@NonNull Uri uri, int r22, int r32, @NonNull v0.h hVar) {
        Uri uri2 = uri;
        return new o.a(new p1.b(uri2), this.f1084a.b(uri2));
    }
}
