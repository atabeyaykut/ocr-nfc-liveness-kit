package p;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.ColorSpace;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import androidx.annotation.MainThread;
import androidx.lifecycle.Lifecycle;
import coil.target.ImageViewTarget;
import g.g;
import j.h;
import java.util.LinkedHashMap;
import java.util.List;
import m9.e0;
import m9.v;
import n.b;
import nc.y;
import p.l;
import rc.q;
import t.a;
import t.c;

/* loaded from: classes.dex */
public final class g {
    public final Lifecycle A;
    public final q.f B;
    public final int C;
    public final l D;
    public final b.a E;
    public final Integer F;
    public final Drawable G;
    public final Integer H;
    public final Drawable I;
    public final Integer J;
    public final Drawable K;
    public final p.b L;
    public final p.a M;

    /* renamed from: a, reason: collision with root package name */
    public final Context f12117a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f12118b;

    /* renamed from: c, reason: collision with root package name */
    public final r.a f12119c;

    /* renamed from: d, reason: collision with root package name */
    public final b f12120d;

    /* renamed from: e, reason: collision with root package name */
    public final b.a f12121e;
    public final String f;

    /* renamed from: g, reason: collision with root package name */
    public final Bitmap.Config f12122g;

    /* renamed from: h, reason: collision with root package name */
    public final ColorSpace f12123h;

    /* renamed from: i, reason: collision with root package name */
    public final int f12124i;

    /* renamed from: j, reason: collision with root package name */
    public final l9.g<h.a<?>, Class<?>> f12125j;

    /* renamed from: k, reason: collision with root package name */
    public final g.a f12126k;

    /* renamed from: l, reason: collision with root package name */
    public final List<s.b> f12127l;

    /* renamed from: m, reason: collision with root package name */
    public final c.a f12128m;

    /* renamed from: n, reason: collision with root package name */
    public final rc.q f12129n;

    /* renamed from: o, reason: collision with root package name */
    public final o f12130o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f12131p;

    /* renamed from: q, reason: collision with root package name */
    public final boolean f12132q;

    /* renamed from: r, reason: collision with root package name */
    public final boolean f12133r;

    /* renamed from: s, reason: collision with root package name */
    public final boolean f12134s;

    /* renamed from: t, reason: collision with root package name */
    public final int f12135t;

    /* renamed from: u, reason: collision with root package name */
    public final int f12136u;

    /* renamed from: v, reason: collision with root package name */
    public final int f12137v;
    public final y w;

    /* renamed from: x, reason: collision with root package name */
    public final y f12138x;

    /* renamed from: y, reason: collision with root package name */
    public final y f12139y;

    /* renamed from: z, reason: collision with root package name */
    public final y f12140z;

    public interface b {
        @MainThread
        void a();

        @MainThread
        void onCancel();

        @MainThread
        void onStart();

        @MainThread
        void onSuccess();
    }

    public g() {
        throw null;
    }

    public g(Context context, Object obj, r.a aVar, b bVar, b.a aVar2, String str, Bitmap.Config config, ColorSpace colorSpace, int r11, l9.g gVar, g.a aVar3, List list, c.a aVar4, rc.q qVar, o oVar, boolean z10, boolean z11, boolean z12, boolean z13, int r22, int r23, int r24, y yVar, y yVar2, y yVar3, y yVar4, Lifecycle lifecycle, q.f fVar, int r31, l lVar, b.a aVar5, Integer num, Drawable drawable, Integer num2, Drawable drawable2, Integer num3, Drawable drawable3, p.b bVar2, p.a aVar6) {
        this.f12117a = context;
        this.f12118b = obj;
        this.f12119c = aVar;
        this.f12120d = bVar;
        this.f12121e = aVar2;
        this.f = str;
        this.f12122g = config;
        this.f12123h = colorSpace;
        this.f12124i = r11;
        this.f12125j = gVar;
        this.f12126k = aVar3;
        this.f12127l = list;
        this.f12128m = aVar4;
        this.f12129n = qVar;
        this.f12130o = oVar;
        this.f12131p = z10;
        this.f12132q = z11;
        this.f12133r = z12;
        this.f12134s = z13;
        this.f12135t = r22;
        this.f12136u = r23;
        this.f12137v = r24;
        this.w = yVar;
        this.f12138x = yVar2;
        this.f12139y = yVar3;
        this.f12140z = yVar4;
        this.A = lifecycle;
        this.B = fVar;
        this.C = r31;
        this.D = lVar;
        this.E = aVar5;
        this.F = num;
        this.G = drawable;
        this.H = num2;
        this.I = drawable2;
        this.J = num3;
        this.K = drawable3;
        this.L = bVar2;
        this.M = aVar6;
    }

    public final Drawable a() {
        return u.b.b(this, this.I, this.H, this.M.f12093k);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (kotlin.jvm.internal.h.a(this.f12117a, gVar.f12117a) && kotlin.jvm.internal.h.a(this.f12118b, gVar.f12118b) && kotlin.jvm.internal.h.a(this.f12119c, gVar.f12119c) && kotlin.jvm.internal.h.a(this.f12120d, gVar.f12120d) && kotlin.jvm.internal.h.a(this.f12121e, gVar.f12121e) && kotlin.jvm.internal.h.a(this.f, gVar.f) && this.f12122g == gVar.f12122g && ((Build.VERSION.SDK_INT < 26 || kotlin.jvm.internal.h.a(this.f12123h, gVar.f12123h)) && this.f12124i == gVar.f12124i && kotlin.jvm.internal.h.a(this.f12125j, gVar.f12125j) && kotlin.jvm.internal.h.a(this.f12126k, gVar.f12126k) && kotlin.jvm.internal.h.a(this.f12127l, gVar.f12127l) && kotlin.jvm.internal.h.a(this.f12128m, gVar.f12128m) && kotlin.jvm.internal.h.a(this.f12129n, gVar.f12129n) && kotlin.jvm.internal.h.a(this.f12130o, gVar.f12130o) && this.f12131p == gVar.f12131p && this.f12132q == gVar.f12132q && this.f12133r == gVar.f12133r && this.f12134s == gVar.f12134s && this.f12135t == gVar.f12135t && this.f12136u == gVar.f12136u && this.f12137v == gVar.f12137v && kotlin.jvm.internal.h.a(this.w, gVar.w) && kotlin.jvm.internal.h.a(this.f12138x, gVar.f12138x) && kotlin.jvm.internal.h.a(this.f12139y, gVar.f12139y) && kotlin.jvm.internal.h.a(this.f12140z, gVar.f12140z) && kotlin.jvm.internal.h.a(this.E, gVar.E) && kotlin.jvm.internal.h.a(this.F, gVar.F) && kotlin.jvm.internal.h.a(this.G, gVar.G) && kotlin.jvm.internal.h.a(this.H, gVar.H) && kotlin.jvm.internal.h.a(this.I, gVar.I) && kotlin.jvm.internal.h.a(this.J, gVar.J) && kotlin.jvm.internal.h.a(this.K, gVar.K) && kotlin.jvm.internal.h.a(this.A, gVar.A) && kotlin.jvm.internal.h.a(this.B, gVar.B) && this.C == gVar.C && kotlin.jvm.internal.h.a(this.D, gVar.D) && kotlin.jvm.internal.h.a(this.L, gVar.L) && kotlin.jvm.internal.h.a(this.M, gVar.M))) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int r12 = (this.f12118b.hashCode() + (this.f12117a.hashCode() * 31)) * 31;
        r.a aVar = this.f12119c;
        int r13 = (r12 + (aVar == null ? 0 : aVar.hashCode())) * 31;
        b bVar = this.f12120d;
        int r14 = (r13 + (bVar == null ? 0 : bVar.hashCode())) * 31;
        b.a aVar2 = this.f12121e;
        int r15 = (r14 + (aVar2 == null ? 0 : aVar2.hashCode())) * 31;
        String str = this.f;
        int r22 = (this.f12122g.hashCode() + ((r15 + (str == null ? 0 : str.hashCode())) * 31)) * 31;
        ColorSpace colorSpace = this.f12123h;
        int r16 = (g.d.c(this.f12124i) + ((r22 + (colorSpace == null ? 0 : colorSpace.hashCode())) * 31)) * 31;
        l9.g<h.a<?>, Class<?>> gVar = this.f12125j;
        int r17 = (r16 + (gVar == null ? 0 : gVar.hashCode())) * 31;
        g.a aVar3 = this.f12126k;
        int r18 = (this.D.hashCode() + ((g.d.c(this.C) + ((this.B.hashCode() + ((this.A.hashCode() + ((this.f12140z.hashCode() + ((this.f12139y.hashCode() + ((this.f12138x.hashCode() + ((this.w.hashCode() + ((g.d.c(this.f12137v) + ((g.d.c(this.f12136u) + ((g.d.c(this.f12135t) + ((((((((((this.f12130o.hashCode() + ((this.f12129n.hashCode() + ((this.f12128m.hashCode() + androidx.camera.camera2.internal.c.c(this.f12127l, (r17 + (aVar3 == null ? 0 : aVar3.hashCode())) * 31, 31)) * 31)) * 31)) * 31) + (this.f12131p ? 1231 : 1237)) * 31) + (this.f12132q ? 1231 : 1237)) * 31) + (this.f12133r ? 1231 : 1237)) * 31) + (this.f12134s ? 1231 : 1237)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31)) * 31;
        b.a aVar4 = this.E;
        int r19 = (r18 + (aVar4 == null ? 0 : aVar4.hashCode())) * 31;
        Integer num = this.F;
        int r110 = (r19 + (num == null ? 0 : num.hashCode())) * 31;
        Drawable drawable = this.G;
        int r111 = (r110 + (drawable == null ? 0 : drawable.hashCode())) * 31;
        Integer num2 = this.H;
        int r112 = (r111 + (num2 == null ? 0 : num2.hashCode())) * 31;
        Drawable drawable2 = this.I;
        int r113 = (r112 + (drawable2 == null ? 0 : drawable2.hashCode())) * 31;
        Integer num3 = this.J;
        int r114 = (r113 + (num3 == null ? 0 : num3.hashCode())) * 31;
        Drawable drawable3 = this.K;
        return this.M.hashCode() + ((this.L.hashCode() + ((r114 + (drawable3 != null ? drawable3.hashCode() : 0)) * 31)) * 31);
    }

    public static final class a {
        public final y A;
        public final l.a B;
        public final b.a C;

        @DrawableRes
        public Integer D;
        public Drawable E;

        @DrawableRes
        public Integer F;
        public Drawable G;

        @DrawableRes
        public final Integer H;
        public final Drawable I;
        public final Lifecycle J;
        public final q.f K;
        public final int L;
        public Lifecycle M;
        public q.f N;
        public int O;

        /* renamed from: a, reason: collision with root package name */
        public final Context f12141a;

        /* renamed from: b, reason: collision with root package name */
        public p.a f12142b;

        /* renamed from: c, reason: collision with root package name */
        public Object f12143c;

        /* renamed from: d, reason: collision with root package name */
        public r.a f12144d;

        /* renamed from: e, reason: collision with root package name */
        public final b f12145e;
        public final b.a f;

        /* renamed from: g, reason: collision with root package name */
        public final String f12146g;

        /* renamed from: h, reason: collision with root package name */
        public Bitmap.Config f12147h;

        /* renamed from: i, reason: collision with root package name */
        public final ColorSpace f12148i;

        /* renamed from: j, reason: collision with root package name */
        public final int f12149j;

        /* renamed from: k, reason: collision with root package name */
        public final l9.g<? extends h.a<?>, ? extends Class<?>> f12150k;

        /* renamed from: l, reason: collision with root package name */
        public final g.a f12151l;

        /* renamed from: m, reason: collision with root package name */
        public List<? extends s.b> f12152m;

        /* renamed from: n, reason: collision with root package name */
        public c.a f12153n;

        /* renamed from: o, reason: collision with root package name */
        public final q.a f12154o;

        /* renamed from: p, reason: collision with root package name */
        public final LinkedHashMap f12155p;

        /* renamed from: q, reason: collision with root package name */
        public final boolean f12156q;

        /* renamed from: r, reason: collision with root package name */
        public Boolean f12157r;

        /* renamed from: s, reason: collision with root package name */
        public final Boolean f12158s;

        /* renamed from: t, reason: collision with root package name */
        public final boolean f12159t;

        /* renamed from: u, reason: collision with root package name */
        public final int f12160u;

        /* renamed from: v, reason: collision with root package name */
        public final int f12161v;
        public final int w;

        /* renamed from: x, reason: collision with root package name */
        public final y f12162x;

        /* renamed from: y, reason: collision with root package name */
        public final y f12163y;

        /* renamed from: z, reason: collision with root package name */
        public final y f12164z;

        public a(Context context) {
            this.f12141a = context;
            this.f12142b = u.b.f17725a;
            this.f12143c = null;
            this.f12144d = null;
            this.f12145e = null;
            this.f = null;
            this.f12146g = null;
            this.f12147h = null;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f12148i = null;
            }
            this.f12149j = 0;
            this.f12150k = null;
            this.f12151l = null;
            this.f12152m = v.f10173a;
            this.f12153n = null;
            this.f12154o = null;
            this.f12155p = null;
            this.f12156q = true;
            this.f12157r = null;
            this.f12158s = null;
            this.f12159t = true;
            this.f12160u = 0;
            this.f12161v = 0;
            this.w = 0;
            this.f12162x = null;
            this.f12163y = null;
            this.f12164z = null;
            this.A = null;
            this.B = null;
            this.C = null;
            this.D = null;
            this.E = null;
            this.F = null;
            this.G = null;
            this.H = null;
            this.I = null;
            this.J = null;
            this.K = null;
            this.L = 0;
            this.M = null;
            this.N = null;
            this.O = 0;
        }

        /* JADX WARN: Removed duplicated region for block: B:93:0x0143  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p.g a() {
            /*
                Method dump skipped, instructions count: 646
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p.g.a.a():p.g");
        }

        public final void b() {
            this.f12153n = new a.C0249a(100, 2);
        }

        public final void c(@DrawableRes int r12) {
            this.F = Integer.valueOf(r12);
            this.G = null;
        }

        public final void d(@DrawableRes int r12) {
            this.D = Integer.valueOf(r12);
            this.E = null;
        }

        public final void e(ImageView imageView) {
            this.f12144d = new ImageViewTarget(imageView);
            this.M = null;
            this.N = null;
            this.O = 0;
        }

        public a(g gVar, Context context) {
            int r42;
            this.f12141a = context;
            this.f12142b = gVar.M;
            this.f12143c = gVar.f12118b;
            this.f12144d = gVar.f12119c;
            this.f12145e = gVar.f12120d;
            this.f = gVar.f12121e;
            this.f12146g = gVar.f;
            p.b bVar = gVar.L;
            this.f12147h = bVar.f12106j;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f12148i = gVar.f12123h;
            }
            this.f12149j = bVar.f12105i;
            this.f12150k = gVar.f12125j;
            this.f12151l = gVar.f12126k;
            this.f12152m = gVar.f12127l;
            this.f12153n = bVar.f12104h;
            this.f12154o = gVar.f12129n.u();
            this.f12155p = e0.V0(gVar.f12130o.f12193a);
            this.f12156q = gVar.f12131p;
            this.f12157r = bVar.f12107k;
            this.f12158s = bVar.f12108l;
            this.f12159t = gVar.f12134s;
            this.f12160u = bVar.f12109m;
            this.f12161v = bVar.f12110n;
            this.w = bVar.f12111o;
            this.f12162x = bVar.f12101d;
            this.f12163y = bVar.f12102e;
            this.f12164z = bVar.f;
            this.A = bVar.f12103g;
            l lVar = gVar.D;
            lVar.getClass();
            this.B = new l.a(lVar);
            this.C = gVar.E;
            this.D = gVar.F;
            this.E = gVar.G;
            this.F = gVar.H;
            this.G = gVar.I;
            this.H = gVar.J;
            this.I = gVar.K;
            this.J = bVar.f12098a;
            this.K = bVar.f12099b;
            this.L = bVar.f12100c;
            if (gVar.f12117a == context) {
                this.M = gVar.A;
                this.N = gVar.B;
                r42 = gVar.C;
            } else {
                this.M = null;
                this.N = null;
                r42 = 0;
            }
            this.O = r42;
        }
    }
}
