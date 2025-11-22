package w0;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.j;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class a implements d<InputStream> {

    /* renamed from: a, reason: collision with root package name */
    public final Uri f18660a;

    /* renamed from: b, reason: collision with root package name */
    public final c f18661b;

    /* renamed from: c, reason: collision with root package name */
    public InputStream f18662c;

    /* renamed from: w0.a$a, reason: collision with other inner class name */
    public static class C0293a implements w0.b {

        /* renamed from: b, reason: collision with root package name */
        public static final String[] f18663b = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f18664a;

        public C0293a(ContentResolver contentResolver) {
            this.f18664a = contentResolver;
        }

        @Override // w0.b
        public final Cursor a(Uri uri) {
            return this.f18664a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f18663b, "kind = 1 AND image_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    public static class b implements w0.b {

        /* renamed from: b, reason: collision with root package name */
        public static final String[] f18665b = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final ContentResolver f18666a;

        public b(ContentResolver contentResolver) {
            this.f18666a = contentResolver;
        }

        @Override // w0.b
        public final Cursor a(Uri uri) {
            return this.f18666a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f18665b, "kind = 1 AND video_id = ?", new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    public a(Uri uri, c cVar) {
        this.f18660a = uri;
        this.f18661b = cVar;
    }

    public static a c(Context context, Uri uri, w0.b bVar) {
        return new a(uri, new c(com.bumptech.glide.b.b(context).f2708c.a().f(), bVar, com.bumptech.glide.b.b(context).f2709d, context.getContentResolver()));
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public final Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public final void b() throws IOException {
        InputStream inputStream = this.f18662c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
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
    public final void e(@NonNull j jVar, @NonNull d.a<? super InputStream> aVar) throws Throwable {
        try {
            InputStream inputStreamF = f();
            this.f18662c = inputStreamF;
            aVar.f(inputStreamF);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable("MediaStoreThumbFetcher", 3)) {
                Log.d("MediaStoreThumbFetcher", "Failed to find thumbnail file", e10);
            }
            aVar.c(e10);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 7, insn: 0x0025: MOVE (r5 I:??[OBJECT, ARRAY]) = (r7 I:??[OBJECT, ARRAY]) (LINE:38), block:B:10:0x0025 */
    /* JADX WARN: Removed duplicated region for block: B:23:0x004a A[PHI: r7
      0x004a: PHI (r7v4 android.database.Cursor) = (r7v3 android.database.Cursor), (r7v9 android.database.Cursor) binds: [B:22:0x0048, B:13:0x002a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.NullPointerException, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r5v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.io.InputStream f() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: w0.a.f():java.io.InputStream");
    }
}
