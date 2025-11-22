package c5;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class m4 {
    public long A;
    public long B;

    @Nullable
    public String C;
    public boolean D;
    public long E;
    public long F;

    /* renamed from: a, reason: collision with root package name */
    public final i4 f1722a;

    /* renamed from: b, reason: collision with root package name */
    public final String f1723b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    public String f1724c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public String f1725d;

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public String f1726e;

    @Nullable
    public String f;

    /* renamed from: g, reason: collision with root package name */
    public long f1727g;

    /* renamed from: h, reason: collision with root package name */
    public long f1728h;

    /* renamed from: i, reason: collision with root package name */
    public long f1729i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    public String f1730j;

    /* renamed from: k, reason: collision with root package name */
    public long f1731k;

    /* renamed from: l, reason: collision with root package name */
    @Nullable
    public String f1732l;

    /* renamed from: m, reason: collision with root package name */
    public long f1733m;

    /* renamed from: n, reason: collision with root package name */
    public long f1734n;

    /* renamed from: o, reason: collision with root package name */
    public boolean f1735o;

    /* renamed from: p, reason: collision with root package name */
    public long f1736p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f1737q;

    /* renamed from: r, reason: collision with root package name */
    @Nullable
    public String f1738r;

    /* renamed from: s, reason: collision with root package name */
    @Nullable
    public Boolean f1739s;

    /* renamed from: t, reason: collision with root package name */
    public long f1740t;

    /* renamed from: u, reason: collision with root package name */
    @Nullable
    public ArrayList f1741u;

    /* renamed from: v, reason: collision with root package name */
    @Nullable
    public String f1742v;
    public long w;

    /* renamed from: x, reason: collision with root package name */
    public long f1743x;

    /* renamed from: y, reason: collision with root package name */
    public long f1744y;

    /* renamed from: z, reason: collision with root package name */
    public long f1745z;

    @WorkerThread
    public m4(i4 i4Var, String str) {
        r3.r.i(i4Var);
        r3.r.f(str);
        this.f1722a = i4Var;
        this.f1723b = str;
        h4 h4Var = i4Var.f1636k;
        i4.e(h4Var);
        h4Var.b();
    }

    @WorkerThread
    public final boolean A() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1737q;
    }

    @WorkerThread
    public final long B() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1731k;
    }

    @WorkerThread
    public final long C() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1740t;
    }

    @Nullable
    @WorkerThread
    public final String D() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1738r;
    }

    @Nullable
    @WorkerThread
    public final String E() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        String str = this.C;
        t(null);
        return str;
    }

    @WorkerThread
    public final String F() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1723b;
    }

    @Nullable
    @WorkerThread
    public final String G() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1724c;
    }

    @Nullable
    @WorkerThread
    public final String H() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1730j;
    }

    @Nullable
    @WorkerThread
    public final String I() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f;
    }

    @Nullable
    @WorkerThread
    public final String J() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1742v;
    }

    @Nullable
    @WorkerThread
    public final String K() {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        return this.f1725d;
    }

    @WorkerThread
    public final void a(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ v7.W(this.f1738r, str);
        this.f1738r = str;
    }

    @WorkerThread
    public final void b(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1736p != j10;
        this.f1736p = j10;
    }

    @WorkerThread
    public final void c(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.f1724c, str);
        this.f1724c = str;
    }

    @WorkerThread
    public final void d(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.f1732l, str);
        this.f1732l = str;
    }

    @WorkerThread
    public final void e(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.f1730j, str);
        this.f1730j = str;
    }

    @WorkerThread
    public final void f(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1731k != j10;
        this.f1731k = j10;
    }

    @WorkerThread
    public final void g(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.E != j10;
        this.E = j10;
    }

    @WorkerThread
    public final void h(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1745z != j10;
        this.f1745z = j10;
    }

    @WorkerThread
    public final void i(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.A != j10;
        this.A = j10;
    }

    @WorkerThread
    public final void j(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1744y != j10;
        this.f1744y = j10;
    }

    @WorkerThread
    public final void k(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1743x != j10;
        this.f1743x = j10;
    }

    @WorkerThread
    public final void l(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.B != j10;
        this.B = j10;
    }

    @WorkerThread
    public final void m(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.w != j10;
        this.w = j10;
    }

    @WorkerThread
    public final void n(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1734n != j10;
        this.f1734n = j10;
    }

    @WorkerThread
    public final void o(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1740t != j10;
        this.f1740t = j10;
    }

    @WorkerThread
    public final void p(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.f, str);
        this.f = str;
    }

    @WorkerThread
    public final void q(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ v7.W(this.f1742v, str);
        this.f1742v = str;
    }

    @WorkerThread
    public final void r(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        if (true == TextUtils.isEmpty(str)) {
            str = null;
        }
        this.D |= true ^ v7.W(this.f1725d, str);
        this.f1725d = str;
    }

    @WorkerThread
    public final void s(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1733m != j10;
        this.f1733m = j10;
    }

    @WorkerThread
    public final void t(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.C, str);
        this.C = str;
    }

    @WorkerThread
    public final void u(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1729i != j10;
        this.f1729i = j10;
    }

    @WorkerThread
    public final void v(long j10) {
        r3.r.a(j10 >= 0);
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1727g != j10;
        this.f1727g = j10;
    }

    @WorkerThread
    public final void w(long j10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1728h != j10;
        this.f1728h = j10;
    }

    @WorkerThread
    public final void x(boolean z10) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= this.f1735o != z10;
        this.f1735o = z10;
    }

    @WorkerThread
    public final void y(@Nullable String str) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        this.D |= !v7.W(this.f1726e, str);
        this.f1726e = str;
    }

    @WorkerThread
    public final void z(@Nullable List<String> list) {
        h4 h4Var = this.f1722a.f1636k;
        i4.e(h4Var);
        h4Var.b();
        ArrayList arrayList = this.f1741u;
        if (arrayList == null && list == null) {
            return;
        }
        if (arrayList != null && arrayList.equals(list)) {
            return;
        }
        this.D = true;
        this.f1741u = list != null ? new ArrayList(list) : null;
    }
}
