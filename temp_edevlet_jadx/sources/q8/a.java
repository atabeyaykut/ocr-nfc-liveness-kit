package q8;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.RectF;
import android.net.Uri;
import android.os.AsyncTask;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.yalantis.ucrop.UCropActivity;
import java.io.File;
import java.lang.ref.WeakReference;
import n8.f;
import p8.d;

/* loaded from: classes2.dex */
public final class a extends AsyncTask<Void, Void, Throwable> {

    /* renamed from: a, reason: collision with root package name */
    public final WeakReference<Context> f13431a;

    /* renamed from: b, reason: collision with root package name */
    public Bitmap f13432b;

    /* renamed from: c, reason: collision with root package name */
    public final RectF f13433c;

    /* renamed from: d, reason: collision with root package name */
    public final RectF f13434d;

    /* renamed from: e, reason: collision with root package name */
    public float f13435e;
    public final float f;

    /* renamed from: g, reason: collision with root package name */
    public final int f13436g;

    /* renamed from: h, reason: collision with root package name */
    public final int f13437h;

    /* renamed from: i, reason: collision with root package name */
    public final Bitmap.CompressFormat f13438i;

    /* renamed from: j, reason: collision with root package name */
    public final int f13439j;

    /* renamed from: k, reason: collision with root package name */
    public final String f13440k;

    /* renamed from: l, reason: collision with root package name */
    public final String f13441l;

    /* renamed from: m, reason: collision with root package name */
    public final o8.a f13442m;

    /* renamed from: n, reason: collision with root package name */
    public int f13443n;

    /* renamed from: o, reason: collision with root package name */
    public int f13444o;

    /* renamed from: p, reason: collision with root package name */
    public int f13445p;

    /* renamed from: q, reason: collision with root package name */
    public int f13446q;

    public a(@NonNull Context context, @Nullable Bitmap bitmap, @NonNull d dVar, @NonNull p8.b bVar, @Nullable f fVar) {
        this.f13431a = new WeakReference<>(context);
        this.f13432b = bitmap;
        this.f13433c = dVar.f12858a;
        this.f13434d = dVar.f12859b;
        this.f13435e = dVar.f12860c;
        this.f = dVar.f12861d;
        this.f13436g = bVar.f12850a;
        this.f13437h = bVar.f12851b;
        this.f13438i = bVar.f12852c;
        this.f13439j = bVar.f12853d;
        this.f13440k = bVar.f12854e;
        this.f13441l = bVar.f;
        this.f13442m = fVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:116:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x01a7  */
    /* JADX WARN: Type inference failed for: r0v27, types: [android.graphics.Bitmap] */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.Closeable, java.io.FileOutputStream, java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r9v5, types: [java.io.ByteArrayOutputStream, java.io.OutputStream] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 633
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: q8.a.a():void");
    }

    @Override // android.os.AsyncTask
    @Nullable
    public final Throwable doInBackground(Void[] voidArr) {
        Bitmap bitmap = this.f13432b;
        if (bitmap == null) {
            return new NullPointerException("ViewBitmap is null");
        }
        if (bitmap.isRecycled()) {
            return new NullPointerException("ViewBitmap is recycled");
        }
        if (this.f13434d.isEmpty()) {
            return new NullPointerException("CurrentImageRect is empty");
        }
        try {
            a();
            this.f13432b = null;
            return null;
        } catch (Throwable th2) {
            return th2;
        }
    }

    @Override // android.os.AsyncTask
    public final void onPostExecute(@Nullable Throwable th2) {
        Throwable th3 = th2;
        o8.a aVar = this.f13442m;
        if (aVar != null) {
            if (th3 != null) {
                UCropActivity uCropActivity = ((f) aVar).f10604a;
                uCropActivity.t(th3);
                uCropActivity.finish();
                return;
            }
            Uri uriFromFile = Uri.fromFile(new File(this.f13441l));
            int r12 = this.f13445p;
            int r22 = this.f13446q;
            int r32 = this.f13443n;
            int r42 = this.f13444o;
            UCropActivity uCropActivity2 = ((f) aVar).f10604a;
            uCropActivity2.setResult(-1, new Intent().putExtra("com.yalantis.ucrop.OutputUri", uriFromFile).putExtra("com.yalantis.ucrop.CropAspectRatio", uCropActivity2.f4456n.getTargetAspectRatio()).putExtra("com.yalantis.ucrop.ImageWidth", r32).putExtra("com.yalantis.ucrop.ImageHeight", r42).putExtra("com.yalantis.ucrop.OffsetX", r12).putExtra("com.yalantis.ucrop.OffsetY", r22));
            uCropActivity2.finish();
        }
    }
}
