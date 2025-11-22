package p4;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class j0 extends z {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final Object f12423a;

    /* renamed from: b, reason: collision with root package name */
    public int f12424b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l0 f12425c;

    public j0(l0 l0Var, int r22) {
        this.f12425c = l0Var;
        this.f12423a = l0Var.f12464c[r22];
        this.f12424b = r22;
    }

    public final void a() {
        int r02 = this.f12424b;
        Object obj = this.f12423a;
        l0 l0Var = this.f12425c;
        if (r02 == -1 || r02 >= l0Var.size() || !m0.b(obj, l0Var.f12464c[this.f12424b])) {
            Object obj2 = l0.f12461k;
            this.f12424b = l0Var.d(obj);
        }
    }

    @Override // p4.z, java.util.Map.Entry
    @NullableDecl
    public final Object getKey() {
        return this.f12423a;
    }

    @Override // p4.z, java.util.Map.Entry
    @NullableDecl
    public final Object getValue() {
        l0 l0Var = this.f12425c;
        Map mapA = l0Var.a();
        if (mapA != null) {
            return mapA.get(this.f12423a);
        }
        a();
        int r12 = this.f12424b;
        if (r12 == -1) {
            return null;
        }
        return l0Var.f12465d[r12];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        l0 l0Var = this.f12425c;
        Map mapA = l0Var.a();
        Object obj2 = this.f12423a;
        if (mapA != null) {
            return mapA.put(obj2, obj);
        }
        a();
        int r12 = this.f12424b;
        if (r12 == -1) {
            l0Var.put(obj2, obj);
            return null;
        }
        Object[] objArr = l0Var.f12465d;
        Object obj3 = objArr[r12];
        objArr[r12] = obj;
        return obj3;
    }
}
