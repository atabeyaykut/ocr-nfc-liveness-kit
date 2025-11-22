package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.SparseArrayCompat;
import androidx.navigation.NavDeepLink;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class NavDestination {
    private static final HashMap<String, Class<?>> sClasses = new HashMap<>();
    private SparseArrayCompat<NavAction> mActions;
    private HashMap<String, NavArgument> mArguments;
    private ArrayList<NavDeepLink> mDeepLinks;
    private int mId;
    private String mIdName;
    private CharSequence mLabel;
    private final String mNavigatorName;
    private NavGraph mParent;

    @Target({ElementType.TYPE})
    @Retention(RetentionPolicy.CLASS)
    public @interface ClassType {
        Class<?> value();
    }

    public static class DeepLinkMatch implements Comparable<DeepLinkMatch> {

        @NonNull
        private final NavDestination mDestination;
        private final boolean mHasMatchingAction;
        private final boolean mIsExactDeepLink;

        @Nullable
        private final Bundle mMatchingArgs;
        private final int mMimeTypeMatchLevel;

        public DeepLinkMatch(@NonNull NavDestination navDestination, @Nullable Bundle bundle, boolean z10, boolean z11, int r52) {
            this.mDestination = navDestination;
            this.mMatchingArgs = bundle;
            this.mIsExactDeepLink = z10;
            this.mHasMatchingAction = z11;
            this.mMimeTypeMatchLevel = r52;
        }

        @Override // java.lang.Comparable
        public int compareTo(@NonNull DeepLinkMatch deepLinkMatch) {
            boolean z10 = this.mIsExactDeepLink;
            if (z10 && !deepLinkMatch.mIsExactDeepLink) {
                return 1;
            }
            if (!z10 && deepLinkMatch.mIsExactDeepLink) {
                return -1;
            }
            Bundle bundle = this.mMatchingArgs;
            if (bundle != null && deepLinkMatch.mMatchingArgs == null) {
                return 1;
            }
            if (bundle == null && deepLinkMatch.mMatchingArgs != null) {
                return -1;
            }
            if (bundle != null) {
                int size = bundle.size() - deepLinkMatch.mMatchingArgs.size();
                if (size > 0) {
                    return 1;
                }
                if (size < 0) {
                    return -1;
                }
            }
            boolean z11 = this.mHasMatchingAction;
            if (z11 && !deepLinkMatch.mHasMatchingAction) {
                return 1;
            }
            if (z11 || !deepLinkMatch.mHasMatchingAction) {
                return this.mMimeTypeMatchLevel - deepLinkMatch.mMimeTypeMatchLevel;
            }
            return -1;
        }

        @NonNull
        public NavDestination getDestination() {
            return this.mDestination;
        }

        @Nullable
        public Bundle getMatchingArgs() {
            return this.mMatchingArgs;
        }
    }

    public NavDestination(@NonNull Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.getNameForNavigator(navigator.getClass()));
    }

    public NavDestination(@NonNull String str) {
        this.mNavigatorName = str;
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public static String getDisplayName(@NonNull Context context, int r22) {
        if (r22 <= 16777215) {
            return Integer.toString(r22);
        }
        try {
            return context.getResources().getResourceName(r22);
        } catch (Resources.NotFoundException unused) {
            return Integer.toString(r22);
        }
    }

    @NonNull
    public static <C> Class<? extends C> parseClassFromName(@NonNull Context context, @NonNull String str, @NonNull Class<? extends C> cls) {
        if (str.charAt(0) == '.') {
            str = context.getPackageName() + str;
        }
        HashMap<String, Class<?>> map = sClasses;
        Class<? extends C> cls2 = (Class<? extends C>) map.get(str);
        if (cls2 == null) {
            try {
                cls2 = (Class<? extends C>) Class.forName(str, true, context.getClassLoader());
                map.put(str, cls2);
            } catch (ClassNotFoundException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        if (cls.isAssignableFrom(cls2)) {
            return cls2;
        }
        throw new IllegalArgumentException(str + " must be a subclass of " + cls);
    }

    public final void addArgument(@NonNull String str, @NonNull NavArgument navArgument) {
        if (this.mArguments == null) {
            this.mArguments = new HashMap<>();
        }
        this.mArguments.put(str, navArgument);
    }

    public final void addDeepLink(@NonNull NavDeepLink navDeepLink) {
        if (this.mDeepLinks == null) {
            this.mDeepLinks = new ArrayList<>();
        }
        this.mDeepLinks.add(navDeepLink);
    }

    public final void addDeepLink(@NonNull String str) {
        addDeepLink(new NavDeepLink.Builder().setUriPattern(str).build());
    }

    @Nullable
    public Bundle addInDefaultArgs(@Nullable Bundle bundle) {
        HashMap<String, NavArgument> map;
        if (bundle == null && ((map = this.mArguments) == null || map.isEmpty())) {
            return null;
        }
        Bundle bundle2 = new Bundle();
        HashMap<String, NavArgument> map2 = this.mArguments;
        if (map2 != null) {
            for (Map.Entry<String, NavArgument> entry : map2.entrySet()) {
                entry.getValue().putDefaultValue(entry.getKey(), bundle2);
            }
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            HashMap<String, NavArgument> map3 = this.mArguments;
            if (map3 != null) {
                for (Map.Entry<String, NavArgument> entry2 : map3.entrySet()) {
                    if (!entry2.getValue().verify(entry2.getKey(), bundle2)) {
                        throw new IllegalArgumentException("Wrong argument type for '" + entry2.getKey() + "' in argument bundle. " + entry2.getValue().getType().getName() + " expected.");
                    }
                }
            }
        }
        return bundle2;
    }

    @NonNull
    public int[] buildDeepLinkIds() {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavDestination navDestination = this;
        while (true) {
            NavGraph parent = navDestination.getParent();
            if (parent == null || parent.getStartDestination() != navDestination.getId()) {
                arrayDeque.addFirst(navDestination);
            }
            if (parent == null) {
                break;
            }
            navDestination = parent;
        }
        int[] r12 = new int[arrayDeque.size()];
        Iterator it = arrayDeque.iterator();
        int r22 = 0;
        while (it.hasNext()) {
            r12[r22] = ((NavDestination) it.next()).getId();
            r22++;
        }
        return r12;
    }

    @Nullable
    public final NavAction getAction(@IdRes int r32) {
        SparseArrayCompat<NavAction> sparseArrayCompat = this.mActions;
        NavAction navAction = sparseArrayCompat == null ? null : sparseArrayCompat.get(r32);
        if (navAction != null) {
            return navAction;
        }
        if (getParent() != null) {
            return getParent().getAction(r32);
        }
        return null;
    }

    @NonNull
    public final Map<String, NavArgument> getArguments() {
        HashMap<String, NavArgument> map = this.mArguments;
        return map == null ? Collections.emptyMap() : Collections.unmodifiableMap(map);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public String getDisplayName() {
        if (this.mIdName == null) {
            this.mIdName = Integer.toString(this.mId);
        }
        return this.mIdName;
    }

    @IdRes
    public final int getId() {
        return this.mId;
    }

    @Nullable
    public final CharSequence getLabel() {
        return this.mLabel;
    }

    @NonNull
    public final String getNavigatorName() {
        return this.mNavigatorName;
    }

    @Nullable
    public final NavGraph getParent() {
        return this.mParent;
    }

    public boolean hasDeepLink(@NonNull Uri uri) {
        return hasDeepLink(new NavDeepLinkRequest(uri, null, null));
    }

    public boolean hasDeepLink(@NonNull NavDeepLinkRequest navDeepLinkRequest) {
        return matchDeepLink(navDeepLinkRequest) != null;
    }

    @Nullable
    public DeepLinkMatch matchDeepLink(@NonNull NavDeepLinkRequest navDeepLinkRequest) {
        ArrayList<NavDeepLink> arrayList = this.mDeepLinks;
        if (arrayList == null) {
            return null;
        }
        Iterator<NavDeepLink> it = arrayList.iterator();
        DeepLinkMatch deepLinkMatch = null;
        while (it.hasNext()) {
            NavDeepLink next = it.next();
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? next.getMatchingArguments(uri, getArguments()) : null;
            String action = navDeepLinkRequest.getAction();
            boolean z10 = action != null && action.equals(next.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? next.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments != null || z10 || mimeTypeMatchRating > -1) {
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, next.isExactDeepLink(), z10, mimeTypeMatchRating);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    @CallSuper
    public void onInflate(@NonNull Context context, @NonNull AttributeSet attributeSet) {
        TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, androidx.navigation.common.R.styleable.Navigator);
        setId(typedArrayObtainAttributes.getResourceId(androidx.navigation.common.R.styleable.Navigator_android_id, 0));
        this.mIdName = getDisplayName(context, this.mId);
        setLabel(typedArrayObtainAttributes.getText(androidx.navigation.common.R.styleable.Navigator_android_label));
        typedArrayObtainAttributes.recycle();
    }

    public final void putAction(@IdRes int r22, @IdRes int r32) {
        putAction(r22, new NavAction(r32));
    }

    public final void putAction(@IdRes int r32, @NonNull NavAction navAction) {
        if (supportsActions()) {
            if (r32 == 0) {
                throw new IllegalArgumentException("Cannot have an action with actionId 0");
            }
            if (this.mActions == null) {
                this.mActions = new SparseArrayCompat<>();
            }
            this.mActions.put(r32, navAction);
            return;
        }
        throw new UnsupportedOperationException("Cannot add action " + r32 + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    public final void removeAction(@IdRes int r22) {
        SparseArrayCompat<NavAction> sparseArrayCompat = this.mActions;
        if (sparseArrayCompat == null) {
            return;
        }
        sparseArrayCompat.remove(r22);
    }

    public final void removeArgument(@NonNull String str) {
        HashMap<String, NavArgument> map = this.mArguments;
        if (map == null) {
            return;
        }
        map.remove(str);
    }

    public final void setId(@IdRes int r12) {
        this.mId = r12;
        this.mIdName = null;
    }

    public final void setLabel(@Nullable CharSequence charSequence) {
        this.mLabel = charSequence;
    }

    public final void setParent(NavGraph navGraph) {
        this.mParent = navGraph;
    }

    public boolean supportsActions() {
        return true;
    }

    @NonNull
    public String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(getClass().getSimpleName());
        sb2.append("(");
        String hexString = this.mIdName;
        if (hexString == null) {
            sb2.append("0x");
            hexString = Integer.toHexString(this.mId);
        }
        sb2.append(hexString);
        sb2.append(")");
        if (this.mLabel != null) {
            sb2.append(" label=");
            sb2.append(this.mLabel);
        }
        return sb2.toString();
    }
}
