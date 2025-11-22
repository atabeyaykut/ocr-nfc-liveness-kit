package c1;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import b1.o;
import b1.p;
import b1.s;
import c5.w;
import com.bumptech.glide.j;
import com.bumptech.glide.load.data.d;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;
import v0.h;

@RequiresApi(29)
/* loaded from: classes.dex */
public final class d<DataT> implements o<Uri, DataT> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f1351a;

    /* renamed from: b, reason: collision with root package name */
    public final o<File, DataT> f1352b;

    /* renamed from: c, reason: collision with root package name */
    public final o<Uri, DataT> f1353c;

    /* renamed from: d, reason: collision with root package name */
    public final Class<DataT> f1354d;

    public static abstract class a<DataT> implements p<Uri, DataT> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1355a;

        /* renamed from: b, reason: collision with root package name */
        public final Class<DataT> f1356b;

        public a(Context context, Class<DataT> cls) {
            this.f1355a = context;
            this.f1356b = cls;
        }

        @Override // b1.p
        @NonNull
        public final o<Uri, DataT> a(@NonNull s sVar) {
            Class<DataT> cls = this.f1356b;
            return new d(this.f1355a, sVar.c(File.class, cls), sVar.c(Uri.class, cls), cls);
        }
    }

    @RequiresApi(29)
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi(29)
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* renamed from: c1.d$d, reason: collision with other inner class name */
    public static final class C0052d<DataT> implements com.bumptech.glide.load.data.d<DataT> {

        /* renamed from: l, reason: collision with root package name */
        public static final String[] f1357l = {"_data"};

        /* renamed from: a, reason: collision with root package name */
        public final Context f1358a;

        /* renamed from: b, reason: collision with root package name */
        public final o<File, DataT> f1359b;

        /* renamed from: c, reason: collision with root package name */
        public final o<Uri, DataT> f1360c;

        /* renamed from: d, reason: collision with root package name */
        public final Uri f1361d;

        /* renamed from: e, reason: collision with root package name */
        public final int f1362e;
        public final int f;

        /* renamed from: g, reason: collision with root package name */
        public final h f1363g;

        /* renamed from: h, reason: collision with root package name */
        public final Class<DataT> f1364h;

        /* renamed from: j, reason: collision with root package name */
        public volatile boolean f1365j;

        /* renamed from: k, reason: collision with root package name */
        @Nullable
        public volatile com.bumptech.glide.load.data.d<DataT> f1366k;

        public C0052d(Context context, o<File, DataT> oVar, o<Uri, DataT> oVar2, Uri uri, int r52, int r6, h hVar, Class<DataT> cls) {
            this.f1358a = context.getApplicationContext();
            this.f1359b = oVar;
            this.f1360c = oVar2;
            this.f1361d = uri;
            this.f1362e = r52;
            this.f = r6;
            this.f1363g = hVar;
            this.f1364h = cls;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final Class<DataT> a() {
            return this.f1364h;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.f1366k;
            if (dVar != null) {
                dVar.b();
            }
        }

        @Nullable
        public final com.bumptech.glide.load.data.d<DataT> c() throws Throwable {
            o.a<DataT> aVarB;
            boolean zIsExternalStorageLegacy = Environment.isExternalStorageLegacy();
            Cursor cursor = null;
            h hVar = this.f1363g;
            int r32 = this.f;
            int r42 = this.f1362e;
            Context context = this.f1358a;
            if (zIsExternalStorageLegacy) {
                Uri uri = this.f1361d;
                try {
                    Cursor cursorQuery = context.getContentResolver().query(uri, f1357l, null, null, null);
                    if (cursorQuery != null) {
                        try {
                            if (cursorQuery.moveToFirst()) {
                                String string = cursorQuery.getString(cursorQuery.getColumnIndexOrThrow("_data"));
                                if (TextUtils.isEmpty(string)) {
                                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                                }
                                File file = new File(string);
                                cursorQuery.close();
                                aVarB = this.f1359b.b(file, r42, r32, hVar);
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            cursor = cursorQuery;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                boolean z10 = context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
                Uri requireOriginal = this.f1361d;
                if (z10) {
                    requireOriginal = MediaStore.setRequireOriginal(requireOriginal);
                }
                aVarB = this.f1360c.b(requireOriginal, r42, r32, hVar);
            }
            if (aVarB != null) {
                return aVarB.f1051c;
            }
            return null;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
            this.f1365j = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.f1366k;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public final v0.a d() {
            return v0.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void e(@NonNull j jVar, @NonNull d.a<? super DataT> aVar) throws Throwable {
            try {
                com.bumptech.glide.load.data.d<DataT> dVarC = c();
                if (dVarC == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f1361d));
                } else {
                    this.f1366k = dVarC;
                    if (this.f1365j) {
                        cancel();
                    } else {
                        dVarC.e(jVar, aVar);
                    }
                }
            } catch (FileNotFoundException e10) {
                aVar.c(e10);
            }
        }
    }

    public d(Context context, o<File, DataT> oVar, o<Uri, DataT> oVar2, Class<DataT> cls) {
        this.f1351a = context.getApplicationContext();
        this.f1352b = oVar;
        this.f1353c = oVar2;
        this.f1354d = cls;
    }

    @Override // b1.o
    public final boolean a(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && w.A(uri);
    }

    @Override // b1.o
    public final o.a b(@NonNull Uri uri, int r13, int r14, @NonNull h hVar) {
        Uri uri2 = uri;
        return new o.a(new p1.b(uri2), new C0052d(this.f1351a, this.f1352b, this.f1353c, uri2, r13, r14, hVar, this.f1354d));
    }
}
