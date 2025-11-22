package m1;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import androidx.annotation.CheckResult;
import androidx.annotation.DrawableRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.SimpleArrayMap;
import e1.o;
import java.util.Map;
import m1.a;
import q1.m;
import x0.l;

/* loaded from: classes.dex */
public abstract class a<T extends a<T>> implements Cloneable {
    public boolean A;
    public boolean C;

    /* renamed from: a, reason: collision with root package name */
    public int f9865a;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public Drawable f9869e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    public Drawable f9870g;

    /* renamed from: h, reason: collision with root package name */
    public int f9871h;

    /* renamed from: n, reason: collision with root package name */
    public boolean f9876n;

    /* renamed from: q, reason: collision with root package name */
    @Nullable
    public Drawable f9878q;

    /* renamed from: r, reason: collision with root package name */
    public int f9879r;
    public boolean w;

    /* renamed from: x, reason: collision with root package name */
    @Nullable
    public Resources.Theme f9883x;

    /* renamed from: y, reason: collision with root package name */
    public boolean f9884y;

    /* renamed from: z, reason: collision with root package name */
    public boolean f9885z;

    /* renamed from: b, reason: collision with root package name */
    public float f9866b = 1.0f;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public l f9867c = l.f19014c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public com.bumptech.glide.j f9868d = com.bumptech.glide.j.NORMAL;

    /* renamed from: j, reason: collision with root package name */
    public boolean f9872j = true;

    /* renamed from: k, reason: collision with root package name */
    public int f9873k = -1;

    /* renamed from: l, reason: collision with root package name */
    public int f9874l = -1;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public v0.f f9875m = p1.a.f12218b;

    /* renamed from: p, reason: collision with root package name */
    public boolean f9877p = true;

    /* renamed from: s, reason: collision with root package name */
    @NonNull
    public v0.h f9880s = new v0.h();

    /* renamed from: t, reason: collision with root package name */
    @NonNull
    public q1.b f9881t = new q1.b();

    /* renamed from: v, reason: collision with root package name */
    @NonNull
    public Class<?> f9882v = Object.class;
    public boolean B = true;

    public static boolean g(int r02, int r12) {
        return (r02 & r12) != 0;
    }

    @NonNull
    @CheckResult
    public T b(@NonNull a<?> aVar) {
        if (this.f9884y) {
            return (T) clone().b(aVar);
        }
        if (g(aVar.f9865a, 2)) {
            this.f9866b = aVar.f9866b;
        }
        if (g(aVar.f9865a, 262144)) {
            this.f9885z = aVar.f9885z;
        }
        if (g(aVar.f9865a, 1048576)) {
            this.C = aVar.C;
        }
        if (g(aVar.f9865a, 4)) {
            this.f9867c = aVar.f9867c;
        }
        if (g(aVar.f9865a, 8)) {
            this.f9868d = aVar.f9868d;
        }
        if (g(aVar.f9865a, 16)) {
            this.f9869e = aVar.f9869e;
            this.f = 0;
            this.f9865a &= -33;
        }
        if (g(aVar.f9865a, 32)) {
            this.f = aVar.f;
            this.f9869e = null;
            this.f9865a &= -17;
        }
        if (g(aVar.f9865a, 64)) {
            this.f9870g = aVar.f9870g;
            this.f9871h = 0;
            this.f9865a &= -129;
        }
        if (g(aVar.f9865a, 128)) {
            this.f9871h = aVar.f9871h;
            this.f9870g = null;
            this.f9865a &= -65;
        }
        if (g(aVar.f9865a, 256)) {
            this.f9872j = aVar.f9872j;
        }
        if (g(aVar.f9865a, 512)) {
            this.f9874l = aVar.f9874l;
            this.f9873k = aVar.f9873k;
        }
        if (g(aVar.f9865a, 1024)) {
            this.f9875m = aVar.f9875m;
        }
        if (g(aVar.f9865a, 4096)) {
            this.f9882v = aVar.f9882v;
        }
        if (g(aVar.f9865a, 8192)) {
            this.f9878q = aVar.f9878q;
            this.f9879r = 0;
            this.f9865a &= -16385;
        }
        if (g(aVar.f9865a, 16384)) {
            this.f9879r = aVar.f9879r;
            this.f9878q = null;
            this.f9865a &= -8193;
        }
        if (g(aVar.f9865a, 32768)) {
            this.f9883x = aVar.f9883x;
        }
        if (g(aVar.f9865a, 65536)) {
            this.f9877p = aVar.f9877p;
        }
        if (g(aVar.f9865a, 131072)) {
            this.f9876n = aVar.f9876n;
        }
        if (g(aVar.f9865a, 2048)) {
            this.f9881t.putAll((Map) aVar.f9881t);
            this.B = aVar.B;
        }
        if (g(aVar.f9865a, 524288)) {
            this.A = aVar.A;
        }
        if (!this.f9877p) {
            this.f9881t.clear();
            int r02 = this.f9865a & (-2049);
            this.f9876n = false;
            this.f9865a = r02 & (-131073);
            this.B = true;
        }
        this.f9865a |= aVar.f9865a;
        this.f9880s.f18206b.putAll((SimpleArrayMap) aVar.f9880s.f18206b);
        l();
        return this;
    }

    @Override // 
    @CheckResult
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public T clone() {
        try {
            T t10 = (T) super.clone();
            v0.h hVar = new v0.h();
            t10.f9880s = hVar;
            hVar.f18206b.putAll((SimpleArrayMap) this.f9880s.f18206b);
            q1.b bVar = new q1.b();
            t10.f9881t = bVar;
            bVar.putAll((Map) this.f9881t);
            t10.w = false;
            t10.f9884y = false;
            return t10;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    @NonNull
    @CheckResult
    public final T d(@NonNull Class<?> cls) {
        if (this.f9884y) {
            return (T) clone().d(cls);
        }
        this.f9882v = cls;
        this.f9865a |= 4096;
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final T e(@NonNull l lVar) {
        if (this.f9884y) {
            return (T) clone().e(lVar);
        }
        q1.l.b(lVar);
        this.f9867c = lVar;
        this.f9865a |= 4;
        l();
        return this;
    }

    public boolean equals(Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (Float.compare(aVar.f9866b, this.f9866b) == 0 && this.f == aVar.f && m.b(this.f9869e, aVar.f9869e) && this.f9871h == aVar.f9871h && m.b(this.f9870g, aVar.f9870g) && this.f9879r == aVar.f9879r && m.b(this.f9878q, aVar.f9878q) && this.f9872j == aVar.f9872j && this.f9873k == aVar.f9873k && this.f9874l == aVar.f9874l && this.f9876n == aVar.f9876n && this.f9877p == aVar.f9877p && this.f9885z == aVar.f9885z && this.A == aVar.A && this.f9867c.equals(aVar.f9867c) && this.f9868d == aVar.f9868d && this.f9880s.equals(aVar.f9880s) && this.f9881t.equals(aVar.f9881t) && this.f9882v.equals(aVar.f9882v) && m.b(this.f9875m, aVar.f9875m) && m.b(this.f9883x, aVar.f9883x)) {
                return true;
            }
        }
        return false;
    }

    @NonNull
    @CheckResult
    public final T f(@DrawableRes int r22) {
        if (this.f9884y) {
            return (T) clone().f(r22);
        }
        this.f = r22;
        int r23 = this.f9865a | 32;
        this.f9869e = null;
        this.f9865a = r23 & (-17);
        l();
        return this;
    }

    @NonNull
    public final a h(@NonNull e1.l lVar, @NonNull e1.f fVar) {
        if (this.f9884y) {
            return clone().h(lVar, fVar);
        }
        v0.g gVar = e1.l.f;
        q1.l.b(lVar);
        n(gVar, lVar);
        return s(fVar, false);
    }

    public int hashCode() {
        float f = this.f9866b;
        char[] cArr = m.f13318a;
        return m.f(m.f(m.f(m.f(m.f(m.f(m.f(m.g(m.g(m.g(m.g((((m.g(m.f((m.f((m.f(((Float.floatToIntBits(f) + 527) * 31) + this.f, this.f9869e) * 31) + this.f9871h, this.f9870g) * 31) + this.f9879r, this.f9878q), this.f9872j) * 31) + this.f9873k) * 31) + this.f9874l, this.f9876n), this.f9877p), this.f9885z), this.A), this.f9867c), this.f9868d), this.f9880s), this.f9881t), this.f9882v), this.f9875m), this.f9883x);
    }

    @NonNull
    @CheckResult
    public final T i(int r22, int r32) {
        if (this.f9884y) {
            return (T) clone().i(r22, r32);
        }
        this.f9874l = r22;
        this.f9873k = r32;
        this.f9865a |= 512;
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final T j(@DrawableRes int r22) {
        if (this.f9884y) {
            return (T) clone().j(r22);
        }
        this.f9871h = r22;
        int r23 = this.f9865a | 128;
        this.f9870g = null;
        this.f9865a = r23 & (-65);
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final a k() {
        com.bumptech.glide.j jVar = com.bumptech.glide.j.LOW;
        if (this.f9884y) {
            return clone().k();
        }
        this.f9868d = jVar;
        this.f9865a |= 8;
        l();
        return this;
    }

    @NonNull
    public final void l() {
        if (this.w) {
            throw new IllegalStateException("You cannot modify locked T, consider clone()");
        }
    }

    @NonNull
    @CheckResult
    public final <Y> T n(@NonNull v0.g<Y> gVar, @NonNull Y y10) {
        if (this.f9884y) {
            return (T) clone().n(gVar, y10);
        }
        q1.l.b(gVar);
        q1.l.b(y10);
        this.f9880s.f18206b.put(gVar, y10);
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final a p(@NonNull p1.b bVar) {
        if (this.f9884y) {
            return clone().p(bVar);
        }
        this.f9875m = bVar;
        this.f9865a |= 1024;
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final a q() {
        if (this.f9884y) {
            return clone().q();
        }
        this.f9872j = false;
        this.f9865a |= 256;
        l();
        return this;
    }

    @NonNull
    public final <Y> T r(@NonNull Class<Y> cls, @NonNull v0.l<Y> lVar, boolean z10) {
        if (this.f9884y) {
            return (T) clone().r(cls, lVar, z10);
        }
        q1.l.b(lVar);
        this.f9881t.put(cls, lVar);
        int r22 = this.f9865a | 2048;
        this.f9877p = true;
        int r23 = r22 | 65536;
        this.f9865a = r23;
        this.B = false;
        if (z10) {
            this.f9865a = r23 | 131072;
            this.f9876n = true;
        }
        l();
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public final T s(@NonNull v0.l<Bitmap> lVar, boolean z10) {
        if (this.f9884y) {
            return (T) clone().s(lVar, z10);
        }
        o oVar = new o(lVar, z10);
        r(Bitmap.class, lVar, z10);
        r(Drawable.class, oVar, z10);
        r(BitmapDrawable.class, oVar, z10);
        r(i1.c.class, new i1.f(lVar), z10);
        l();
        return this;
    }

    @NonNull
    @CheckResult
    public final a t() {
        if (this.f9884y) {
            return clone().t();
        }
        this.C = true;
        this.f9865a |= 1048576;
        l();
        return this;
    }
}
