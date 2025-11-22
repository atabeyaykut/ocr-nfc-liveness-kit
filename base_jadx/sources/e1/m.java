package e1;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.ImageHeaderParser;
import e1.l;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public final class m {
    public static final v0.g<v0.b> f = v0.g.a(v0.b.PREFER_ARGB_8888, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");

    /* renamed from: g, reason: collision with root package name */
    public static final v0.g<v0.i> f5051g = new v0.g<>("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, v0.g.f18201e);

    /* renamed from: h, reason: collision with root package name */
    public static final v0.g<Boolean> f5052h;

    /* renamed from: i, reason: collision with root package name */
    public static final v0.g<Boolean> f5053i;

    /* renamed from: j, reason: collision with root package name */
    public static final Set<String> f5054j;

    /* renamed from: k, reason: collision with root package name */
    public static final a f5055k;

    /* renamed from: l, reason: collision with root package name */
    public static final ArrayDeque f5056l;

    /* renamed from: a, reason: collision with root package name */
    public final y0.c f5057a;

    /* renamed from: b, reason: collision with root package name */
    public final DisplayMetrics f5058b;

    /* renamed from: c, reason: collision with root package name */
    public final y0.b f5059c;

    /* renamed from: d, reason: collision with root package name */
    public final List<ImageHeaderParser> f5060d;

    /* renamed from: e, reason: collision with root package name */
    public final r f5061e;

    public class a implements b {
        @Override // e1.m.b
        public final void a(Bitmap bitmap, y0.c cVar) {
        }

        @Override // e1.m.b
        public final void b() {
        }
    }

    public interface b {
        void a(Bitmap bitmap, y0.c cVar) throws IOException;

        void b();
    }

    static {
        l.e eVar = l.f5045a;
        Boolean bool = Boolean.FALSE;
        f5052h = v0.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        f5053i = v0.g.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        f5054j = Collections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        f5055k = new a();
        Collections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        char[] cArr = q1.m.f13318a;
        f5056l = new ArrayDeque(0);
    }

    public m(ArrayList arrayList, DisplayMetrics displayMetrics, y0.c cVar, y0.b bVar) {
        if (r.f5069j == null) {
            synchronized (r.class) {
                if (r.f5069j == null) {
                    r.f5069j = new r();
                }
            }
        }
        this.f5061e = r.f5069j;
        this.f5060d = arrayList;
        q1.l.b(displayMetrics);
        this.f5058b = displayMetrics;
        q1.l.b(cVar);
        this.f5057a = cVar;
        q1.l.b(bVar);
        this.f5059c = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(e1.s r5, android.graphics.BitmapFactory.Options r6, e1.m.b r7, y0.c r8) throws java.io.IOException {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r6.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r7.b()
            r5.c()
        Lc:
            int r1 = r6.outWidth
            int r2 = r6.outHeight
            java.lang.String r3 = r6.outMimeType
            java.util.concurrent.locks.Lock r4 = e1.y.f5099b
            r4.lock()
            android.graphics.Bitmap r5 = r5.b(r6)     // Catch: java.lang.Throwable -> L1f java.lang.IllegalArgumentException -> L21
            r4.unlock()
            return r5
        L1f:
            r5 = move-exception
            goto L48
        L21:
            r4 = move-exception
            java.io.IOException r1 = e(r4, r1, r2, r3, r6)     // Catch: java.lang.Throwable -> L1f
            r2 = 3
            boolean r2 = android.util.Log.isLoggable(r0, r2)     // Catch: java.lang.Throwable -> L1f
            if (r2 == 0) goto L32
            java.lang.String r2 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r2, r1)     // Catch: java.lang.Throwable -> L1f
        L32:
            android.graphics.Bitmap r0 = r6.inBitmap     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L47
            r8.d(r0)     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L46
            r0 = 0
            r6.inBitmap = r0     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L46
            android.graphics.Bitmap r5 = c(r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L1f java.io.IOException -> L46
            java.util.concurrent.locks.Lock r6 = e1.y.f5099b
            r6.unlock()
            return r5
        L46:
            throw r1     // Catch: java.lang.Throwable -> L1f
        L47:
            throw r1     // Catch: java.lang.Throwable -> L1f
        L48:
            java.util.concurrent.locks.Lock r6 = e1.y.f5099b
            r6.unlock()
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.m.c(e1.s, android.graphics.BitmapFactory$Options, e1.m$b, y0.c):android.graphics.Bitmap");
    }

    @Nullable
    @TargetApi(19)
    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static IOException e(IllegalArgumentException illegalArgumentException, int r52, int r6, String str, BitmapFactory.Options options) {
        StringBuilder sbF = androidx.constraintlayout.core.a.f("Exception decoding bitmap, outWidth: ", r52, ", outHeight: ", r6, ", outMimeType: ");
        sbF.append(str);
        sbF.append(", inBitmap: ");
        sbF.append(d(options.inBitmap));
        return new IOException(sbF.toString(), illegalArgumentException);
    }

    public static void f(BitmapFactory.Options options) {
        g(options);
        ArrayDeque arrayDeque = f5056l;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void g(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final e a(s sVar, int r17, int r18, v0.h hVar, b bVar) throws IOException {
        BitmapFactory.Options options;
        BitmapFactory.Options options2;
        byte[] bArr = (byte[]) this.f5059c.c(byte[].class, 65536);
        synchronized (m.class) {
            ArrayDeque arrayDeque = f5056l;
            synchronized (arrayDeque) {
                options = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options == null) {
                options = new BitmapFactory.Options();
                g(options);
            }
            options2 = options;
        }
        options2.inTempStorage = bArr;
        v0.b bVar2 = (v0.b) hVar.c(f);
        v0.i iVar = (v0.i) hVar.c(f5051g);
        l lVar = (l) hVar.c(l.f);
        boolean zBooleanValue = ((Boolean) hVar.c(f5052h)).booleanValue();
        v0.g<Boolean> gVar = f5053i;
        try {
            return e.b(b(sVar, options2, lVar, bVar2, iVar, hVar.c(gVar) != null && ((Boolean) hVar.c(gVar)).booleanValue(), r17, r18, zBooleanValue, bVar), this.f5057a);
        } finally {
            f(options2);
            this.f5059c.put(bArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0317  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x031b  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0369 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:155:0x036f  */
    /* JADX WARN: Removed duplicated region for block: B:161:0x037b  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0384  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x03ed A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:173:0x03f1  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x0402  */
    /* JADX WARN: Removed duplicated region for block: B:183:0x0410  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x04e2  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x018d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(e1.s r38, android.graphics.BitmapFactory.Options r39, e1.l r40, v0.b r41, v0.i r42, boolean r43, int r44, int r45, boolean r46, e1.m.b r47) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1472
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e1.m.b(e1.s, android.graphics.BitmapFactory$Options, e1.l, v0.b, v0.i, boolean, int, int, boolean, e1.m$b):android.graphics.Bitmap");
    }
}
