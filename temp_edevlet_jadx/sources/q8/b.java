package q8;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.AsyncTask;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.UCropActivity;
import ed.g;
import ed.h0;
import ed.k0;
import ed.w;
import ed.y;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.logging.Logger;
import p8.c;
import rc.b0;
import rc.d0;
import rc.l;
import rc.v;
import rc.x;
import s8.c;

/* loaded from: classes2.dex */
public final class b extends AsyncTask<Void, Void, a> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f13447a;

    /* renamed from: b, reason: collision with root package name */
    public Uri f13448b;

    /* renamed from: c, reason: collision with root package name */
    public final Uri f13449c;

    /* renamed from: d, reason: collision with root package name */
    public final int f13450d;

    /* renamed from: e, reason: collision with root package name */
    public final int f13451e;
    public final o8.b f;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final Bitmap f13452a;

        /* renamed from: b, reason: collision with root package name */
        public final c f13453b;

        /* renamed from: c, reason: collision with root package name */
        public final Exception f13454c;

        public a(@NonNull Bitmap bitmap, @NonNull c cVar) {
            this.f13452a = bitmap;
            this.f13453b = cVar;
        }

        public a(@NonNull Exception exc) {
            this.f13454c = exc;
        }
    }

    public b(@NonNull Context context, @NonNull Uri uri, @Nullable Uri uri2, int r42, int r52, s8.b bVar) {
        this.f13447a = context;
        this.f13448b = uri;
        this.f13449c = uri2;
        this.f13450d = r42;
        this.f13451e = r52;
        this.f = bVar;
    }

    public final void a(@NonNull Uri uri, @Nullable Uri uri2) throws Throwable {
        InputStream inputStreamOpenInputStream;
        FileOutputStream fileOutputStream;
        Uri uri3 = this.f13449c;
        Log.d("BitmapWorkerTask", "copyFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot copy image");
        }
        FileOutputStream fileOutputStream2 = null;
        try {
            inputStreamOpenInputStream = this.f13447a.getContentResolver().openInputStream(uri);
            try {
                fileOutputStream = new FileOutputStream(new File(uri2.getPath()));
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStreamOpenInputStream = null;
        }
        try {
            if (inputStreamOpenInputStream == null) {
                throw new NullPointerException("InputStream for given input Uri is null");
            }
            byte[] bArr = new byte[1024];
            while (true) {
                int r12 = inputStreamOpenInputStream.read(bArr);
                if (r12 <= 0) {
                    r8.a.a(fileOutputStream);
                    r8.a.a(inputStreamOpenInputStream);
                    this.f13448b = uri3;
                    return;
                }
                fileOutputStream.write(bArr, 0, r12);
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream2 = fileOutputStream;
            r8.a.a(fileOutputStream2);
            r8.a.a(inputStreamOpenInputStream);
            this.f13448b = uri3;
            throw th;
        }
    }

    public final void b(@NonNull Uri uri, @Nullable Uri uri2) throws Throwable {
        Throwable th2;
        g gVar;
        b0 b0Var;
        Uri uri3 = this.f13449c;
        Log.d("BitmapWorkerTask", "downloadFile");
        if (uri2 == null) {
            throw new NullPointerException("Output Uri is null - cannot download image");
        }
        v vVar = new v();
        l lVar = vVar.f14550a;
        g gVar2 = null;
        try {
            x.a aVar = new x.a();
            aVar.f(uri.toString());
            b0 b0VarExecute = vVar.b(aVar.a()).execute();
            d0 d0Var = b0VarExecute.f14391h;
            try {
                g gVarC = d0Var.c();
                try {
                    OutputStream outputStreamOpenOutputStream = this.f13447a.getContentResolver().openOutputStream(uri2);
                    if (outputStreamOpenOutputStream == null) {
                        throw new NullPointerException("OutputStream for given output Uri is null");
                    }
                    Logger logger = w.f5358a;
                    h0 yVar = new y(outputStreamOpenOutputStream, new k0());
                    try {
                        gVarC.A(yVar);
                        r8.a.a(gVarC);
                        r8.a.a(yVar);
                        r8.a.a(d0Var);
                        lVar.a();
                        this.f13448b = uri3;
                    } catch (Throwable th3) {
                        th2 = th3;
                        gVar2 = yVar;
                        b0Var = b0VarExecute;
                        gVar = gVar2;
                        gVar2 = gVarC;
                        r8.a.a(gVar2);
                        r8.a.a(gVar);
                        if (b0Var != null) {
                            r8.a.a(b0Var.f14391h);
                        }
                        lVar.a();
                        this.f13448b = uri3;
                        throw th2;
                    }
                } catch (Throwable th4) {
                    th2 = th4;
                }
            } catch (Throwable th5) {
                th2 = th5;
                b0Var = b0VarExecute;
                gVar = null;
            }
        } catch (Throwable th6) {
            th2 = th6;
            gVar = null;
            b0Var = null;
        }
    }

    public final void c() throws IOException, NullPointerException {
        String scheme = this.f13448b.getScheme();
        Log.d("BitmapWorkerTask", "Uri scheme: " + scheme);
        boolean zEquals = "http".equals(scheme);
        Uri uri = this.f13449c;
        if (zEquals || "https".equals(scheme)) {
            try {
                b(this.f13448b, uri);
                return;
            } catch (IOException | NullPointerException e10) {
                Log.e("BitmapWorkerTask", "Downloading failed", e10);
                throw e10;
            }
        }
        if ("content".equals(scheme)) {
            try {
                a(this.f13448b, uri);
                return;
            } catch (IOException | NullPointerException e11) {
                Log.e("BitmapWorkerTask", "Copying failed", e11);
                throw e11;
            }
        }
        if ("file".equals(scheme)) {
            return;
        }
        Log.e("BitmapWorkerTask", "Invalid Uri scheme " + scheme);
        throw new IllegalArgumentException(androidx.browser.browseractions.b.e("Invalid Uri scheme", scheme));
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0139  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x013b  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x0197  */
    @Override // android.os.AsyncTask
    @androidx.annotation.NonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final q8.b.a doInBackground(java.lang.Void[] r17) throws java.io.FileNotFoundException {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q8.b.doInBackground(java.lang.Object[]):java.lang.Object");
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(@NonNull a aVar) {
        a aVar2 = aVar;
        Exception exc = aVar2.f13454c;
        o8.b bVar = this.f;
        if (exc == null) {
            String path = this.f13448b.getPath();
            Uri uri = this.f13449c;
            String path2 = uri == null ? null : uri.getPath();
            s8.c cVar = ((s8.b) bVar).f15299a;
            cVar.f15311n = path;
            cVar.f15312p = path2;
            cVar.f15313q = aVar2.f13453b;
            cVar.f15308k = true;
            cVar.setImageBitmap(aVar2.f13452a);
            return;
        }
        s8.b bVar2 = (s8.b) bVar;
        bVar2.getClass();
        Log.e("TransformImageView", "onFailure: setImageUri", exc);
        c.a aVar3 = bVar2.f15299a.f15305g;
        if (aVar3 != null) {
            UCropActivity uCropActivity = UCropActivity.this;
            uCropActivity.t(exc);
            uCropActivity.finish();
        }
    }
}
