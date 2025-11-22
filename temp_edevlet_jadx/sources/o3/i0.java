package o3;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class i0 implements h5.e {

    /* renamed from: a, reason: collision with root package name */
    public final d f11147a;

    /* renamed from: b, reason: collision with root package name */
    public final int f11148b;

    /* renamed from: c, reason: collision with root package name */
    public final a f11149c;

    /* renamed from: d, reason: collision with root package name */
    public final long f11150d;

    /* renamed from: e, reason: collision with root package name */
    public final long f11151e;

    public i0(d dVar, int r22, a aVar, long j10, long j11) {
        this.f11147a = dVar;
        this.f11148b = r22;
        this.f11149c = aVar;
        this.f11150d = j10;
        this.f11151e = j11;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x003a  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static r3.f a(o3.a0 r7, r3.c r8, int r9) {
        /*
            r3.b1 r8 = r8.f13938v
            r0 = 0
            if (r8 != 0) goto L7
            r8 = r0
            goto L9
        L7:
            r3.f r8 = r8.f13916d
        L9:
            if (r8 == 0) goto L41
            boolean r1 = r8.f13957b
            if (r1 == 0) goto L41
            int[] r1 = r8.f13959d
            r2 = 1
            r3 = 0
            if (r1 != 0) goto L2a
            int[] r1 = r8.f
            if (r1 != 0) goto L1a
            goto L3a
        L1a:
            int r4 = r1.length
            r5 = 0
        L1c:
            if (r5 >= r4) goto L26
            r6 = r1[r5]
            if (r6 != r9) goto L23
            goto L27
        L23:
            int r5 = r5 + 1
            goto L1c
        L26:
            r2 = 0
        L27:
            if (r2 == 0) goto L3a
            goto L41
        L2a:
            int r4 = r1.length
            r5 = 0
        L2c:
            if (r5 >= r4) goto L36
            r6 = r1[r5]
            if (r6 != r9) goto L33
            goto L37
        L33:
            int r5 = r5 + 1
            goto L2c
        L36:
            r2 = 0
        L37:
            if (r2 != 0) goto L3a
            goto L41
        L3a:
            int r7 = r7.f11081l
            int r9 = r8.f13960e
            if (r7 >= r9) goto L41
            return r8
        L41:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: o3.i0.a(o3.a0, r3.c, int):r3.f");
    }

    @Override // h5.e
    @WorkerThread
    public final void b(@NonNull h5.k kVar) {
        int r72;
        int r22;
        int r82;
        int r16;
        int r17;
        long j10;
        int r24;
        d dVar = this.f11147a;
        if (dVar.a()) {
            r3.t tVar = r3.s.a().f14040a;
            if (tVar == null || tVar.f14042b) {
                a0 a0Var = (a0) dVar.f11109j.get(this.f11149c);
                if (a0Var != null) {
                    Object obj = a0Var.f11072b;
                    if (obj instanceof r3.c) {
                        r3.c cVar = (r3.c) obj;
                        long j11 = this.f11150d;
                        boolean z10 = j11 > 0;
                        int r15 = cVar.f13933q;
                        if (tVar != null) {
                            z10 &= tVar.f14043c;
                            boolean z11 = cVar.f13938v != null;
                            r72 = tVar.f14044d;
                            r82 = tVar.f14041a;
                            if (!z11 || cVar.e()) {
                                r22 = tVar.f14045e;
                            } else {
                                r3.f fVarA = a(a0Var, cVar, this.f11148b);
                                if (fVarA == null) {
                                    return;
                                }
                                boolean z12 = fVarA.f13958c && j11 > 0;
                                r22 = fVarA.f13960e;
                                z10 = z12;
                            }
                        } else {
                            r72 = 5000;
                            r22 = 100;
                            r82 = 0;
                        }
                        if (kVar.m()) {
                            r16 = 0;
                            r17 = 0;
                        } else if (kVar.k()) {
                            r16 = -1;
                            r17 = 100;
                        } else {
                            Exception excH = kVar.h();
                            if (excH instanceof n3.b) {
                                Status status = ((n3.b) excH).f10545a;
                                int r11 = status.f2979b;
                                m3.b bVar = status.f2982e;
                                r16 = bVar == null ? -1 : bVar.f9926b;
                                r17 = r11;
                            } else {
                                r16 = -1;
                                r17 = 101;
                            }
                        }
                        if (z10) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            r24 = (int) (SystemClock.elapsedRealtime() - this.f11151e);
                            j10 = jCurrentTimeMillis;
                        } else {
                            j11 = 0;
                            j10 = 0;
                            r24 = -1;
                        }
                        h4.i iVar = dVar.f11113n;
                        iVar.sendMessage(iVar.obtainMessage(18, new j0(new r3.o(this.f11148b, r17, r16, j11, j10, null, null, r15, r24), r82, r72, r22)));
                    }
                }
            }
        }
    }
}
