package y0;

import android.graphics.Bitmap;
import android.os.Build;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import j0.n;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;
import q1.m;

@RequiresApi(19)
/* loaded from: classes.dex */
public final class l implements j {

    /* renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f19271d;

    /* renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f19272e;
    public static final Bitmap.Config[] f;

    /* renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f19273g;

    /* renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f19274h;

    /* renamed from: a, reason: collision with root package name */
    public final c f19275a = new c();

    /* renamed from: b, reason: collision with root package name */
    public final f<b, Bitmap> f19276b = new f<>();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f19277c = new HashMap();

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f19278a;

        static {
            int[] r02 = new int[Bitmap.Config.values().length];
            f19278a = r02;
            try {
                r02[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f19278a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f19278a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f19278a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @VisibleForTesting
    public static final class b implements k {

        /* renamed from: a, reason: collision with root package name */
        public final c f19279a;

        /* renamed from: b, reason: collision with root package name */
        public int f19280b;

        /* renamed from: c, reason: collision with root package name */
        public Bitmap.Config f19281c;

        public b(c cVar) {
            this.f19279a = cVar;
        }

        @Override // y0.k
        public final void a() {
            this.f19279a.e(this);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f19280b == bVar.f19280b && m.b(this.f19281c, bVar.f19281c);
        }

        public final int hashCode() {
            int r02 = this.f19280b * 31;
            Bitmap.Config config = this.f19281c;
            return r02 + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return l.c(this.f19280b, this.f19281c);
        }
    }

    @VisibleForTesting
    public static class c extends n {
        @Override // j0.n
        public final k a() {
            return new b(this);
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f19271d = configArr;
        f19272e = configArr;
        f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f19273g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f19274h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int r22, Bitmap.Config config) {
        return "[" + r22 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapD = d(bitmap.getConfig());
        Integer num2 = navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + e(bitmap) + ", this: " + this);
    }

    @Nullable
    public final Bitmap b(int r11, int r12, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        char[] cArr = m.f13318a;
        int r02 = r11 * r12;
        int r13 = m.a.f13321a[(config == null ? Bitmap.Config.ARGB_8888 : config).ordinal()];
        int r14 = (r13 != 1 ? (r13 == 2 || r13 == 3) ? 2 : r13 != 4 ? 4 : 8 : 1) * r02;
        c cVar = this.f19275a;
        b bVar = (b) cVar.b();
        bVar.f19280b = r14;
        bVar.f19281c = config;
        int r92 = 0;
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int r72 = a.f19278a[config.ordinal()];
            configArr = r72 != 1 ? r72 != 2 ? r72 != 3 ? r72 != 4 ? new Bitmap.Config[]{config} : f19274h : f19273g : f : f19271d;
        } else {
            configArr = f19272e;
        }
        int length = configArr.length;
        while (true) {
            if (r92 >= length) {
                break;
            }
            Bitmap.Config config2 = configArr[r92];
            Integer numCeilingKey = d(config2).ceilingKey(Integer.valueOf(r14));
            if (numCeilingKey == null || numCeilingKey.intValue() > r14 * 8) {
                r92++;
            } else if (numCeilingKey.intValue() != r14 || (config2 != null ? !config2.equals(config) : config != null)) {
                cVar.e(bVar);
                int r15 = numCeilingKey.intValue();
                bVar = (b) cVar.b();
                bVar.f19280b = r15;
                bVar.f19281c = config2;
            }
        }
        Bitmap bitmapA = this.f19276b.a(bVar);
        if (bitmapA != null) {
            a(Integer.valueOf(bVar.f19280b), bitmapA);
            bitmapA.reconfigure(r11, r12, config);
        }
        return bitmapA;
    }

    public final NavigableMap<Integer, Integer> d(Bitmap.Config config) {
        HashMap map = this.f19277c;
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) map.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        map.put(config, treeMap);
        return treeMap;
    }

    public final String e(Bitmap bitmap) {
        return c(m.c(bitmap), bitmap.getConfig());
    }

    public final void f(Bitmap bitmap) {
        int r02 = m.c(bitmap);
        Bitmap.Config config = bitmap.getConfig();
        b bVar = (b) this.f19275a.b();
        bVar.f19280b = r02;
        bVar.f19281c = config;
        this.f19276b.b(bVar, bitmap);
        NavigableMap<Integer, Integer> navigableMapD = d(bitmap.getConfig());
        Integer num = navigableMapD.get(Integer.valueOf(bVar.f19280b));
        navigableMapD.put(Integer.valueOf(bVar.f19280b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    public final String toString() {
        StringBuilder sbE = androidx.constraintlayout.core.a.e("SizeConfigStrategy{groupedMap=");
        sbE.append(this.f19276b);
        sbE.append(", sortedSizes=(");
        HashMap map = this.f19277c;
        for (Map.Entry entry : map.entrySet()) {
            sbE.append(entry.getKey());
            sbE.append('[');
            sbE.append(entry.getValue());
            sbE.append("], ");
        }
        if (!map.isEmpty()) {
            sbE.replace(sbE.length() - 2, sbE.length(), "");
        }
        sbE.append(")}");
        return sbE.toString();
    }
}
