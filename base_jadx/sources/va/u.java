package va;

import java.util.Map;

/* loaded from: classes2.dex */
public final class u extends kotlin.jvm.internal.j implements x9.a<String[]> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ v f18376a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u(v vVar) {
        super(0);
        this.f18376a = vVar;
    }

    @Override // x9.a
    public final String[] invoke() {
        n9.a aVar = new n9.a();
        v vVar = this.f18376a;
        aVar.add(vVar.f18377a.f18328a);
        b0 b0Var = vVar.f18378b;
        if (b0Var != null) {
            aVar.add("under-migration:" + b0Var.f18328a);
        }
        for (Map.Entry<lb.c, b0> entry : vVar.f18379c.entrySet()) {
            aVar.add("@" + entry.getKey() + ':' + entry.getValue().f18328a);
        }
        if (aVar.f10609e != null) {
            throw new IllegalStateException();
        }
        aVar.w();
        aVar.f10608d = true;
        return (String[]) aVar.toArray(new String[0]);
    }
}
