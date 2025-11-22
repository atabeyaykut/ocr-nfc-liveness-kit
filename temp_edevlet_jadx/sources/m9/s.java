package m9;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class s extends kotlin.jvm.internal.j implements x9.a<Iterator<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Iterable<Object> f10171a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(Iterable<Object> iterable) {
        super(0);
        this.f10171a = iterable;
    }

    @Override // x9.a
    public final Iterator<Object> invoke() {
        return this.f10171a.iterator();
    }
}
