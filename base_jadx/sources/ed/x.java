package ed;

import java.io.IOException;
import java.util.ArrayList;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class x extends m9.c<h> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final h[] f5359a;

    /* renamed from: b, reason: collision with root package name */
    public final int[] f5360b;

    public static final class a {
        public static void a(long j10, e eVar, int r21, ArrayList arrayList, int r23, int r24, ArrayList arrayList2) throws IOException {
            int r72;
            int r22;
            int r13;
            int r132;
            long j11;
            e eVar2;
            long j12;
            int r12 = r21;
            if (!(r23 < r24)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            if (r23 < r24) {
                int r52 = r23;
                while (true) {
                    int r73 = r52 + 1;
                    if (!(((h) arrayList.get(r52)).r() >= r12)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                    if (r73 >= r24) {
                        break;
                    } else {
                        r52 = r73;
                    }
                }
            }
            h hVar = (h) arrayList.get(r23);
            h hVar2 = (h) arrayList.get(r24 - 1);
            if (r12 == hVar.r()) {
                int r53 = ((Number) arrayList2.get(r23)).intValue();
                int r25 = r23 + 1;
                h hVar3 = (h) arrayList.get(r25);
                r72 = r25;
                r22 = r53;
                hVar = hVar3;
            } else {
                r72 = r23;
                r22 = -1;
            }
            if (hVar.x(r12) == hVar2.x(r12)) {
                int r82 = Math.min(hVar.r(), hVar2.r());
                if (r12 < r82) {
                    int r92 = r12;
                    r13 = 0;
                    while (true) {
                        int r32 = r92 + 1;
                        if (hVar.x(r92) != hVar2.x(r92)) {
                            break;
                        }
                        r13++;
                        if (r32 >= r82) {
                            break;
                        } else {
                            r92 = r32;
                        }
                    }
                } else {
                    r13 = 0;
                }
                long j13 = 4;
                long j14 = (eVar.f5304b / j13) + j10 + 2 + r13 + 1;
                eVar.c0(-r13);
                eVar.c0(r22);
                int r6 = r12 + r13;
                if (r12 < r6) {
                    while (true) {
                        int r26 = r12 + 1;
                        eVar.c0(hVar.x(r12) & 255);
                        if (r26 >= r6) {
                            break;
                        } else {
                            r12 = r26;
                        }
                    }
                }
                if (r72 + 1 == r24) {
                    if (!(r6 == ((h) arrayList.get(r72)).r())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    eVar.c0(((Number) arrayList2.get(r72)).intValue());
                    return;
                } else {
                    e eVar3 = new e();
                    eVar.c0(((int) ((eVar3.f5304b / j13) + j14)) * (-1));
                    a(j14, eVar3, r6, arrayList, r72, r24, arrayList2);
                    eVar.J(eVar3);
                    return;
                }
            }
            int r33 = r72 + 1;
            int r42 = 1;
            if (r33 < r24) {
                while (true) {
                    int r54 = r33 + 1;
                    if (((h) arrayList.get(r33 - 1)).x(r12) != ((h) arrayList.get(r33)).x(r12)) {
                        r42++;
                    }
                    if (r54 >= r24) {
                        break;
                    } else {
                        r33 = r54;
                    }
                }
            }
            long j15 = 4;
            long j16 = (r42 * 2) + (eVar.f5304b / j15) + j10 + 2;
            eVar.c0(r42);
            eVar.c0(r22);
            if (r72 < r24) {
                int r27 = r72;
                while (true) {
                    int r34 = r27 + 1;
                    int r43 = ((h) arrayList.get(r27)).x(r12);
                    if (r27 == r72 || r43 != ((h) arrayList.get(r27 - 1)).x(r12)) {
                        eVar.c0(r43 & 255);
                    }
                    if (r34 >= r24) {
                        break;
                    } else {
                        r27 = r34;
                    }
                }
            }
            e eVar4 = new e();
            while (r72 < r24) {
                byte bX = ((h) arrayList.get(r72)).x(r12);
                int r35 = r72 + 1;
                if (r35 < r24) {
                    int r44 = r35;
                    while (true) {
                        int r55 = r44 + 1;
                        if (bX != ((h) arrayList.get(r44)).x(r12)) {
                            r132 = r44;
                            break;
                        } else if (r55 >= r24) {
                            break;
                        } else {
                            r44 = r55;
                        }
                    }
                    r132 = r24;
                } else {
                    r132 = r24;
                }
                if (r35 == r132 && r12 + 1 == ((h) arrayList.get(r72)).r()) {
                    eVar.c0(((Number) arrayList2.get(r72)).intValue());
                    j11 = j16;
                    eVar2 = eVar4;
                    j12 = j15;
                } else {
                    eVar.c0(((int) ((eVar4.f5304b / j15) + j16)) * (-1));
                    j11 = j16;
                    eVar2 = eVar4;
                    j12 = j15;
                    a(j16, eVar4, r12 + 1, arrayList, r72, r132, arrayList2);
                }
                r72 = r132;
                eVar4 = eVar2;
                j15 = j12;
                j16 = j11;
            }
            eVar.J(eVar4);
        }

        /* JADX WARN: Code restructure failed: missing block: B:86:0x013a, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static ed.x b(ed.h... r13) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 404
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ed.x.a.b(ed.h[]):ed.x");
        }
    }

    public x(h[] hVarArr, int[] r22) {
        this.f5359a = hVarArr;
        this.f5360b = r22;
    }

    @Override // m9.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof h) {
            return super.contains((h) obj);
        }
        return false;
    }

    @Override // m9.c, java.util.List
    public final Object get(int r22) {
        return this.f5359a[r22];
    }

    @Override // m9.c, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof h) {
            return super.indexOf((h) obj);
        }
        return -1;
    }

    @Override // m9.a
    public final int l() {
        return this.f5359a.length;
    }

    @Override // m9.c, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof h) {
            return super.lastIndexOf((h) obj);
        }
        return -1;
    }
}
