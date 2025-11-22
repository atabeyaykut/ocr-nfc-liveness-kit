package com.google.firebase.messaging;

import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import g7.g;
import g7.g0;
import g7.l0;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public class FirebaseMessagingService extends g {
    public static final ArrayDeque f = new ArrayDeque(10);

    @Override // g7.g
    @NonNull
    public final Intent b(@NonNull Intent intent) {
        return (Intent) l0.a().f5880d.poll();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01fb  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x01fe  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0224  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0237  */
    /* JADX WARN: Removed duplicated region for block: B:143:0x0241  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0251  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x02b9  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x025d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:219:0x02a6 A[EXC_TOP_SPLITTER, PHI: r4
      0x02a6: PHI (r4v10 java.lang.String) = (r4v9 java.lang.String), (r4v13 java.lang.String) binds: [B:162:0x0290, B:168:0x02a3] A[DONT_GENERATE, DONT_INLINE], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:223:0x01c8 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0171  */
    @Override // g7.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(@androidx.annotation.NonNull android.content.Intent r27) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 854
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.messaging.FirebaseMessagingService.c(android.content.Intent):void");
    }

    @WorkerThread
    public void d(@NonNull g0 g0Var) {
    }

    @WorkerThread
    public void e(@NonNull String str) {
    }
}
