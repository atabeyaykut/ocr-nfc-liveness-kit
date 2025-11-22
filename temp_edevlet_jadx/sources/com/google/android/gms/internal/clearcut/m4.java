package com.google.android.gms.internal.clearcut;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import androidx.core.location.LocationRequestCompat;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;
import k3.a;

/* loaded from: classes.dex */
public final class m4 implements a.b {

    /* renamed from: b, reason: collision with root package name */
    public static final Charset f3226b = Charset.forName("UTF-8");

    /* renamed from: c, reason: collision with root package name */
    public static final m f3227c;

    /* renamed from: d, reason: collision with root package name */
    public static final m f3228d;

    /* renamed from: e, reason: collision with root package name */
    public static final ConcurrentHashMap<String, e<a4>> f3229e;
    public static final HashMap<String, e<String>> f;

    /* renamed from: g, reason: collision with root package name */
    public static Boolean f3230g;

    /* renamed from: h, reason: collision with root package name */
    public static Long f3231h;

    /* renamed from: i, reason: collision with root package name */
    public static final h f3232i;

    /* renamed from: a, reason: collision with root package name */
    public final Context f3233a;

    static {
        m mVar = new m(null, d5.b.a(), "gms:playlog:service:samplingrules_", "LogSamplingRules__", false, false);
        f3227c = mVar;
        f3228d = new m(null, d5.b.a(), "gms:playlog:service:sampling_", "LogSampling__", false, false);
        f3229e = new ConcurrentHashMap<>();
        f = new HashMap<>();
        f3230g = null;
        f3231h = null;
        Object obj = e.f3086g;
        f3232i = new h(mVar, Boolean.FALSE);
    }

    public m4(Context context) {
        Context applicationContext;
        this.f3233a = context;
        if (context == null || e.f3087h != null) {
            return;
        }
        synchronized (e.f3086g) {
            if ((Build.VERSION.SDK_INT < 24 || !context.isDeviceProtectedStorage()) && (applicationContext = context.getApplicationContext()) != null) {
                context = applicationContext;
            }
            if (e.f3087h != context) {
                e.f3088i = null;
            }
            e.f3087h = context;
        }
    }

    public static long a(long j10, String str) {
        if (str == null || str.isEmpty()) {
            return b8.f.v0(ByteBuffer.allocate(8).putLong(j10).array());
        }
        byte[] bytes = str.getBytes(f3226b);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bytes.length + 8);
        byteBufferAllocate.put(bytes);
        byteBufferAllocate.putLong(j10);
        return b8.f.v0(byteBufferAllocate.array());
    }

    public static boolean b(long j10, long j11, long j12) {
        if (j11 < 0 || j12 <= 0) {
            return true;
        }
        if (j10 < 0) {
            j10 = ((j10 & LocationRequestCompat.PASSIVE_INTERVAL) % j12) + (LocationRequestCompat.PASSIVE_INTERVAL % j12) + 1;
        }
        return j10 % j12 < j11;
    }

    public static boolean c(Context context) {
        if (f3230g == null) {
            f3230g = Boolean.valueOf(y3.c.a(context).f19314a.checkCallingOrSelfPermission("com.google.android.providers.gsf.permission.READ_GSERVICES") == 0);
        }
        return f3230g.booleanValue();
    }

    public static long d(Context context) throws NumberFormatException {
        Object obj;
        if (f3231h == null) {
            long jLongValue = 0;
            if (context == null) {
                return 0L;
            }
            if (c(context)) {
                ContentResolver contentResolver = context.getContentResolver();
                Uri uri = p4.f3255a;
                synchronized (p4.class) {
                    p4.c(contentResolver);
                    obj = p4.f3264k;
                }
                HashMap<String, Long> map = p4.f3262i;
                Long lValueOf = (Long) p4.a(map, "android_id", 0L);
                if (lValueOf != null) {
                    jLongValue = lValueOf.longValue();
                } else {
                    String strB = p4.b(contentResolver, "android_id");
                    if (strB != null) {
                        try {
                            long j10 = Long.parseLong(strB);
                            lValueOf = Long.valueOf(j10);
                            jLongValue = j10;
                        } catch (NumberFormatException unused) {
                        }
                    }
                    p4.e(obj, map, "android_id", lValueOf);
                }
            }
            f3231h = Long.valueOf(jLongValue);
        }
        return f3231h.longValue();
    }
}
