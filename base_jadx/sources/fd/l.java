package fd;

import ed.h;
import ed.z;

/* loaded from: classes2.dex */
public final class l {

    /* renamed from: a, reason: collision with root package name */
    public static final ed.h f5613a;

    /* renamed from: b, reason: collision with root package name */
    public static final ed.h f5614b;

    /* renamed from: c, reason: collision with root package name */
    public static final ed.h f5615c;

    /* renamed from: d, reason: collision with root package name */
    public static final ed.h f5616d;

    /* renamed from: e, reason: collision with root package name */
    public static final ed.h f5617e;

    static {
        ed.h hVar = ed.h.f5315d;
        f5613a = h.a.b("/");
        f5614b = h.a.b("\\");
        f5615c = h.a.b("/\\");
        f5616d = h.a.b(".");
        f5617e = h.a.b("..");
    }

    public static final int a(z zVar) {
        if (zVar.f5364a.r() == 0) {
            return -1;
        }
        ed.h hVar = zVar.f5364a;
        boolean z10 = false;
        if (hVar.x(0) != ((byte) 47)) {
            byte b10 = (byte) 92;
            if (hVar.x(0) != b10) {
                if (hVar.r() <= 2 || hVar.x(1) != ((byte) 58) || hVar.x(2) != b10) {
                    return -1;
                }
                char cX = (char) hVar.x(0);
                if (!('a' <= cX && cX <= 'z')) {
                    if ('A' <= cX && cX <= 'Z') {
                        z10 = true;
                    }
                    if (!z10) {
                        return -1;
                    }
                }
                return 3;
            }
            if (hVar.r() > 2 && hVar.x(1) == b10) {
                ed.h other = f5614b;
                kotlin.jvm.internal.h.f(other, "other");
                int r02 = hVar.u(2, other.f5316a);
                return r02 == -1 ? hVar.r() : r02;
            }
        }
        return 1;
    }

    public static final z b(z zVar, z child, boolean z10) {
        kotlin.jvm.internal.h.f(zVar, "<this>");
        kotlin.jvm.internal.h.f(child, "child");
        if ((a(child) != -1) || child.t() != null) {
            return child;
        }
        ed.h hVarC = c(zVar);
        if (hVarC == null && (hVarC = c(child)) == null) {
            hVarC = f(z.f5363b);
        }
        ed.e eVar = new ed.e();
        eVar.F(zVar.f5364a);
        if (eVar.f5304b > 0) {
            eVar.F(hVarC);
        }
        eVar.F(child.f5364a);
        return d(eVar, z10);
    }

    public static final ed.h c(z zVar) {
        ed.h hVar = zVar.f5364a;
        ed.h hVar2 = f5613a;
        if (ed.h.v(hVar, hVar2) != -1) {
            return hVar2;
        }
        ed.h hVar3 = f5614b;
        if (ed.h.v(zVar.f5364a, hVar3) != -1) {
            return hVar3;
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0146  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x0125 A[EDGE_INSN: B:118:0x0125->B:94:0x0125 BREAK  A[LOOP:1: B:62:0x00b7->B:130:0x00b7], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009c  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x012b A[LOOP:2: B:96:0x012b->B:102:0x013e, LOOP_START, PHI: r3
      0x012b: PHI (r3v1 int) = (r3v0 int), (r3v4 int) binds: [B:95:0x0129, B:102:0x013e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final ed.z d(ed.e r18, boolean r19) throws java.io.EOFException {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: fd.l.d(ed.e, boolean):ed.z");
    }

    public static final ed.h e(byte b10) {
        if (b10 == 47) {
            return f5613a;
        }
        if (b10 == 92) {
            return f5614b;
        }
        throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Byte.valueOf(b10), "not a directory separator: "));
    }

    public static final ed.h f(String str) {
        if (kotlin.jvm.internal.h.a(str, "/")) {
            return f5613a;
        }
        if (kotlin.jvm.internal.h.a(str, "\\")) {
            return f5614b;
        }
        throw new IllegalArgumentException(kotlin.jvm.internal.h.k(str, "not a directory separator: "));
    }
}
