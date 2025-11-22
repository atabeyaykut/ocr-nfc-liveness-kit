package z0;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    public final int f19747a;

    /* renamed from: b, reason: collision with root package name */
    public final int f19748b;

    /* renamed from: c, reason: collision with root package name */
    public final int f19749c;

    public static final class a {

        /* renamed from: e, reason: collision with root package name */
        public static final int f19750e;

        /* renamed from: a, reason: collision with root package name */
        public final Context f19751a;

        /* renamed from: b, reason: collision with root package name */
        public final ActivityManager f19752b;

        /* renamed from: c, reason: collision with root package name */
        public final b f19753c;

        /* renamed from: d, reason: collision with root package name */
        public final float f19754d;

        static {
            f19750e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f19754d = f19750e;
            this.f19751a = context;
            ActivityManager activityManager = (ActivityManager) context.getSystemService("activity");
            this.f19752b = activityManager;
            this.f19753c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !activityManager.isLowRamDevice()) {
                return;
            }
            this.f19754d = 0.0f;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final DisplayMetrics f19755a;

        public b(DisplayMetrics displayMetrics) {
            this.f19755a = displayMetrics;
        }
    }

    public i(a aVar) {
        Context context = aVar.f19751a;
        ActivityManager activityManager = aVar.f19752b;
        int r22 = activityManager.isLowRamDevice() ? 2097152 : 4194304;
        this.f19749c = r22;
        int r32 = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = aVar.f19753c.f19755a;
        float f = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        float f10 = aVar.f19754d;
        int r52 = Math.round(f * f10);
        int r42 = Math.round(f * 2.0f);
        int r72 = r32 - r22;
        int r82 = r42 + r52;
        if (r82 <= r72) {
            this.f19748b = r42;
            this.f19747a = r52;
        } else {
            float f11 = r72 / (f10 + 2.0f);
            this.f19748b = Math.round(2.0f * f11);
            this.f19747a = Math.round(f11 * f10);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sb2 = new StringBuilder("Calculation complete, Calculated memory cache size: ");
            sb2.append(Formatter.formatFileSize(context, this.f19748b));
            sb2.append(", pool size: ");
            sb2.append(Formatter.formatFileSize(context, this.f19747a));
            sb2.append(", byte array size: ");
            sb2.append(Formatter.formatFileSize(context, r22));
            sb2.append(", memory class limited? ");
            sb2.append(r82 > r32);
            sb2.append(", max size: ");
            sb2.append(Formatter.formatFileSize(context, r32));
            sb2.append(", memoryClass: ");
            sb2.append(activityManager.getMemoryClass());
            sb2.append(", isLowMemoryDevice: ");
            sb2.append(activityManager.isLowRamDevice());
            Log.d("MemorySizeCalculator", sb2.toString());
        }
    }
}
