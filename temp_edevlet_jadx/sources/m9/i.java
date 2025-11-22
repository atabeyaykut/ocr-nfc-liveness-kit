package m9;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes2.dex */
public class i extends c5.w {
    public static final <T> List<T> g0(T[] tArr) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        List<T> listAsList = Arrays.asList(tArr);
        kotlin.jvm.internal.h.e(listAsList, "asList(this)");
        return listAsList;
    }

    public static final void h0(int r12, byte[] bArr, int r32, byte[] destination, int r52) {
        kotlin.jvm.internal.h.f(bArr, "<this>");
        kotlin.jvm.internal.h.f(destination, "destination");
        System.arraycopy(bArr, r32, destination, r12, r52 - r32);
    }

    public static final void i0(Object[] objArr, Object[] destination, int r32, int r42, int r52) {
        kotlin.jvm.internal.h.f(objArr, "<this>");
        kotlin.jvm.internal.h.f(destination, "destination");
        System.arraycopy(objArr, r42, destination, r32, r52 - r42);
    }

    public static /* synthetic */ void j0(Object[] objArr, Object[] objArr2, int r42, int r52, int r6, int r72) {
        if ((r72 & 2) != 0) {
            r42 = 0;
        }
        if ((r72 & 4) != 0) {
            r52 = 0;
        }
        if ((r72 & 8) != 0) {
            r6 = objArr.length;
        }
        i0(objArr, objArr2, r42, r52, r6);
    }

    public static final byte[] k0(byte[] bArr, int r22, int r32) {
        kotlin.jvm.internal.h.f(bArr, "<this>");
        c5.w.f(r32, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, r22, r32);
        kotlin.jvm.internal.h.e(bArrCopyOfRange, "copyOfRange(this, fromIndex, toIndex)");
        return bArrCopyOfRange;
    }

    public static final <T> T[] l0(T[] tArr, int r22, int r32) {
        kotlin.jvm.internal.h.f(tArr, "<this>");
        c5.w.f(r32, tArr.length);
        T[] tArr2 = (T[]) Arrays.copyOfRange(tArr, r22, r32);
        kotlin.jvm.internal.h.e(tArr2, "copyOfRange(this, fromIndex, toIndex)");
        return tArr2;
    }

    public static void m0(Object[] objArr, kotlinx.coroutines.internal.u uVar) {
        int length = objArr.length;
        kotlin.jvm.internal.h.f(objArr, "<this>");
        Arrays.fill(objArr, 0, length, uVar);
    }
}
