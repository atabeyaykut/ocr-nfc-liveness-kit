package p4;

import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class k0 extends AbstractCollection {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12447a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AbstractMap f12448b;

    public /* synthetic */ k0(AbstractMap abstractMap, int r22) {
        this.f12447a = r22;
        this.f12448b = abstractMap;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int r02 = this.f12447a;
        AbstractMap abstractMap = this.f12448b;
        switch (r02) {
            case 0:
                ((l0) abstractMap).clear();
                break;
            default:
                ((s4.x) abstractMap).clear();
                break;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        int r02 = this.f12447a;
        AbstractMap abstractMap = this.f12448b;
        switch (r02) {
            case 0:
                l0 l0Var = (l0) abstractMap;
                Map mapA = l0Var.a();
                return mapA != null ? mapA.values().iterator() : new f0(l0Var);
            default:
                s4.x xVar = (s4.x) abstractMap;
                Map mapA2 = xVar.a();
                return mapA2 != null ? mapA2.values().iterator() : new s4.t(xVar);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        int r02 = this.f12447a;
        AbstractMap abstractMap = this.f12448b;
        switch (r02) {
            case 0:
                return ((l0) abstractMap).size();
            default:
                return ((s4.x) abstractMap).size();
        }
    }
}
