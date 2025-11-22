package c5;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class b4 implements u7 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f1418a;

    public /* synthetic */ b4(int r22) {
        this.f1418a = new ArrayList(r22);
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public b4(int r12, int r22) {
        this(TimeUnit.MINUTES);
        if (r12 != 5) {
            this.f1418a = new Bundle();
        }
    }

    public /* synthetic */ b4(Boolean bool) {
        bool.booleanValue();
        this.f1418a = new b0.a();
    }

    public /* synthetic */ b4(TimeUnit timeUnit) {
        kotlin.jvm.internal.h.f(timeUnit, "timeUnit");
        this.f1418a = new vc.k(uc.d.f17927h, timeUnit);
    }

    @Override // c5.u7
    public final void a(String str, Bundle bundle) throws IllegalStateException {
        boolean zIsEmpty = TextUtils.isEmpty(str);
        Object obj = this.f1418a;
        if (!zIsEmpty) {
            ((o7) obj).l().p(new m7(this, str, bundle));
            return;
        }
        i4 i4Var = ((o7) obj).f1828m;
        if (i4Var != null) {
            e3 e3Var = i4Var.f1635j;
            i4.e(e3Var);
            e3Var.f.b("_err", "AppId not known when logging event");
        }
    }

    public final void b(Object obj) {
        ((ArrayList) this.f1418a).add(obj);
    }

    public final void c(Object obj) {
        if (obj == null) {
            return;
        }
        boolean z10 = obj instanceof Object[];
        Object obj2 = this.f1418a;
        if (z10) {
            Object[] objArr = (Object[]) obj;
            if (objArr.length > 0) {
                ((ArrayList) obj2).ensureCapacity(((ArrayList) obj2).size() + objArr.length);
                Collections.addAll((ArrayList) obj2, objArr);
                return;
            }
            return;
        }
        if (obj instanceof Collection) {
            ((ArrayList) obj2).addAll((Collection) obj);
            return;
        }
        if (obj instanceof Iterable) {
            Iterator it = ((Iterable) obj).iterator();
            while (it.hasNext()) {
                ((ArrayList) obj2).add(it.next());
            }
            return;
        }
        if (!(obj instanceof Iterator)) {
            throw new UnsupportedOperationException("Don't know how to spread " + obj.getClass());
        }
        Iterator it2 = (Iterator) obj;
        while (it2.hasNext()) {
            ((ArrayList) obj2).add(it2.next());
        }
    }

    public final void d(String str, String value) {
        kotlin.jvm.internal.h.f(value, "value");
        ((Bundle) this.f1418a).putString(str, value);
    }

    public final int e() {
        return ((ArrayList) this.f1418a).size();
    }

    public final Object[] f(Object[] objArr) {
        return ((ArrayList) this.f1418a).toArray(objArr);
    }

    public final void g(int r52, String str, List list, boolean z10, boolean z11) {
        c3 c3Var;
        int r53 = r52 - 1;
        Object obj = this.f1418a;
        if (r53 == 0) {
            e3 e3Var = ((i4) ((c4) obj).f2115a).f1635j;
            i4.e(e3Var);
            c3Var = e3Var.f1512n;
        } else if (r53 == 1) {
            i4 i4Var = (i4) ((c4) obj).f2115a;
            if (z10) {
                e3 e3Var2 = i4Var.f1635j;
                i4.e(e3Var2);
                c3Var = e3Var2.f1506g;
            } else if (z11) {
                e3 e3Var3 = i4Var.f1635j;
                i4.e(e3Var3);
                c3Var = e3Var3.f;
            } else {
                e3 e3Var4 = i4Var.f1635j;
                i4.e(e3Var4);
                c3Var = e3Var4.f1507h;
            }
        } else if (r53 == 3) {
            e3 e3Var5 = ((i4) ((c4) obj).f2115a).f1635j;
            i4.e(e3Var5);
            c3Var = e3Var5.f1513p;
        } else if (r53 != 4) {
            e3 e3Var6 = ((i4) ((c4) obj).f2115a).f1635j;
            i4.e(e3Var6);
            c3Var = e3Var6.f1511m;
        } else {
            i4 i4Var2 = (i4) ((c4) obj).f2115a;
            if (z10) {
                e3 e3Var7 = i4Var2.f1635j;
                i4.e(e3Var7);
                c3Var = e3Var7.f1509k;
            } else if (z11) {
                e3 e3Var8 = i4Var2.f1635j;
                i4.e(e3Var8);
                c3Var = e3Var8.f1508j;
            } else {
                e3 e3Var9 = i4Var2.f1635j;
                i4.e(e3Var9);
                c3Var = e3Var9.f1510l;
            }
        }
        int size = list.size();
        if (size == 1) {
            c3Var.b(list.get(0), str);
            return;
        }
        if (size == 2) {
            c3Var.c(list.get(0), str, list.get(1));
        } else if (size != 3) {
            c3Var.a(str);
        } else {
            c3Var.d(str, list.get(0), list.get(1), list.get(2));
        }
    }

    public /* synthetic */ b4(z4 z4Var) {
        this.f1418a = z4Var;
    }
}
