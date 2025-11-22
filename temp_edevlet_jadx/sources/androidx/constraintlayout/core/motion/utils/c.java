package androidx.constraintlayout.core.motion.utils;

import androidx.constraintlayout.core.motion.utils.TypedValues;

/* loaded from: classes.dex */
public final /* synthetic */ class c {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:4:0x000b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.String r2) {
        /*
            Method dump skipped, instructions count: 366
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.core.motion.utils.c.a(java.lang.String):int");
    }

    public static int b(int r12) {
        if (r12 == 100) {
            return 2;
        }
        if (r12 == 101) {
            return 8;
        }
        if (r12 == 416) {
            return 4;
        }
        if (r12 == 420 || r12 == 421) {
            return 8;
        }
        switch (r12) {
            case 304:
            case 305:
            case 306:
            case 307:
            case 308:
            case 309:
            case 310:
            case 311:
            case 312:
            case 313:
            case 314:
            case 315:
                return 4;
            default:
                switch (r12) {
                    case TypedValues.CycleType.TYPE_CURVE_FIT /* 401 */:
                    case TypedValues.CycleType.TYPE_VISIBILITY /* 402 */:
                        return 2;
                    case TypedValues.CycleType.TYPE_ALPHA /* 403 */:
                        return 4;
                    default:
                        switch (r12) {
                            case TypedValues.CycleType.TYPE_WAVE_PERIOD /* 423 */:
                            case TypedValues.CycleType.TYPE_WAVE_OFFSET /* 424 */:
                            case TypedValues.CycleType.TYPE_WAVE_PHASE /* 425 */:
                                return 4;
                            default:
                                return -1;
                        }
                }
        }
    }
}
