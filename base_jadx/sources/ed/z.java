package ed;

import java.io.File;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class z implements Comparable<z> {

    /* renamed from: b, reason: collision with root package name */
    public static final String f5363b;

    /* renamed from: a, reason: collision with root package name */
    public final h f5364a;

    public static final class a {
        public static z a(String str, boolean z10) {
            kotlin.jvm.internal.h.f(str, "<this>");
            h hVar = fd.l.f5613a;
            e eVar = new e();
            eVar.i0(str);
            return fd.l.d(eVar, z10);
        }

        public static z b(File file) {
            String str = z.f5363b;
            kotlin.jvm.internal.h.f(file, "<this>");
            String string = file.toString();
            kotlin.jvm.internal.h.e(string, "toString()");
            return a(string, false);
        }
    }

    static {
        new a();
        String separator = File.separator;
        kotlin.jvm.internal.h.e(separator, "separator");
        f5363b = separator;
    }

    public z(h bytes) {
        kotlin.jvm.internal.h.f(bytes, "bytes");
        this.f5364a = bytes;
    }

    @Override // java.lang.Comparable
    public final int compareTo(z zVar) {
        z other = zVar;
        kotlin.jvm.internal.h.f(other, "other");
        return this.f5364a.compareTo(other.f5364a);
    }

    public final boolean equals(Object obj) {
        return (obj instanceof z) && kotlin.jvm.internal.h.a(((z) obj).f5364a, this.f5364a);
    }

    public final int hashCode() {
        return this.f5364a.hashCode();
    }

    public final ArrayList n() {
        ArrayList arrayList = new ArrayList();
        int r12 = fd.l.a(this);
        h hVar = this.f5364a;
        if (r12 == -1) {
            r12 = 0;
        } else if (r12 < hVar.r() && hVar.x(r12) == ((byte) 92)) {
            r12++;
        }
        int r22 = hVar.r();
        if (r12 < r22) {
            int r52 = r12;
            while (true) {
                int r6 = r12 + 1;
                if (hVar.x(r12) == ((byte) 47) || hVar.x(r12) == ((byte) 92)) {
                    arrayList.add(hVar.C(r52, r12));
                    r52 = r6;
                }
                if (r6 >= r22) {
                    break;
                }
                r12 = r6;
            }
            r12 = r52;
        }
        if (r12 < hVar.r()) {
            arrayList.add(hVar.C(r12, hVar.r()));
        }
        return arrayList;
    }

    public final z o() {
        z zVar;
        h hVar = fd.l.f5616d;
        h hVar2 = this.f5364a;
        if (!kotlin.jvm.internal.h.a(hVar2, hVar)) {
            h hVar3 = fd.l.f5613a;
            if (!kotlin.jvm.internal.h.a(hVar2, hVar3)) {
                h prefix = fd.l.f5614b;
                if (!kotlin.jvm.internal.h.a(hVar2, prefix)) {
                    h suffix = fd.l.f5617e;
                    hVar2.getClass();
                    kotlin.jvm.internal.h.f(suffix, "suffix");
                    int r52 = hVar2.r();
                    byte[] bArr = suffix.f5316a;
                    if (!(hVar2.B(r52 - bArr.length, suffix, bArr.length) && (hVar2.r() == 2 || hVar2.B(hVar2.r() + (-3), hVar3, 1) || hVar2.B(hVar2.r() + (-3), prefix, 1)))) {
                        int r22 = h.z(hVar2, hVar3);
                        if (r22 == -1) {
                            r22 = h.z(hVar2, prefix);
                        }
                        if (r22 != 2 || t() == null) {
                            if (r22 == 1) {
                                kotlin.jvm.internal.h.f(prefix, "prefix");
                                if (!hVar2.B(0, prefix, prefix.r())) {
                                }
                            }
                            if (r22 != -1 || t() == null) {
                                if (r22 == -1) {
                                    return new z(hVar);
                                }
                                zVar = new z(r22 == 0 ? h.E(hVar2, 0, 1, 1) : h.E(hVar2, 0, r22, 1));
                            } else if (hVar2.r() != 2) {
                                zVar = new z(h.E(hVar2, 0, 2, 1));
                            }
                            return zVar;
                        }
                        if (hVar2.r() != 3) {
                            zVar = new z(h.E(hVar2, 0, 3, 1));
                            return zVar;
                        }
                    }
                }
            }
        }
        return null;
    }

    public final z q(String child) {
        kotlin.jvm.internal.h.f(child, "child");
        e eVar = new e();
        eVar.i0(child);
        return fd.l.b(this, fd.l.d(eVar, false), false);
    }

    @IgnoreJRERequirement
    public final Path r() {
        Path path = Paths.get(toString(), new String[0]);
        kotlin.jvm.internal.h.e(path, "get(toString())");
        return path;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003c, code lost:
    
        if (('A' <= r1 && r1 <= 'Z') == false) goto L25;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Character t() {
        /*
            r4 = this;
            ed.h r0 = fd.l.f5613a
            ed.h r1 = r4.f5364a
            int r0 = ed.h.v(r1, r0)
            r2 = -1
            if (r0 == r2) goto Lc
            goto L3e
        Lc:
            int r0 = r1.r()
            r2 = 2
            if (r0 >= r2) goto L14
            goto L3e
        L14:
            r0 = 1
            byte r2 = r1.x(r0)
            r3 = 58
            byte r3 = (byte) r3
            if (r2 == r3) goto L1f
            goto L3e
        L1f:
            r2 = 0
            byte r1 = r1.x(r2)
            char r1 = (char) r1
            r3 = 97
            if (r3 > r1) goto L2f
            r3 = 122(0x7a, float:1.71E-43)
            if (r1 > r3) goto L2f
            r3 = 1
            goto L30
        L2f:
            r3 = 0
        L30:
            if (r3 != 0) goto L40
            r3 = 65
            if (r3 > r1) goto L3b
            r3 = 90
            if (r1 > r3) goto L3b
            goto L3c
        L3b:
            r0 = 0
        L3c:
            if (r0 != 0) goto L40
        L3e:
            r0 = 0
            goto L44
        L40:
            java.lang.Character r0 = java.lang.Character.valueOf(r1)
        L44:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ed.z.t():java.lang.Character");
    }

    public final File toFile() {
        return new File(toString());
    }

    public final String toString() {
        return this.f5364a.G();
    }
}
