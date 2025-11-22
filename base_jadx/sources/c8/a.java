package c8;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RecentlyNonNull;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;
import s4.l9;
import s4.n9;
import s4.p9;
import s4.r0;
import s4.r9;

/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f2239a;

    /* renamed from: c8.a$a, reason: collision with other inner class name */
    public static class C0053a extends c {
        public C0053a(@RecentlyNonNull String str, @RecentlyNonNull List list, @RecentlyNonNull String str2) {
            super(str, list, str2);
        }

        public C0053a(@NonNull n9 n9Var) {
            super(n9Var.f15110a, n9Var.f15112c, n9Var.f15113d);
        }
    }

    public static class b extends c {

        /* renamed from: c, reason: collision with root package name */
        @GuardedBy("this")
        public final List<C0053a> f2240c;

        public b(@RecentlyNonNull String str, @RecentlyNonNull List list, @RecentlyNonNull String str2, @RecentlyNonNull AbstractList abstractList) {
            super(str, list, str2);
            this.f2240c = abstractList;
        }

        public b(@NonNull p9 p9Var) {
            super(p9Var.f15132a, p9Var.f15134c, p9Var.f15135d);
            this.f2240c = s4.b.a(p9Var.f15136e, a2.b.f38b);
        }

        @NonNull
        public final synchronized List<C0053a> b() {
            return this.f2240c;
        }
    }

    public static class c {

        /* renamed from: a, reason: collision with root package name */
        public final String f2241a;

        /* renamed from: b, reason: collision with root package name */
        public final String f2242b;

        public c(String str, List list, String str2) {
            this.f2241a = str;
            this.f2242b = str2;
        }

        @NonNull
        public final String a() {
            String str = this.f2241a;
            return str == null ? "" : str;
        }
    }

    public static class d extends c {

        /* renamed from: c, reason: collision with root package name */
        @GuardedBy("this")
        public final List<b> f2243c;

        public d(@RecentlyNonNull String str, @RecentlyNonNull List list, @RecentlyNonNull String str2, @RecentlyNonNull AbstractList abstractList) {
            super(str, list, str2);
            this.f2243c = abstractList;
        }

        public d(@NonNull l9 l9Var) {
            super(l9Var.f15066a, l9Var.f15068c, l9Var.f15069d);
            this.f2243c = s4.b.a(l9Var.f15070e, b0.a.f1002a);
        }
    }

    public a(@RecentlyNonNull r0 r0Var) {
        ArrayList arrayList = new ArrayList();
        this.f2239a = arrayList;
        arrayList.addAll(r0Var);
    }

    public a(@NonNull r9 r9Var) {
        ArrayList arrayList = new ArrayList();
        this.f2239a = arrayList;
        r9Var.getClass();
        arrayList.addAll(s4.b.a(r9Var.f15166b, a0.b.f6c));
    }
}
