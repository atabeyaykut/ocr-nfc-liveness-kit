package c5;

import androidx.collection.ArrayMap;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class g8 extends j7 {

    /* renamed from: d, reason: collision with root package name */
    public String f1582d;

    /* renamed from: e, reason: collision with root package name */
    public HashSet f1583e;
    public ArrayMap f;

    /* renamed from: g, reason: collision with root package name */
    public Long f1584g;

    /* renamed from: h, reason: collision with root package name */
    public Long f1585h;

    public g8(o7 o7Var) {
        super(o7Var);
    }

    @Override // c5.j7
    public final void e() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final b8 g(Integer num) {
        if (this.f.containsKey(num)) {
            return (b8) this.f.get(num);
        }
        b8 b8Var = new b8(this, this.f1582d);
        this.f.put(num, b8Var);
        return b8Var;
    }
}
