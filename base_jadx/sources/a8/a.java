package a8;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.media.Image;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import androidx.annotation.RequiresApi;
import androidx.core.location.LocationRequestCompat;
import b8.c;
import h5.z;
import java.nio.ByteBuffer;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import p4.c7;
import r3.n;
import r3.r;
import r4.f4;
import r4.j4;
import r4.k4;
import r4.l4;
import r4.m6;
import r4.q4;
import r4.r6;
import sf.k;
import v7.g;
import v7.q;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public volatile Bitmap f130a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public volatile ByteBuffer f131b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public volatile b f132c;

    /* renamed from: d, reason: collision with root package name */
    public final int f133d;

    /* renamed from: e, reason: collision with root package name */
    public final int f134e;
    public final int f;

    /* renamed from: g, reason: collision with root package name */
    public final int f135g;

    public a(@NonNull Bitmap bitmap) {
        r.i(bitmap);
        this.f130a = bitmap;
        this.f133d = bitmap.getWidth();
        this.f134e = bitmap.getHeight();
        this.f = 0;
        this.f135g = -1;
    }

    public a(@NonNull Image image, int r32, int r42, int r52) {
        this.f132c = new b(image);
        this.f133d = r32;
        this.f134e = r42;
        this.f = r52;
        this.f135g = 35;
    }

    public a(@NonNull ByteBuffer byteBuffer, int r22, int r32, int r42) {
        r.i(byteBuffer);
        this.f131b = byteBuffer;
        byteBuffer.rewind();
        this.f133d = r22;
        this.f134e = r32;
        this.f = r42;
        this.f135g = 17;
    }

    @NonNull
    @RequiresApi(19)
    public static a a(@RecentlyNonNull Image image, int r11) {
        int r52;
        boolean z10;
        a aVar;
        int r112;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (r11 == 0 || r11 == 90 || r11 == 180) {
            r52 = r11;
            z10 = true;
        } else if (r11 == 270) {
            z10 = true;
            r52 = 270;
        } else {
            r52 = r11;
            z10 = false;
        }
        r.b(z10, "Invalid rotation. Only 0, 90, 180, 270 are supported currently.");
        r.b(image.getFormat() == 256 || image.getFormat() == 35, "Only JPEG and YUV_420_888 are supported now");
        Image.Plane[] planes = image.getPlanes();
        if (image.getFormat() == 256) {
            r112 = image.getPlanes()[0].getBuffer().limit();
            r.b(image.getFormat() == 256, "Only JPEG and YUV_420_888 are supported now");
            Image.Plane[] planes2 = image.getPlanes();
            if (planes2 == null || planes2.length != 1) {
                throw new IllegalArgumentException("Unexpected image format, JPEG should have exactly 1 image plane");
            }
            ByteBuffer buffer = planes2[0].getBuffer();
            buffer.rewind();
            int r22 = buffer.remaining();
            byte[] bArr = new byte[r22];
            buffer.get(bArr);
            aVar = new a(c.e(BitmapFactory.decodeByteArray(bArr, 0, r22), r52, image.getWidth(), image.getHeight()));
        } else {
            for (Image.Plane plane : planes) {
                if (plane.getBuffer() != null) {
                    plane.getBuffer().rewind();
                }
            }
            aVar = new a(image, image.getWidth(), image.getHeight(), r52);
            r112 = (image.getPlanes()[0].getBuffer().limit() * 3) / 2;
        }
        a aVar2 = aVar;
        c(image.getFormat(), 5, image.getHeight(), image.getWidth(), r112, r52, jElapsedRealtime);
        return aVar2;
    }

    public static void c(int r15, int r16, int r17, int r18, int r19, int r20, long j10) {
        final m6 m6VarB;
        synchronized (r6.class) {
            k kVar = new k();
            kVar.f15440a = "vision-common";
            kVar.f15441b = Boolean.TRUE;
            kVar.f15442c = 1;
            m6VarB = r6.b(kVar.a());
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime() - j10;
        q4 q4Var = q4.INPUT_IMAGE_CONSTRUCTION;
        m6VarB.getClass();
        long jElapsedRealtime2 = SystemClock.elapsedRealtime();
        HashMap map = m6VarB.f14216h;
        if (map.get(q4Var) != null && jElapsedRealtime2 - ((Long) map.get(q4Var)).longValue() <= TimeUnit.SECONDS.toMillis(30L)) {
            return;
        }
        map.put(q4Var, Long.valueOf(jElapsedRealtime2));
        j4 j4Var = new j4();
        j4Var.f14178c = r15 != -1 ? r15 != 35 ? r15 != 842094169 ? r15 != 16 ? r15 != 17 ? f4.UNKNOWN_FORMAT : f4.NV21 : f4.NV16 : f4.YV12 : f4.YUV_420_888 : f4.BITMAP;
        j4Var.f14177b = r16 != 1 ? r16 != 2 ? r16 != 3 ? r16 != 4 ? k4.ANDROID_MEDIA_IMAGE : k4.FILEPATH : k4.BYTEBUFFER : k4.BYTEARRAY : k4.BITMAP;
        j4Var.f14179d = Integer.valueOf(Integer.valueOf(r19).intValue() & Integer.MAX_VALUE);
        j4Var.f = Integer.valueOf(Integer.valueOf(r17).intValue() & Integer.MAX_VALUE);
        j4Var.f14180e = Integer.valueOf(Integer.valueOf(r18).intValue() & Integer.MAX_VALUE);
        j4Var.f14176a = Long.valueOf(Long.valueOf(jElapsedRealtime).longValue() & LocationRequestCompat.PASSIVE_INTERVAL);
        j4Var.f14181g = Integer.valueOf(Integer.valueOf(r20).intValue() & Integer.MAX_VALUE);
        l4 l4Var = new l4(j4Var);
        pf.k kVar2 = new pf.k();
        kVar2.f13192c = l4Var;
        final c7 c7Var = new c7(kVar2);
        z zVar = m6VarB.f14214e;
        final String strA = zVar.m() ? (String) zVar.i() : n.f14021c.a(m6VarB.f14215g);
        Object obj = g.f18264b;
        q.f18286a.execute(new Runnable() { // from class: r4.k6

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ q4 f14194b = q4.INPUT_IMAGE_CONSTRUCTION;

            /* JADX WARN: Removed duplicated region for block: B:13:0x0031  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final void run() {
                /*
                    Method dump skipped, instructions count: 224
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: r4.k6.run():void");
            }
        });
    }

    @RecentlyNullable
    @RequiresApi(19)
    public final Image.Plane[] b() {
        if (this.f132c == null) {
            return null;
        }
        return this.f132c.f136a.getPlanes();
    }
}
