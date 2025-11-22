package com.google.android.gms.internal.vision;

import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.PassportService;

/* loaded from: classes.dex */
public final class x3 {
    public static void a(byte b10, byte b11, byte b12, byte b13, char[] cArr, int r72) throws q1 {
        if (!c(b11)) {
            if ((((b11 + ISO7816.INS_MANAGE_CHANNEL) + (b10 << 28)) >> 30) == 0 && !c(b12) && !c(b13)) {
                int r22 = ((b10 & 7) << 18) | ((b11 & 63) << 12) | ((b12 & 63) << 6) | (b13 & 63);
                cArr[r72] = (char) ((r22 >>> 10) + 55232);
                cArr[r72 + 1] = (char) ((r22 & 1023) + 56320);
                return;
            }
        }
        throw q1.d();
    }

    public static void b(byte b10, byte b11, byte b12, char[] cArr, int r6) throws q1 {
        if (c(b11) || ((b10 == -32 && b11 < -96) || ((b10 == -19 && b11 >= -96) || c(b12)))) {
            throw q1.d();
        }
        cArr[r6] = (char) (((b10 & PassportService.SFI_DG15) << 12) | ((b11 & 63) << 6) | (b12 & 63));
    }

    public static boolean c(byte b10) {
        return b10 > -65;
    }
}
