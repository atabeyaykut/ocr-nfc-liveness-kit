package p0;

import android.graphics.PointF;
import f0.k;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f {

    /* renamed from: a, reason: collision with root package name */
    public static final PointF f12212a = new PointF();

    public static PointF a(PointF pointF, PointF pointF2) {
        return new PointF(pointF.x + pointF2.x, pointF.y + pointF2.y);
    }

    public static float b(float f, float f10, float f11) {
        return Math.max(f10, Math.min(f11, f));
    }

    public static int c(float f, float f10) {
        int r32 = (int) f;
        int r42 = (int) f10;
        int r02 = r32 / r42;
        int r22 = r32 % r42;
        if (!((r32 ^ r42) >= 0) && r22 != 0) {
            r02--;
        }
        return r32 - (r42 * r02);
    }

    public static void d(i0.e eVar, int r22, ArrayList arrayList, i0.e eVar2, k kVar) {
        if (eVar.a(r22, kVar.getName())) {
            String name = kVar.getName();
            eVar2.getClass();
            i0.e eVar3 = new i0.e(eVar2);
            eVar3.f7225a.add(name);
            i0.e eVar4 = new i0.e(eVar3);
            eVar4.f7226b = kVar;
            arrayList.add(eVar4);
        }
    }
}
