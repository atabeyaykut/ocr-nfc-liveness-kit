package d0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import ed.c0;
import ed.d0;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import p0.g;

/* loaded from: classes.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f4534a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public static final byte[] f4535b = {80, 75, 3, 4};

    public class a implements o<f> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4536a;

        public a(String str) {
            this.f4536a = str;
        }

        @Override // d0.o
        public final void onResult(f fVar) {
            g.f4534a.remove(this.f4536a);
        }
    }

    public class b implements o<Throwable> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f4537a;

        public b(String str) {
            this.f4537a = str;
        }

        @Override // d0.o
        public final void onResult(Throwable th2) {
            g.f4534a.remove(this.f4537a);
        }
    }

    public class c implements Callable<r<f>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ f f4538a;

        public c(f fVar) {
            this.f4538a = fVar;
        }

        @Override // java.util.concurrent.Callable
        public final r<f> call() throws Exception {
            return new r<>(this.f4538a);
        }
    }

    public static t<f> a(@Nullable String str, Callable<r<f>> callable) {
        f fVar = str == null ? null : i0.g.f7227b.f7228a.get(str);
        if (fVar != null) {
            return new t<>(new c(fVar), false);
        }
        HashMap map = f4534a;
        if (str != null && map.containsKey(str)) {
            return (t) map.get(str);
        }
        t<f> tVar = new t<>(callable, false);
        if (str != null) {
            a aVar = new a(str);
            synchronized (tVar) {
                if (tVar.f4632d != null && tVar.f4632d.f4625a != null) {
                    aVar.onResult(tVar.f4632d.f4625a);
                }
                tVar.f4629a.add(aVar);
            }
            tVar.b(new b(str));
            map.put(str, tVar);
        }
        return tVar;
    }

    @WorkerThread
    public static r<f> b(Context context, String str, @Nullable String str2) {
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return c(context.getAssets().open(str), str2);
            }
            return f(new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new r<>(e10);
        }
    }

    @WorkerThread
    public static r<f> c(InputStream inputStream, @Nullable String str) throws IOException {
        try {
            d0 d0VarB = ed.v.b(ed.v.f(inputStream));
            String[] strArr = o0.c.f11043e;
            return d(new o0.d(d0VarB), str, true);
        } finally {
            p0.g.b(inputStream);
        }
    }

    public static r d(o0.d dVar, @Nullable String str, boolean z10) throws IOException {
        try {
            try {
                f fVarA = n0.t.a(dVar);
                if (str != null) {
                    i0.g.f7227b.f7228a.put(str, fVarA);
                }
                r rVar = new r(fVarA);
                if (z10) {
                    p0.g.b(dVar);
                }
                return rVar;
            } catch (Exception e10) {
                r rVar2 = new r(e10);
                if (z10) {
                    p0.g.b(dVar);
                }
                return rVar2;
            }
        } catch (Throwable th2) {
            if (z10) {
                p0.g.b(dVar);
            }
            throw th2;
        }
    }

    @WorkerThread
    public static r<f> e(Context context, @RawRes int r6, @Nullable String str) {
        Boolean bool;
        try {
            d0 d0VarB = ed.v.b(ed.v.f(context.getResources().openRawResource(r6)));
            try {
                d0 d0VarPeek = d0VarB.peek();
                byte[] bArr = f4535b;
                int length = bArr.length;
                int r22 = 0;
                while (true) {
                    if (r22 >= length) {
                        d0VarPeek.close();
                        bool = Boolean.TRUE;
                        break;
                    }
                    if (d0VarPeek.readByte() != bArr[r22]) {
                        bool = Boolean.FALSE;
                        break;
                    }
                    r22++;
                }
            } catch (Exception unused) {
                p0.c.f12202a.getClass();
                bool = Boolean.FALSE;
            }
            return bool.booleanValue() ? f(new ZipInputStream(new c0(d0VarB)), str) : c(new c0(d0VarB), str);
        } catch (Resources.NotFoundException e10) {
            return new r<>(e10);
        }
    }

    @WorkerThread
    public static r<f> f(ZipInputStream zipInputStream, @Nullable String str) throws IOException {
        try {
            return g(zipInputStream, str);
        } finally {
            p0.g.b(zipInputStream);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    public static r<f> g(ZipInputStream zipInputStream, @Nullable String str) throws IOException {
        n next;
        HashMap map = new HashMap();
        try {
            ZipEntry nextEntry = zipInputStream.getNextEntry();
            f fVar = null;
            while (nextEntry != null) {
                String name = nextEntry.getName();
                if (!name.contains("__MACOSX") && !nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                    if (nextEntry.getName().contains(".json")) {
                        d0 d0VarB = ed.v.b(ed.v.f(zipInputStream));
                        String[] strArr = o0.c.f11043e;
                        fVar = (f) d(new o0.d(d0VarB), null, false).f4625a;
                    } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                        map.put(name.split("/")[r1.length - 1], BitmapFactory.decodeStream(zipInputStream));
                    }
                    nextEntry = zipInputStream.getNextEntry();
                }
                zipInputStream.closeEntry();
                nextEntry = zipInputStream.getNextEntry();
            }
            if (fVar == null) {
                return new r<>(new IllegalArgumentException("Unable to parse composition"));
            }
            for (Map.Entry entry : map.entrySet()) {
                String str2 = (String) entry.getKey();
                Iterator<n> it = fVar.f4523d.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.f4599c.equals(str2)) {
                        break;
                    }
                }
                if (next != null) {
                    Bitmap bitmap = (Bitmap) entry.getValue();
                    g.a aVar = p0.g.f12213a;
                    int width = bitmap.getWidth();
                    int r42 = next.f4597a;
                    int r6 = next.f4598b;
                    if (width != r42 || bitmap.getHeight() != r6) {
                        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, r42, r6, true);
                        bitmap.recycle();
                        bitmap = bitmapCreateScaledBitmap;
                    }
                    next.f4600d = bitmap;
                }
            }
            for (Map.Entry<String, n> entry2 : fVar.f4523d.entrySet()) {
                if (entry2.getValue().f4600d == null) {
                    return new r<>(new IllegalStateException("There is no image for " + entry2.getValue().f4599c));
                }
            }
            if (str != null) {
                i0.g.f7227b.f7228a.put(str, fVar);
            }
            return new r<>(fVar);
        } catch (IOException e10) {
            return new r<>(e10);
        }
    }

    public static String h(@RawRes int r22, Context context) {
        StringBuilder sb2 = new StringBuilder("rawRes");
        sb2.append((context.getResources().getConfiguration().uiMode & 48) == 32 ? "_night_" : "_day_");
        sb2.append(r22);
        return sb2.toString();
    }
}
