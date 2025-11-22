package com.google.android.gms.internal.clearcut;

import java.nio.charset.Charset;
import org.bouncycastle.i18n.LocalizedMessage;

/* loaded from: classes.dex */
public final class x3 {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f3347a;

    static {
        Charset.forName("UTF-8");
        Charset.forName(LocalizedMessage.DEFAULT_ENCODING);
        f3347a = new Object();
    }

    public static boolean a(Object[] objArr, Object[] objArr2) {
        int length = objArr == null ? 0 : objArr.length;
        int length2 = objArr2 == null ? 0 : objArr2.length;
        int r32 = 0;
        int r42 = 0;
        while (true) {
            if (r32 >= length || objArr[r32] != null) {
                while (r42 < length2 && objArr2[r42] == null) {
                    r42++;
                }
                boolean z10 = r32 >= length;
                boolean z11 = r42 >= length2;
                if (z10 && z11) {
                    return true;
                }
                if (z10 != z11 || !objArr[r32].equals(objArr2[r42])) {
                    return false;
                }
                r32++;
                r42++;
            } else {
                r32++;
            }
        }
    }

    public static int b(Object[] objArr) {
        int length = objArr == null ? 0 : objArr.length;
        int r22 = 0;
        for (int r02 = 0; r02 < length; r02++) {
            Object obj = objArr[r02];
            if (obj != null) {
                r22 = obj.hashCode() + (r22 * 31);
            }
        }
        return r22;
    }
}
