package ic;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public final lb.f f7369a;

    /* renamed from: b, reason: collision with root package name */
    public final mc.d f7370b;

    /* renamed from: c, reason: collision with root package name */
    public final Collection<lb.f> f7371c;

    /* renamed from: d, reason: collision with root package name */
    public final x9.l<ma.u, String> f7372d;

    /* renamed from: e, reason: collision with root package name */
    public final f[] f7373e;

    public k() {
        throw null;
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public k(Collection<lb.f> nameList, f[] fVarArr, x9.l<? super ma.u, String> additionalChecks) {
        this(null, null, nameList, additionalChecks, (f[]) Arrays.copyOf(fVarArr, fVarArr.length));
        kotlin.jvm.internal.h.f(nameList, "nameList");
        kotlin.jvm.internal.h.f(additionalChecks, "additionalChecks");
    }

    public /* synthetic */ k(Set set, f[] fVarArr) {
        this(set, fVarArr, j.f7368a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public k(lb.f fVar, mc.d dVar, Collection<lb.f> collection, x9.l<? super ma.u, String> lVar, f... fVarArr) {
        this.f7369a = fVar;
        this.f7370b = dVar;
        this.f7371c = collection;
        this.f7372d = lVar;
        this.f7373e = fVarArr;
    }

    public /* synthetic */ k(lb.f fVar, f[] fVarArr) {
        this(fVar, fVarArr, h.f7366a);
    }

    /* JADX WARN: 'thıs' call moved to the top of the method (can break code semantics) */
    public k(lb.f name, f[] fVarArr, x9.l<? super ma.u, String> additionalChecks) {
        this(name, null, null, additionalChecks, (f[]) Arrays.copyOf(fVarArr, fVarArr.length));
        kotlin.jvm.internal.h.f(name, "name");
        kotlin.jvm.internal.h.f(additionalChecks, "additionalChecks");
    }
}
