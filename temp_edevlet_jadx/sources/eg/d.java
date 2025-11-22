package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class d {

    @l8.k(name = "myArrayList")
    private final List<Object> myArrayList;

    public d(List<Object> myArrayList) {
        kotlin.jvm.internal.h.f(myArrayList, "myArrayList");
        this.myArrayList = myArrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof d) && kotlin.jvm.internal.h.a(this.myArrayList, ((d) obj).myArrayList);
    }

    public final int hashCode() {
        return this.myArrayList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("Media(myArrayList="), this.myArrayList, ')');
    }
}
