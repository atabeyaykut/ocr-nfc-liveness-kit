package y0;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import q1.m;

/* loaded from: classes.dex */
public final class i implements c {

    /* renamed from: j, reason: collision with root package name */
    public static final Bitmap.Config f19262j = Bitmap.Config.ARGB_8888;

    /* renamed from: a, reason: collision with root package name */
    public final j f19263a;

    /* renamed from: b, reason: collision with root package name */
    public final Set<Bitmap.Config> f19264b;

    /* renamed from: c, reason: collision with root package name */
    public final a f19265c;

    /* renamed from: d, reason: collision with root package name */
    public final long f19266d;

    /* renamed from: e, reason: collision with root package name */
    public long f19267e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public int f19268g;

    /* renamed from: h, reason: collision with root package name */
    public int f19269h;

    /* renamed from: i, reason: collision with root package name */
    public int f19270i;

    public static final class a {
    }

    public i(long j10) {
        l lVar = new l();
        HashSet hashSet = new HashSet(Arrays.asList(Bitmap.Config.values()));
        int r22 = Build.VERSION.SDK_INT;
        hashSet.add(null);
        if (r22 >= 26) {
            hashSet.remove(Bitmap.Config.HARDWARE);
        }
        Set<Bitmap.Config> setUnmodifiableSet = Collections.unmodifiableSet(hashSet);
        this.f19266d = j10;
        this.f19263a = lVar;
        this.f19264b = setUnmodifiableSet;
        this.f19265c = new a();
    }

    @Override // y0.c
    @SuppressLint({"InlinedApi"})
    public final void a(int r52) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=" + r52);
        }
        if (r52 >= 40 || (Build.VERSION.SDK_INT >= 23 && r52 >= 20)) {
            b();
        } else if (r52 >= 20 || r52 == 15) {
            h(this.f19266d / 2);
        }
    }

    @Override // y0.c
    public final void b() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        h(0L);
    }

    @Override // y0.c
    @NonNull
    public final Bitmap c(int r22, int r32, Bitmap.Config config) {
        Bitmap bitmapG = g(r22, r32, config);
        if (bitmapG != null) {
            return bitmapG;
        }
        if (config == null) {
            config = f19262j;
        }
        return Bitmap.createBitmap(r22, r32, config);
    }

    @Override // y0.c
    public final synchronized void d(Bitmap bitmap) {
        try {
            if (bitmap == null) {
                throw new NullPointerException("Bitmap must not be null");
            }
            if (bitmap.isRecycled()) {
                throw new IllegalStateException("Cannot pool recycled bitmap");
            }
            if (bitmap.isMutable()) {
                ((l) this.f19263a).getClass();
                if (m.c(bitmap) <= this.f19266d && this.f19264b.contains(bitmap.getConfig())) {
                    ((l) this.f19263a).getClass();
                    int r12 = m.c(bitmap);
                    ((l) this.f19263a).f(bitmap);
                    this.f19265c.getClass();
                    this.f19269h++;
                    this.f19267e += r12;
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        Log.v("LruBitmapPool", "Put bitmap in pool=" + ((l) this.f19263a).e(bitmap));
                    }
                    if (Log.isLoggable("LruBitmapPool", 2)) {
                        f();
                    }
                    h(this.f19266d);
                    return;
                }
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                Log.v("LruBitmapPool", "Reject bitmap from pool, bitmap: " + ((l) this.f19263a).e(bitmap) + ", is mutable: " + bitmap.isMutable() + ", is allowed config: " + this.f19264b.contains(bitmap.getConfig()));
            }
            bitmap.recycle();
        } catch (Throwable th2) {
            throw th2;
        }
    }

    @Override // y0.c
    @NonNull
    public final Bitmap e(int r22, int r32, Bitmap.Config config) {
        Bitmap bitmapG = g(r22, r32, config);
        if (bitmapG != null) {
            bitmapG.eraseColor(0);
            return bitmapG;
        }
        if (config == null) {
            config = f19262j;
        }
        return Bitmap.createBitmap(r22, r32, config);
    }

    public final void f() {
        Log.v("LruBitmapPool", "Hits=" + this.f + ", misses=" + this.f19268g + ", puts=" + this.f19269h + ", evictions=" + this.f19270i + ", currentSize=" + this.f19267e + ", maxSize=" + this.f19266d + "\nStrategy=" + this.f19263a);
    }

    @Nullable
    public final synchronized Bitmap g(int r13, int r14, @Nullable Bitmap.Config config) {
        Bitmap bitmapB;
        try {
            if (Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE) {
                throw new IllegalArgumentException("Cannot create a mutable Bitmap with config: " + config + ". Consider setting Downsampler#ALLOW_HARDWARE_CONFIG to false in your RequestOptions and/or in GlideBuilder.setDefaultRequestOptions");
            }
            bitmapB = ((l) this.f19263a).b(r13, r14, config != null ? config : f19262j);
            int r32 = 8;
            if (bitmapB == null) {
                if (Log.isLoggable("LruBitmapPool", 3)) {
                    StringBuilder sb2 = new StringBuilder("Missing bitmap=");
                    ((l) this.f19263a).getClass();
                    char[] cArr = m.f13318a;
                    int r12 = r13 * r14;
                    int r10 = m.a.f13321a[(config == null ? Bitmap.Config.ARGB_8888 : config).ordinal()];
                    sb2.append(l.c((r10 != 1 ? (r10 == 2 || r10 == 3) ? 2 : r10 != 4 ? 4 : 8 : 1) * r12, config));
                    Log.d("LruBitmapPool", sb2.toString());
                }
                this.f19268g++;
            } else {
                this.f++;
                long j10 = this.f19267e;
                ((l) this.f19263a).getClass();
                this.f19267e = j10 - m.c(bitmapB);
                this.f19265c.getClass();
                bitmapB.setHasAlpha(true);
                bitmapB.setPremultiplied(true);
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                StringBuilder sb3 = new StringBuilder("Get bitmap=");
                ((l) this.f19263a).getClass();
                char[] cArr2 = m.f13318a;
                int r132 = r13 * r14;
                int r142 = m.a.f13321a[(config == null ? Bitmap.Config.ARGB_8888 : config).ordinal()];
                if (r142 == 1) {
                    r32 = 1;
                } else if (r142 == 2 || r142 == 3) {
                    r32 = 2;
                } else if (r142 != 4) {
                    r32 = 4;
                }
                sb3.append(l.c(r32 * r132, config));
                Log.v("LruBitmapPool", sb3.toString());
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                f();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return bitmapB;
    }

    public final synchronized void h(long j10) {
        while (this.f19267e > j10) {
            l lVar = (l) this.f19263a;
            Bitmap bitmapC = lVar.f19276b.c();
            if (bitmapC != null) {
                lVar.a(Integer.valueOf(m.c(bitmapC)), bitmapC);
            }
            if (bitmapC == null) {
                if (Log.isLoggable("LruBitmapPool", 5)) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    f();
                }
                this.f19267e = 0L;
                return;
            }
            this.f19265c.getClass();
            long j11 = this.f19267e;
            ((l) this.f19263a).getClass();
            this.f19267e = j11 - m.c(bitmapC);
            this.f19270i++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                Log.d("LruBitmapPool", "Evicting bitmap=" + ((l) this.f19263a).e(bitmapC));
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                f();
            }
            bitmapC.recycle();
        }
    }
}
