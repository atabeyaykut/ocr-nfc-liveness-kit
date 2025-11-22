package l0;

import androidx.annotation.Nullable;
import j0.j;
import j0.k;
import j0.l;
import java.util.List;
import java.util.Locale;

/* loaded from: classes.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final List<k0.b> f9294a;

    /* renamed from: b, reason: collision with root package name */
    public final d0.f f9295b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9296c;

    /* renamed from: d, reason: collision with root package name */
    public final long f9297d;

    /* renamed from: e, reason: collision with root package name */
    public final int f9298e;
    public final long f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public final String f9299g;

    /* renamed from: h, reason: collision with root package name */
    public final List<k0.f> f9300h;

    /* renamed from: i, reason: collision with root package name */
    public final l f9301i;

    /* renamed from: j, reason: collision with root package name */
    public final int f9302j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9303k;

    /* renamed from: l, reason: collision with root package name */
    public final int f9304l;

    /* renamed from: m, reason: collision with root package name */
    public final float f9305m;

    /* renamed from: n, reason: collision with root package name */
    public final float f9306n;

    /* renamed from: o, reason: collision with root package name */
    public final int f9307o;

    /* renamed from: p, reason: collision with root package name */
    public final int f9308p;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public final j f9309q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public final k f9310r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public final j0.b f9311s;

    /* renamed from: t, reason: collision with root package name */
    public final List<q0.a<Float>> f9312t;

    /* renamed from: u, reason: collision with root package name */
    public final int f9313u;

    /* renamed from: v, reason: collision with root package name */
    public final boolean f9314v;

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Lk0/b;>;Ld0/f;Ljava/lang/String;JLjava/lang/Object;JLjava/lang/String;Ljava/util/List<Lk0/f;>;Lj0/l;IIIFFIILj0/j;Lj0/k;Ljava/util/List<Lq0/a<Ljava/lang/Float;>;>;Ljava/lang/Object;Lj0/b;Z)V */
    public e(List list, d0.f fVar, String str, long j10, int r92, long j11, @Nullable String str2, List list2, l lVar, int r15, int r16, int r17, float f, float f10, int r20, int r21, @Nullable j jVar, @Nullable k kVar, List list3, int r25, @Nullable j0.b bVar, boolean z10) {
        this.f9294a = list;
        this.f9295b = fVar;
        this.f9296c = str;
        this.f9297d = j10;
        this.f9298e = r92;
        this.f = j11;
        this.f9299g = str2;
        this.f9300h = list2;
        this.f9301i = lVar;
        this.f9302j = r15;
        this.f9303k = r16;
        this.f9304l = r17;
        this.f9305m = f;
        this.f9306n = f10;
        this.f9307o = r20;
        this.f9308p = r21;
        this.f9309q = jVar;
        this.f9310r = kVar;
        this.f9312t = list3;
        this.f9313u = r25;
        this.f9311s = bVar;
        this.f9314v = z10;
    }

    public final String a(String str) {
        int r32;
        StringBuilder sbE = androidx.constraintlayout.core.a.e(str);
        sbE.append(this.f9296c);
        sbE.append("\n");
        long j10 = this.f;
        d0.f fVar = this.f9295b;
        e eVarD = fVar.d(j10);
        if (eVarD != null) {
            String str2 = "\t\tParents: ";
            while (true) {
                sbE.append(str2);
                sbE.append(eVarD.f9296c);
                eVarD = fVar.d(eVarD.f);
                if (eVarD == null) {
                    break;
                }
                str2 = "->";
            }
            sbE.append(str);
            sbE.append("\n");
        }
        List<k0.f> list = this.f9300h;
        if (!list.isEmpty()) {
            sbE.append(str);
            sbE.append("\tMasks: ");
            sbE.append(list.size());
            sbE.append("\n");
        }
        int r22 = this.f9302j;
        if (r22 != 0 && (r32 = this.f9303k) != 0) {
            sbE.append(str);
            sbE.append("\tBackground: ");
            sbE.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(r22), Integer.valueOf(r32), Integer.valueOf(this.f9304l)));
        }
        List<k0.b> list2 = this.f9294a;
        if (!list2.isEmpty()) {
            sbE.append(str);
            sbE.append("\tShapes:\n");
            for (k0.b bVar : list2) {
                sbE.append(str);
                sbE.append("\t\t");
                sbE.append(bVar);
                sbE.append("\n");
            }
        }
        return sbE.toString();
    }

    public final String toString() {
        return a("");
    }
}
