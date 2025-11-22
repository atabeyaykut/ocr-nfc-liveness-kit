package b1;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import b1.o;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class a<Data> implements o<Uri, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f1009a;

    /* renamed from: b, reason: collision with root package name */
    public final InterfaceC0040a<Data> f1010b;

    /* renamed from: b1.a$a, reason: collision with other inner class name */
    public interface InterfaceC0040a<Data> {
        com.bumptech.glide.load.data.d<Data> b(AssetManager assetManager, String str);
    }

    public static class b implements p<Uri, AssetFileDescriptor>, InterfaceC0040a<AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f1011a;

        public b(AssetManager assetManager) {
            this.f1011a = assetManager;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, AssetFileDescriptor> a(s sVar) {
            return new a(this.f1011a, this);
        }

        @Override // b1.a.InterfaceC0040a
        public final com.bumptech.glide.load.data.d<AssetFileDescriptor> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }
    }

    public static class c implements p<Uri, InputStream>, InterfaceC0040a<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f1012a;

        public c(AssetManager assetManager) {
            this.f1012a = assetManager;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, InputStream> a(s sVar) {
            return new a(this.f1012a, this);
        }

        @Override // b1.a.InterfaceC0040a
        public final com.bumptech.glide.load.data.d<InputStream> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.m(assetManager, str);
        }
    }

    public a(AssetManager assetManager, InterfaceC0040a<Data> interfaceC0040a) {
        this.f1009a = assetManager;
        this.f1010b = interfaceC0040a;
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        Uri uri2 = uri;
        return "file".equals(uri2.getScheme()) && !uri2.getPathSegments().isEmpty() && "android_asset".equals(uri2.getPathSegments().get(0));
    }

    @Override // b1.o
    public final o.a b(@NonNull Uri uri, int r32, int r42, @NonNull v0.h hVar) {
        Uri uri2 = uri;
        return new o.a(new p1.b(uri2), this.f1010b.b(this.f1009a, uri2.toString().substring(22)));
    }
}
