package p;

import android.graphics.Bitmap;
import android.os.Build;
import android.widget.ImageView;

/* loaded from: classes.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final e.f f12183a;

    /* renamed from: b, reason: collision with root package name */
    public final u.l f12184b;

    /* renamed from: c, reason: collision with root package name */
    public final u.g f12185c;

    public m(e.f fVar, u.l lVar) {
        u.g iVar;
        this.f12183a = fVar;
        this.f12184b = lVar;
        int r22 = Build.VERSION.SDK_INT;
        if (r22 >= 26) {
            if (!u.a.f17724a) {
                iVar = (r22 == 26 || r22 == 27) ? new u.j() : new u.i(true);
            }
            this.f12185c = iVar;
        }
        boolean z10 = u.a.f17724a;
        iVar = new u.i(false);
        this.f12185c = iVar;
    }

    public static boolean a(g gVar, Bitmap.Config config) {
        if (!(Build.VERSION.SDK_INT >= 26 && config == Bitmap.Config.HARDWARE)) {
            return true;
        }
        if (!gVar.f12132q) {
            return false;
        }
        r.a aVar = gVar.f12119c;
        if (aVar instanceof r.b) {
            ImageView f2468b = ((r.b) aVar).getF2468b();
            if (f2468b.isAttachedToWindow() && !f2468b.isHardwareAccelerated()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p.k b(p.g r20, q.e r21) {
        /*
            r19 = this;
            r0 = r19
            r1 = r20
            r5 = r21
            java.util.List<s.b> r2 = r1.f12127l
            boolean r2 = r2.isEmpty()
            r3 = 0
            r4 = 1
            if (r2 != 0) goto L1d
            android.graphics.Bitmap$Config[] r2 = u.c.f17726a
            android.graphics.Bitmap$Config r6 = r1.f12122g
            boolean r2 = m9.k.o0(r2, r6)
            if (r2 == 0) goto L1b
            goto L1d
        L1b:
            r2 = 0
            goto L1e
        L1d:
            r2 = 1
        L1e:
            if (r2 == 0) goto L37
            android.graphics.Bitmap$Config r2 = r1.f12122g
            boolean r2 = a(r1, r2)
            if (r2 == 0) goto L32
            u.g r2 = r0.f12185c
            boolean r2 = r2.a(r5)
            if (r2 == 0) goto L32
            r2 = 1
            goto L33
        L32:
            r2 = 0
        L33:
            if (r2 == 0) goto L37
            r2 = 1
            goto L38
        L37:
            r2 = 0
        L38:
            if (r2 == 0) goto L3d
            android.graphics.Bitmap$Config r2 = r1.f12122g
            goto L3f
        L3d:
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ARGB_8888
        L3f:
            r6 = r2
            u.l r2 = r0.f12184b
            boolean r2 = r2.f17747d
            if (r2 == 0) goto L4b
            int r2 = r1.f12137v
            r16 = r2
            goto L4e
        L4b:
            r2 = 4
            r16 = 4
        L4e:
            boolean r2 = r1.f12133r
            if (r2 == 0) goto L60
            java.util.List<s.b> r2 = r1.f12127l
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L60
            android.graphics.Bitmap$Config r2 = android.graphics.Bitmap.Config.ALPHA_8
            if (r6 == r2) goto L60
            r8 = 1
            goto L61
        L60:
            r8 = 0
        L61:
            q.a r2 = r5.f13261a
            q.a$b r3 = q.a.b.f13255a
            boolean r2 = kotlin.jvm.internal.h.a(r2, r3)
            if (r2 != 0) goto L78
            q.a r2 = r5.f13262b
            boolean r2 = kotlin.jvm.internal.h.a(r2, r3)
            if (r2 == 0) goto L74
            goto L78
        L74:
            int r2 = r1.C
            r7 = r2
            goto L7a
        L78:
            r2 = 2
            r7 = 2
        L7a:
            p.k r17 = new p.k
            android.content.Context r2 = r1.f12117a
            android.graphics.ColorSpace r4 = r1.f12123h
            boolean r9 = u.b.a(r20)
            boolean r10 = r1.f12134s
            java.lang.String r11 = r1.f
            rc.q r12 = r1.f12129n
            p.o r13 = r1.f12130o
            p.l r14 = r1.D
            int r15 = r1.f12135t
            int r3 = r1.f12136u
            r1 = r17
            r18 = r3
            r3 = r6
            r5 = r21
            r6 = r7
            r7 = r9
            r9 = r10
            r10 = r11
            r11 = r12
            r12 = r13
            r13 = r14
            r14 = r15
            r15 = r18
            r1.<init>(r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16)
            return r17
        */
        throw new UnsupportedOperationException("Method not decompiled: p.m.b(p.g, q.e):p.k");
    }
}
