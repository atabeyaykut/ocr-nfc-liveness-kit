package p;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.os.Build;

/* loaded from: classes.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final Context f12166a;

    /* renamed from: b, reason: collision with root package name */
    public final Bitmap.Config f12167b;

    /* renamed from: c, reason: collision with root package name */
    public final ColorSpace f12168c;

    /* renamed from: d, reason: collision with root package name */
    public final q.e f12169d;

    /* renamed from: e, reason: collision with root package name */
    public final int f12170e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f12171g;

    /* renamed from: h, reason: collision with root package name */
    public final boolean f12172h;

    /* renamed from: i, reason: collision with root package name */
    public final String f12173i;

    /* renamed from: j, reason: collision with root package name */
    public final rc.q f12174j;

    /* renamed from: k, reason: collision with root package name */
    public final o f12175k;

    /* renamed from: l, reason: collision with root package name */
    public final l f12176l;

    /* renamed from: m, reason: collision with root package name */
    public final int f12177m;

    /* renamed from: n, reason: collision with root package name */
    public final int f12178n;

    /* renamed from: o, reason: collision with root package name */
    public final int f12179o;

    public k(Context context, Bitmap.Config config, ColorSpace colorSpace, q.e eVar, int r52, boolean z10, boolean z11, boolean z12, String str, rc.q qVar, o oVar, l lVar, int r13, int r14, int r15) {
        this.f12166a = context;
        this.f12167b = config;
        this.f12168c = colorSpace;
        this.f12169d = eVar;
        this.f12170e = r52;
        this.f = z10;
        this.f12171g = z11;
        this.f12172h = z12;
        this.f12173i = str;
        this.f12174j = qVar;
        this.f12175k = oVar;
        this.f12176l = lVar;
        this.f12177m = r13;
        this.f12178n = r14;
        this.f12179o = r15;
    }

    public static k a(k kVar, Bitmap.Config config) {
        Context context = kVar.f12166a;
        ColorSpace colorSpace = kVar.f12168c;
        q.e eVar = kVar.f12169d;
        int r52 = kVar.f12170e;
        boolean z10 = kVar.f;
        boolean z11 = kVar.f12171g;
        boolean z12 = kVar.f12172h;
        String str = kVar.f12173i;
        rc.q qVar = kVar.f12174j;
        o oVar = kVar.f12175k;
        l lVar = kVar.f12176l;
        int r13 = kVar.f12177m;
        int r14 = kVar.f12178n;
        int r15 = kVar.f12179o;
        kVar.getClass();
        return new k(context, config, colorSpace, eVar, r52, z10, z11, z12, str, qVar, oVar, lVar, r13, r14, r15);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k) {
            k kVar = (k) obj;
            if (kotlin.jvm.internal.h.a(this.f12166a, kVar.f12166a) && this.f12167b == kVar.f12167b && ((Build.VERSION.SDK_INT < 26 || kotlin.jvm.internal.h.a(this.f12168c, kVar.f12168c)) && kotlin.jvm.internal.h.a(this.f12169d, kVar.f12169d) && this.f12170e == kVar.f12170e && this.f == kVar.f && this.f12171g == kVar.f12171g && this.f12172h == kVar.f12172h && kotlin.jvm.internal.h.a(this.f12173i, kVar.f12173i) && kotlin.jvm.internal.h.a(this.f12174j, kVar.f12174j) && kotlin.jvm.internal.h.a(this.f12175k, kVar.f12175k) && kotlin.jvm.internal.h.a(this.f12176l, kVar.f12176l) && this.f12177m == kVar.f12177m && this.f12178n == kVar.f12178n && this.f12179o == kVar.f12179o)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r12 = (this.f12167b.hashCode() + (this.f12166a.hashCode() * 31)) * 31;
        ColorSpace colorSpace = this.f12168c;
        int r13 = (((((((g.d.c(this.f12170e) + ((this.f12169d.hashCode() + ((r12 + (colorSpace == null ? 0 : colorSpace.hashCode())) * 31)) * 31)) * 31) + (this.f ? 1231 : 1237)) * 31) + (this.f12171g ? 1231 : 1237)) * 31) + (this.f12172h ? 1231 : 1237)) * 31;
        String str = this.f12173i;
        return g.d.c(this.f12179o) + ((g.d.c(this.f12178n) + ((g.d.c(this.f12177m) + ((this.f12176l.hashCode() + ((this.f12175k.hashCode() + ((this.f12174j.hashCode() + ((r13 + (str != null ? str.hashCode() : 0)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }
}
