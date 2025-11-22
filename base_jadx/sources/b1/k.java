package b1;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import b1.o;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public final class k implements o<Uri, File> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1039a;

    public static final class a implements p<Uri, File> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1040a;

        public a(Context context) {
            this.f1040a = context;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, File> a(s sVar) {
            return new k(this.f1040a);
        }
    }

    public static class b implements com.bumptech.glide.load.data.d<File> {

        /* renamed from: c, reason: collision with root package name */
        public static final String[] f1041c = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final Context f1042a;

        /* renamed from: b, reason: collision with root package name */
        public final Uri f1043b;

        public b(Context context, Uri uri) {
            this.f1042a = context;
            this.f1043b = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final v0.a d() {
            return v0.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull com.bumptech.glide.j jVar, @NonNull d.a<? super File> aVar) {
            Cursor cursorQuery = this.f1042a.getContentResolver().query(this.f1043b, f1041c, null, null, null);
            if (cursorQuery != null) {
                try {
                    string = cursorQuery.moveToFirst() ? cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    cursorQuery.close();
                }
            }
            if (!TextUtils.isEmpty(string)) {
                aVar.f(new File(string));
                return;
            }
            aVar.c(new FileNotFoundException("Failed to find file path for: " + this.f1043b));
        }
    }

    public k(Context context) {
        this.f1039a = context;
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        return c5.w.A(uri);
    }

    @Override // b1.o
    public final o.a<File> b(@NonNull Uri uri, int r32, int r42, @NonNull v0.h hVar) {
        Uri uri2 = uri;
        return new o.a<>(new p1.b(uri2), new b(this.f1039a, uri2));
    }
}
