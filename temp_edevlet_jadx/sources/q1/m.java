package q1;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Set;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public static final char[] f13318a = "0123456789abcdef".toCharArray();

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f13319b = new char[64];

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public static volatile Handler f13320c;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f13321a;

        static {
            int[] r02 = new int[Bitmap.Config.values().length];
            f13321a = r02;
            try {
                r02[Bitmap.Config.ALPHA_8.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13321a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f13321a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f13321a[Bitmap.Config.RGBA_F16.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f13321a[Bitmap.Config.ARGB_8888.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static void a() {
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            throw new IllegalArgumentException("You must call this method on the main thread");
        }
    }

    public static boolean b(@Nullable Object obj, @Nullable Object obj2) {
        return obj == null ? obj2 == null : obj.equals(obj2);
    }

    @TargetApi(19)
    public static int c(@NonNull Bitmap bitmap) {
        if (!bitmap.isRecycled()) {
            try {
                return bitmap.getAllocationByteCount();
            } catch (NullPointerException unused) {
                return bitmap.getRowBytes() * bitmap.getHeight();
            }
        }
        throw new IllegalStateException("Cannot obtain size for recycled Bitmap: " + bitmap + "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig());
    }

    @NonNull
    public static ArrayList d(@NonNull Set set) {
        ArrayList arrayList = new ArrayList(set.size());
        for (Object obj : set) {
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public static Handler e() {
        if (f13320c == null) {
            synchronized (m.class) {
                if (f13320c == null) {
                    f13320c = new Handler(Looper.getMainLooper());
                }
            }
        }
        return f13320c;
    }

    public static int f(int r02, @Nullable Object obj) {
        return (r02 * 31) + (obj == null ? 0 : obj.hashCode());
    }

    public static int g(int r02, boolean z10) {
        return (r02 * 31) + (z10 ? 1 : 0);
    }

    public static boolean h(int r32, int r42) {
        if (r32 > 0 || r32 == Integer.MIN_VALUE) {
            return r42 > 0 || r42 == Integer.MIN_VALUE;
        }
        return false;
    }
}
