package androidx.navigation;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDestination;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class NavGraph extends NavDestination implements Iterable<NavDestination> {
    final SparseArrayCompat<NavDestination> mNodes;
    private int mStartDestId;
    private String mStartDestIdName;

    public NavGraph(@NonNull Navigator<? extends NavGraph> navigator) {
        super(navigator);
        this.mNodes = new SparseArrayCompat<>();
    }

    public final void addAll(@NonNull NavGraph navGraph) {
        Iterator<NavDestination> it = navGraph.iterator();
        while (it.hasNext()) {
            NavDestination next = it.next();
            it.remove();
            addDestination(next);
        }
    }

    public final void addDestination(@NonNull NavDestination navDestination) {
        int id2 = navDestination.getId();
        if (id2 == 0) {
            throw new IllegalArgumentException("Destinations must have an id. Call setId() or include an android:id in your navigation XML.");
        }
        if (id2 == getId()) {
            throw new IllegalArgumentException("Destination " + navDestination + " cannot have the same id as graph " + this);
        }
        NavDestination navDestination2 = this.mNodes.get(id2);
        if (navDestination2 == navDestination) {
            return;
        }
        if (navDestination.getParent() != null) {
            throw new IllegalStateException("Destination already has a parent set. Call NavGraph.remove() to remove the previous parent.");
        }
        if (navDestination2 != null) {
            navDestination2.setParent(null);
        }
        navDestination.setParent(this);
        this.mNodes.put(navDestination.getId(), navDestination);
    }

    public final void addDestinations(@NonNull Collection<NavDestination> collection) {
        for (NavDestination navDestination : collection) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    public final void addDestinations(@NonNull NavDestination... navDestinationArr) {
        for (NavDestination navDestination : navDestinationArr) {
            if (navDestination != null) {
                addDestination(navDestination);
            }
        }
    }

    public final void clear() {
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            it.next();
            it.remove();
        }
    }

    @Nullable
    public final NavDestination findNode(@IdRes int r22) {
        return findNode(r22, true);
    }

    @Nullable
    public final NavDestination findNode(@IdRes int r22, boolean z10) {
        NavDestination navDestination = this.mNodes.get(r22);
        if (navDestination != null) {
            return navDestination;
        }
        if (!z10 || getParent() == null) {
            return null;
        }
        return getParent().findNode(r22);
    }

    @Override // androidx.navigation.NavDestination
    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        return getId() != 0 ? super.getDisplayName() : "the root navigation";
    }

    @NonNull
    public String getStartDestDisplayName() {
        if (this.mStartDestIdName == null) {
            this.mStartDestIdName = Integer.toString(this.mStartDestId);
        }
        return this.mStartDestIdName;
    }

    @IdRes
    public final int getStartDestination() {
        return this.mStartDestId;
    }

    @Override // java.lang.Iterable
    @NonNull
    public final Iterator<NavDestination> iterator() {
        return new Iterator<NavDestination>() { // from class: androidx.navigation.NavGraph.1
            private int mIndex = -1;
            private boolean mWentToNext = false;

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.mIndex + 1 < NavGraph.this.mNodes.size();
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.Iterator
            public NavDestination next() {
                if (!hasNext()) {
                    throw new NoSuchElementException();
                }
                this.mWentToNext = true;
                SparseArrayCompat<NavDestination> sparseArrayCompat = NavGraph.this.mNodes;
                int r22 = this.mIndex + 1;
                this.mIndex = r22;
                return sparseArrayCompat.valueAt(r22);
            }

            @Override // java.util.Iterator
            public void remove() {
                if (!this.mWentToNext) {
                    throw new IllegalStateException("You must call next() before you can remove an element");
                }
                NavGraph.this.mNodes.valueAt(this.mIndex).setParent(null);
                NavGraph.this.mNodes.removeAt(this.mIndex);
                this.mIndex--;
                this.mWentToNext = false;
            }
        };
    }

    @Override // androidx.navigation.NavDestination
    @Nullable
    public NavDestination.DeepLinkMatch matchDeepLink(@NonNull NavDeepLinkRequest navDeepLinkRequest) {
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink = super.matchDeepLink(navDeepLinkRequest);
        Iterator<NavDestination> it = iterator();
        while (it.hasNext()) {
            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink2 = it.next().matchDeepLink(navDeepLinkRequest);
            if (deepLinkMatchMatchDeepLink2 != null && (deepLinkMatchMatchDeepLink == null || deepLinkMatchMatchDeepLink2.compareTo(deepLinkMatchMatchDeepLink) > 0)) {
                deepLinkMatchMatchDeepLink = deepLinkMatchMatchDeepLink2;
            }
        }
        return deepLinkMatchMatchDeepLink;
    }

    @Override // androidx.navigation.NavDestination
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        super.onInflate(context, attributeSet);
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.NavGraphNavigator);
        setStartDestination(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R.styleable.NavGraphNavigator_startDestination, 0));
        this.mStartDestIdName = NavDestination.getDisplayName(context, this.mStartDestId);
        typedArrayObtainAttributes.recycle();
    }

    public final void remove(@NonNull NavDestination navDestination) {
        int r32 = this.mNodes.indexOfKey(navDestination.getId());
        if (r32 >= 0) {
            this.mNodes.valueAt(r32).setParent(null);
            this.mNodes.removeAt(r32);
        }
    }

    public final void setStartDestination(@IdRes int r42) {
        if (r42 != getId()) {
            this.mStartDestId = r42;
            this.mStartDestIdName = null;
        } else {
            throw new IllegalArgumentException("Start destination " + r42 + " cannot use the same id as the graph " + this);
        }
    }

    @Override // androidx.navigation.NavDestination
    @NonNull
    public String toString() {
        String hexString;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(super.toString());
        sb2.append(" startDestination=");
        NavDestination navDestinationFindNode = findNode(getStartDestination());
        if (navDestinationFindNode == null) {
            hexString = this.mStartDestIdName;
            if (hexString == null) {
                sb2.append("0x");
                hexString = Integer.toHexString(this.mStartDestId);
            }
        } else {
            sb2.append("{");
            sb2.append(navDestinationFindNode.toString());
            hexString = "}";
        }
        sb2.append(hexString);
        return sb2.toString();
    }
}
