package s4;

import java.util.Map;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public final class w extends n {

    /* renamed from: a, reason: collision with root package name */
    @NullableDecl
    public final Object f15202a;

    /* renamed from: b, reason: collision with root package name */
    public int f15203b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ x f15204c;

    public w(x xVar, int r22) {
        this.f15204c = xVar;
        this.f15202a = xVar.f15215c[r22];
        this.f15203b = r22;
    }

    public final void a() {
        int r02 = this.f15203b;
        Object obj = this.f15202a;
        x xVar = this.f15204c;
        if (r02 == -1 || r02 >= xVar.size() || !x5.a.A(obj, xVar.f15215c[this.f15203b])) {
            Object obj2 = x.f15212k;
            this.f15203b = xVar.d(obj);
        }
    }

    @Override // s4.n, java.util.Map.Entry
    @NullableDecl
    public final Object getKey() {
        return this.f15202a;
    }

    @Override // s4.n, java.util.Map.Entry
    @NullableDecl
    public final Object getValue() {
        x xVar = this.f15204c;
        Map mapA = xVar.a();
        if (mapA != null) {
            return mapA.get(this.f15202a);
        }
        a();
        int r12 = this.f15203b;
        if (r12 == -1) {
            return null;
        }
        return xVar.f15216d[r12];
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        x xVar = this.f15204c;
        Map mapA = xVar.a();
        Object obj2 = this.f15202a;
        if (mapA != null) {
            return mapA.put(obj2, obj);
        }
        a();
        int r12 = this.f15203b;
        if (r12 == -1) {
            xVar.put(obj2, obj);
            return null;
        }
        Object[] objArr = xVar.f15216d;
        Object obj3 = objArr[r12];
        objArr[r12] = obj;
        return obj3;
    }
}
