package dc;

import cc.m0;
import java.util.LinkedHashSet;
import java.util.Set;

/* loaded from: classes2.dex */
public final class s extends kotlin.jvm.internal.j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Set<m0> f4859a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public s(LinkedHashSet linkedHashSet) {
        super(0);
        this.f4859a = linkedHashSet;
    }

    @Override // x9.a
    public final String invoke() {
        return "This collections cannot be empty! input types: ".concat(m9.t.g1(this.f4859a, null, null, null, null, 63));
    }
}
