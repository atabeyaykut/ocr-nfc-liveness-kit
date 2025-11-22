package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class e {

    @l8.k(name = "myArrayList")
    private final List<Object> policyList;

    public e(List<Object> policyList) {
        kotlin.jvm.internal.h.f(policyList, "policyList");
        this.policyList = policyList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && kotlin.jvm.internal.h.a(this.policyList, ((e) obj).policyList);
    }

    public final int hashCode() {
        return this.policyList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("PolicyList(policyList="), this.policyList, ')');
    }
}
