package b1;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.annotation.NonNull;
import b1.o;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class t<Data> implements o<Integer, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final o<Uri, Data> f1072a;

    /* renamed from: b, reason: collision with root package name */
    public final Resources f1073b;

    public static final class a implements p<Integer, AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f1074a;

        public a(Resources resources) {
            this.f1074a = resources;
        }

        @Override // b1.p
        public final o<Integer, AssetFileDescriptor> a(s sVar) {
            return new t(this.f1074a, sVar.c(Uri.class, AssetFileDescriptor.class));
        }
    }

    public static class b implements p<Integer, ParcelFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f1075a;

        public b(Resources resources) {
            this.f1075a = resources;
        }

        @Override // b1.p
        @NonNull
        public final o<Integer, ParcelFileDescriptor> a(s sVar) {
            return new t(this.f1075a, sVar.c(Uri.class, ParcelFileDescriptor.class));
        }
    }

    public static class c implements p<Integer, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f1076a;

        public c(Resources resources) {
            this.f1076a = resources;
        }

        @Override // b1.p
        @NonNull
        public final o<Integer, InputStream> a(s sVar) {
            return new t(this.f1076a, sVar.c(Uri.class, InputStream.class));
        }
    }

    public static class d implements p<Integer, Uri> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f1077a;

        public d(Resources resources) {
            this.f1077a = resources;
        }

        @Override // b1.p
        @NonNull
        public final o<Integer, Uri> a(s sVar) {
            return new t(this.f1077a, w.f1080a);
        }
    }

    public t(Resources resources, o<Uri, Data> oVar) {
        this.f1073b = resources;
        this.f1072a = oVar;
    }

    @Override // b1.o
    public final /* bridge */ /* synthetic */ boolean a(@NonNull Integer num) {
        return true;
    }

    @Override // b1.o
    public final o.a b(@NonNull Integer num, int r72, int r82, @NonNull v0.h hVar) {
        Uri uri;
        Integer num2 = num;
        Resources resources = this.f1073b;
        try {
            uri = Uri.parse("android.resource://" + resources.getResourcePackageName(num2.intValue()) + '/' + resources.getResourceTypeName(num2.intValue()) + '/' + resources.getResourceEntryName(num2.intValue()));
        } catch (Resources.NotFoundException e10) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num2, e10);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f1072a.b(uri, r72, r82, hVar);
    }
}
