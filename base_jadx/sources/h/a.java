package h;

import android.os.StatFs;
import ed.k;
import ed.t;
import ed.z;
import h.f;
import java.io.Closeable;
import nc.j0;

/* loaded from: classes.dex */
public interface a {

    /* renamed from: h.a$a, reason: collision with other inner class name */
    public static final class C0116a {

        /* renamed from: a, reason: collision with root package name */
        public z f6733a;

        /* renamed from: b, reason: collision with root package name */
        public final t f6734b = k.f5332a;

        /* renamed from: c, reason: collision with root package name */
        public final double f6735c = 0.02d;

        /* renamed from: d, reason: collision with root package name */
        public final long f6736d = 10485760;

        /* renamed from: e, reason: collision with root package name */
        public final long f6737e = 262144000;
        public final kotlinx.coroutines.scheduling.b f = j0.f10809b;

        public final f a() {
            long blockCountLong;
            long j10;
            long j11;
            long j12 = this.f6736d;
            z zVar = this.f6733a;
            if (zVar == null) {
                throw new IllegalStateException("directory == null".toString());
            }
            double d10 = this.f6735c;
            if (d10 > 0.0d) {
                try {
                    StatFs statFs = new StatFs(zVar.toFile().getAbsolutePath());
                    blockCountLong = (long) (d10 * statFs.getBlockCountLong() * statFs.getBlockSizeLong());
                    j10 = this.f6737e;
                } catch (Exception unused) {
                }
                if (j12 > j10) {
                    throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + j10 + " is less than minimum " + j12 + '.');
                }
                if (blockCountLong >= j12) {
                    j11 = blockCountLong > j10 ? j10 : blockCountLong;
                    return new f(j11, zVar, this.f6734b, this.f);
                }
            } else {
                j12 = 0;
            }
            j11 = j12;
            return new f(j11, zVar, this.f6734b, this.f);
        }
    }

    public interface b extends Closeable {
        z L();

        f.a T();

        z l();
    }

    f.a a(String str);

    f.b get(String str);

    k getFileSystem();
}
