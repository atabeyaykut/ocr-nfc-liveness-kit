package b3;

import com.google.android.gms.dynamite.descriptors.com.google.mlkit.dynamite.barcode.ModuleDescriptor;

/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a, reason: collision with root package name */
    public static final a f1099a;

    static {
        Long l5 = 10485760L;
        Integer num = 200;
        Integer numValueOf = Integer.valueOf(ModuleDescriptor.MODULE_VERSION);
        Long l10 = 604800000L;
        Integer num2 = 81920;
        String strF = l5 == null ? " maxStorageSizeInBytes" : "";
        if (num == null) {
            strF = strF.concat(" loadBatchSize");
        }
        if (numValueOf == null) {
            strF = android.support.v4.media.a.f(strF, " criticalSectionEnterTimeoutMs");
        }
        if (l10 == null) {
            strF = android.support.v4.media.a.f(strF, " eventCleanUpAge");
        }
        if (num2 == null) {
            strF = android.support.v4.media.a.f(strF, " maxBlobByteSizePerRow");
        }
        if (!strF.isEmpty()) {
            throw new IllegalStateException("Missing required properties:".concat(strF));
        }
        f1099a = new a(l5.longValue(), num.intValue(), numValueOf.intValue(), l10.longValue(), num2.intValue());
    }

    public abstract int a();

    public abstract long b();

    public abstract int c();

    public abstract int d();

    public abstract long e();
}
