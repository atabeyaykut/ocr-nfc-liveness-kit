package m9;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class l extends kotlin.jvm.internal.j implements x9.a<Iterator<Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object[] f10169a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public l(Object[] objArr) {
        super(0);
        this.f10169a = objArr;
    }

    @Override // x9.a
    public final Iterator<Object> invoke() {
        return b8.f.R(this.f10169a);
    }
}
