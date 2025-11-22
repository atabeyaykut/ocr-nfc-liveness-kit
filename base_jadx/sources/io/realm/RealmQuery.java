package io.realm;

import io.realm.internal.OsResults;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.Table;
import io.realm.internal.TableQuery;
import io.realm.internal.objectstore.OsKeyPathMapping;
import java.util.Locale;

/* loaded from: classes2.dex */
public class RealmQuery<E> {

    /* renamed from: a, reason: collision with root package name */
    public final Table f7445a;

    /* renamed from: b, reason: collision with root package name */
    public final g0 f7446b;

    /* renamed from: c, reason: collision with root package name */
    public final TableQuery f7447c;

    /* renamed from: d, reason: collision with root package name */
    public final x0 f7448d;

    /* renamed from: e, reason: collision with root package name */
    public final Class<E> f7449e;
    public final boolean f;

    public static /* synthetic */ class a {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f7450a;

        static {
            int[] r02 = new int[RealmFieldType.values().length];
            f7450a = r02;
            try {
                r02[RealmFieldType.INTEGER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7450a[RealmFieldType.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7450a[RealmFieldType.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f7450a[RealmFieldType.DECIMAL128.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f7450a[RealmFieldType.MIXED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public RealmQuery(g0 g0Var, Class<E> cls) {
        this.f7446b = g0Var;
        this.f7449e = cls;
        boolean z10 = !s0.class.isAssignableFrom(cls);
        this.f = z10;
        if (z10) {
            throw new UnsupportedOperationException("Queries on primitive lists are not yet supported");
        }
        x0 x0VarB = g0Var.f7539j.b(cls);
        this.f7448d = x0VarB;
        Table table = x0VarB.f7895b;
        this.f7445a = table;
        this.f7447c = table.y();
    }

    public final void a(Boolean bool) {
        g0 g0Var = this.f7446b;
        g0Var.b();
        this.f7447c.a(g0Var.f7539j.f7912e, "isFavorite", new h0(bool == null ? new z() : new f(bool)));
    }

    public final void b(Integer num, String str) {
        g0 g0Var = this.f7446b;
        g0Var.b();
        this.f7447c.a(g0Var.f7539j.f7912e, str, new h0(num == null ? new z() : new w(num)));
    }

    public final void c(String str, String str2) {
        g0 g0Var = this.f7446b;
        g0Var.b();
        h0 h0Var = new h0(str2 == null ? new z() : new c1(str2));
        g0Var.b();
        this.f7447c.a(g0Var.f7539j.f7912e, str, h0Var);
    }

    public final y0<E> d() {
        g0 g0Var = this.f7446b;
        g0Var.b();
        g0Var.a();
        OsSharedRealm osSharedRealm = g0Var.f7457e;
        int r22 = OsResults.f7612h;
        TableQuery tableQuery = this.f7447c;
        tableQuery.j();
        y0<E> y0Var = new y0<>(g0Var, new OsResults(osSharedRealm, tableQuery.f7637a, OsResults.nativeCreateResults(osSharedRealm.getNativePtr(), tableQuery.f7638b)), this.f7449e);
        y0Var.f7490a.b();
        y0Var.f7493d.e();
        return y0Var;
    }

    public final s0 e() {
        g0 g0Var = this.f7446b;
        g0Var.b();
        g0Var.a();
        if (this.f) {
            return null;
        }
        long jB = this.f7447c.b();
        if (jB < 0) {
            return null;
        }
        return g0Var.f(this.f7449e, null, jB);
    }

    public final void f() {
        this.f7446b.b();
        TableQuery tableQuery = this.f7447c;
        tableQuery.getClass();
        tableQuery.h(null, "LIMIT(6)");
    }

    public final Number g(String str) {
        g0 g0Var = this.f7446b;
        g0Var.b();
        g0Var.a();
        long jE = this.f7448d.f7896c.e(str);
        if (jE < 0) {
            throw new IllegalArgumentException("Field does not exist: ".concat(str));
        }
        int r22 = a.f7450a[this.f7445a.k(jE).ordinal()];
        TableQuery tableQuery = this.f7447c;
        if (r22 == 1) {
            return tableQuery.f(jE);
        }
        if (r22 == 2) {
            return tableQuery.e(jE);
        }
        if (r22 == 3) {
            return tableQuery.d(jE);
        }
        if (r22 == 4) {
            return tableQuery.c(jE);
        }
        throw new IllegalArgumentException(String.format(Locale.US, "Field '%s': type mismatch - %s expected.", str, "int, float or double"));
    }

    public final void h(String str) {
        g0 g0Var = this.f7446b;
        g0Var.b();
        g0Var.b();
        String[] strArr = {str};
        int[] r92 = {1};
        g0Var.b();
        OsKeyPathMapping osKeyPathMapping = g0Var.f7539j.f7912e;
        TableQuery tableQuery = this.f7447c;
        tableQuery.getClass();
        StringBuilder sb2 = new StringBuilder("SORT(");
        String str2 = strArr[0];
        sb2.append(str2 == null ? null : str2.replace(" ", "\\ "));
        sb2.append(" ");
        sb2.append(r92[0] == 1 ? "ASC" : "DESC");
        sb2.append(")");
        tableQuery.h(osKeyPathMapping, sb2.toString());
    }
}
