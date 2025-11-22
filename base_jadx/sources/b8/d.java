package b8;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.media.Image;
import androidx.annotation.RecentlyNonNull;
import androidx.appcompat.widget.v;
import java.nio.ByteBuffer;
import r3.j;
import r3.r;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public static final d f1176a;

    static {
        new j("MLKitImageUtils", "");
        f1176a = new d();
    }

    @RecentlyNonNull
    public static z3.d a(@RecentlyNonNull a8.a aVar) throws r7.a {
        int r02 = aVar.f135g;
        if (r02 == -1) {
            Bitmap bitmap = aVar.f130a;
            r.i(bitmap);
            return new z3.d(bitmap);
        }
        if (r02 != 17) {
            if (r02 == 35) {
                return new z3.d(aVar.f132c == null ? null : aVar.f132c.f136a);
            }
            if (r02 != 842094169) {
                throw new r7.a(v.c(37, "Unsupported image format: ", aVar.f135g), 3);
            }
        }
        ByteBuffer byteBuffer = aVar.f131b;
        r.i(byteBuffer);
        return new z3.d(byteBuffer);
    }

    @TargetApi(19)
    public static int b(@RecentlyNonNull a8.a aVar) {
        int r02 = aVar.f135g;
        if (r02 == -1) {
            Bitmap bitmap = aVar.f130a;
            r.i(bitmap);
            return bitmap.getAllocationByteCount();
        }
        if (r02 == 17 || r02 == 842094169) {
            ByteBuffer byteBuffer = aVar.f131b;
            r.i(byteBuffer);
            return byteBuffer.limit();
        }
        if (r02 != 35) {
            return 0;
        }
        Image.Plane[] planeArrB = aVar.b();
        r.i(planeArrB);
        return (planeArrB[0].getBuffer().limit() * 3) / 2;
    }
}
