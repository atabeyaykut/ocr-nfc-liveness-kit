package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0017\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\u0017\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u0001H\u0086\u0002\u001a\u0015\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\n\u001a\u00020\u0000H\u0086\n\u001a\u0015\u0010\u000b\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0003H\u0086\n¨\u0006\f"}, d2 = {"Landroidx/navigation/NavGraph;", "", "id", "Landroidx/navigation/NavDestination;", "get", "", "contains", "node", "Ll9/m;", "plusAssign", "other", "minusAssign", "navigation-common-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavGraphKt {
    public static final boolean contains(NavGraph contains, @IdRes int r22) {
        h.g(contains, "$this$contains");
        return contains.findNode(r22) != null;
    }

    public static final NavDestination get(NavGraph get, @IdRes int r42) {
        h.g(get, "$this$get");
        NavDestination navDestinationFindNode = get.findNode(r42);
        if (navDestinationFindNode != null) {
            return navDestinationFindNode;
        }
        throw new IllegalArgumentException("No destination for " + r42 + " was found in " + get);
    }

    public static final void minusAssign(NavGraph minusAssign, NavDestination node) {
        h.g(minusAssign, "$this$minusAssign");
        h.g(node, "node");
        minusAssign.remove(node);
    }

    public static final void plusAssign(NavGraph plusAssign, NavDestination node) {
        h.g(plusAssign, "$this$plusAssign");
        h.g(node, "node");
        plusAssign.addDestination(node);
    }

    public static final void plusAssign(NavGraph plusAssign, NavGraph other) {
        h.g(plusAssign, "$this$plusAssign");
        h.g(other, "other");
        plusAssign.addAll(other);
    }
}
