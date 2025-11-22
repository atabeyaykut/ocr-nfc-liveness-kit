package fd;

import ed.e0;
import java.io.EOFException;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f5612a;

    static {
        byte[] bytes = "0123456789abcdef".getBytes(mc.a.f10357a);
        kotlin.jvm.internal.h.e(bytes, "(this as java.lang.String).getBytes(charset)");
        f5612a = bytes;
    }

    public static final boolean a(e0 e0Var, int r72, byte[] bArr, int r92) {
        int r02 = e0Var.f5307c;
        byte[] bArr2 = e0Var.f5305a;
        for (int r32 = 1; r32 < r92; r32++) {
            if (r72 == r02) {
                e0Var = e0Var.f;
                kotlin.jvm.internal.h.c(e0Var);
                r72 = e0Var.f5306b;
                r02 = e0Var.f5307c;
                bArr2 = e0Var.f5305a;
            }
            if (bArr2[r72] != bArr[r32]) {
                return false;
            }
            r72++;
        }
        return true;
    }

    public static final String b(ed.e eVar, long j10) throws EOFException {
        kotlin.jvm.internal.h.f(eVar, "<this>");
        if (j10 > 0) {
            long j11 = j10 - 1;
            if (eVar.f(j11) == ((byte) 13)) {
                String strS = eVar.s(j11);
                eVar.skip(2L);
                return strS;
            }
        }
        String strS2 = eVar.s(j10);
        eVar.skip(1L);
        return strS2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0060, code lost:
    
        if (r19 == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        return r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0063, code lost:
    
        return r10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int c(ed.e r17, ed.x r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 176
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fd.k.c(ed.e, ed.x, boolean):int");
    }
}
