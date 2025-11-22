package androidx.navigation;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.util.Log;
import androidx.annotation.CallSuper;
import androidx.annotation.IdRes;
import androidx.annotation.NavigationRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.appcompat.widget.v;
import androidx.core.app.TaskStackBuilder;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleEventObserver;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.ViewModelStore;
import androidx.lifecycle.ViewModelStoreOwner;
import androidx.navigation.NavDestination;
import androidx.navigation.NavOptions;
import androidx.navigation.Navigator;
import androidx.view.OnBackPressedCallback;
import androidx.view.OnBackPressedDispatcher;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class NavController {
    private static final String KEY_BACK_STACK = "android-support-nav:controller:backStack";
    static final String KEY_DEEP_LINK_EXTRAS = "android-support-nav:controller:deepLinkExtras";
    static final String KEY_DEEP_LINK_HANDLED = "android-support-nav:controller:deepLinkHandled";
    static final String KEY_DEEP_LINK_IDS = "android-support-nav:controller:deepLinkIds";

    @NonNull
    public static final String KEY_DEEP_LINK_INTENT = "android-support-nav:controller:deepLinkIntent";
    private static final String KEY_NAVIGATOR_STATE = "android-support-nav:controller:navigatorState";
    private static final String KEY_NAVIGATOR_STATE_NAMES = "android-support-nav:controller:navigatorState:names";
    private static final String TAG = "NavController";
    private Activity mActivity;
    private Parcelable[] mBackStackToRestore;
    private final Context mContext;
    private boolean mDeepLinkHandled;
    NavGraph mGraph;
    private NavInflater mInflater;
    private LifecycleOwner mLifecycleOwner;
    private Bundle mNavigatorStateToRestore;
    private NavControllerViewModel mViewModel;
    final Deque<NavBackStackEntry> mBackStack = new ArrayDeque();
    private NavigatorProvider mNavigatorProvider = new NavigatorProvider();
    private final CopyOnWriteArrayList<OnDestinationChangedListener> mOnDestinationChangedListeners = new CopyOnWriteArrayList<>();
    private final LifecycleObserver mLifecycleObserver = new LifecycleEventObserver() { // from class: androidx.navigation.NavController.1
        @Override // androidx.lifecycle.LifecycleEventObserver
        public void onStateChanged(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
            NavController navController = NavController.this;
            if (navController.mGraph != null) {
                Iterator<NavBackStackEntry> it = navController.mBackStack.iterator();
                while (it.hasNext()) {
                    it.next().handleLifecycleEvent(event);
                }
            }
        }
    };
    private final OnBackPressedCallback mOnBackPressedCallback = new OnBackPressedCallback(false) { // from class: androidx.navigation.NavController.2
        @Override // androidx.view.OnBackPressedCallback
        public void handleOnBackPressed() {
            NavController.this.popBackStack();
        }
    };
    private boolean mEnableOnBackPressedCallback = true;

    public interface OnDestinationChangedListener {
        void onDestinationChanged(@NonNull NavController navController, @NonNull NavDestination navDestination, @Nullable Bundle bundle);
    }

    public NavController(@NonNull Context context) {
        this.mContext = context;
        while (true) {
            if (!(context instanceof ContextWrapper)) {
                break;
            }
            if (context instanceof Activity) {
                this.mActivity = (Activity) context;
                break;
            }
            context = ((ContextWrapper) context).getBaseContext();
        }
        NavigatorProvider navigatorProvider = this.mNavigatorProvider;
        navigatorProvider.addNavigator(new NavGraphNavigator(navigatorProvider));
        this.mNavigatorProvider.addNavigator(new ActivityNavigator(this.mContext));
    }

    private boolean dispatchOnDestinationChanged() {
        NavDestination parent;
        while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof NavGraph) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
        }
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        NavDestination destination = this.mBackStack.peekLast().getDestination();
        if (destination instanceof FloatingWindow) {
            Iterator<NavBackStackEntry> itDescendingIterator = this.mBackStack.descendingIterator();
            while (itDescendingIterator.hasNext()) {
                parent = itDescendingIterator.next().getDestination();
                if (!(parent instanceof NavGraph) && !(parent instanceof FloatingWindow)) {
                    break;
                }
            }
            parent = null;
        } else {
            parent = null;
        }
        HashMap map = new HashMap();
        Iterator<NavBackStackEntry> itDescendingIterator2 = this.mBackStack.descendingIterator();
        while (itDescendingIterator2.hasNext()) {
            NavBackStackEntry next = itDescendingIterator2.next();
            Lifecycle.State maxLifecycle = next.getMaxLifecycle();
            NavDestination destination2 = next.getDestination();
            if (destination != null && destination2.getId() == destination.getId()) {
                Lifecycle.State state = Lifecycle.State.RESUMED;
                if (maxLifecycle != state) {
                    map.put(next, state);
                }
                destination = destination.getParent();
            } else if (parent == null || destination2.getId() != parent.getId()) {
                next.setMaxLifecycle(Lifecycle.State.CREATED);
            } else {
                if (maxLifecycle == Lifecycle.State.RESUMED) {
                    next.setMaxLifecycle(Lifecycle.State.STARTED);
                } else {
                    Lifecycle.State state2 = Lifecycle.State.STARTED;
                    if (maxLifecycle != state2) {
                        map.put(next, state2);
                    }
                }
                parent = parent.getParent();
            }
        }
        for (NavBackStackEntry navBackStackEntry : this.mBackStack) {
            Lifecycle.State state3 = (Lifecycle.State) map.get(navBackStackEntry);
            if (state3 != null) {
                navBackStackEntry.setMaxLifecycle(state3);
            } else {
                navBackStackEntry.updateState();
            }
        }
        NavBackStackEntry navBackStackEntryPeekLast = this.mBackStack.peekLast();
        Iterator<OnDestinationChangedListener> it = this.mOnDestinationChangedListeners.iterator();
        while (it.hasNext()) {
            it.next().onDestinationChanged(this, navBackStackEntryPeekLast.getDestination(), navBackStackEntryPeekLast.getArguments());
        }
        return true;
    }

    @Nullable
    private String findInvalidDestinationDisplayNameInDeepLink(@NonNull int[] r6) {
        NavGraph navGraph;
        NavGraph navGraph2 = this.mGraph;
        int r12 = 0;
        while (true) {
            NavDestination navDestinationFindNode = null;
            if (r12 >= r6.length) {
                return null;
            }
            int r22 = r6[r12];
            if (r12 != 0) {
                navDestinationFindNode = navGraph2.findNode(r22);
            } else if (this.mGraph.getId() == r22) {
                navDestinationFindNode = this.mGraph;
            }
            if (navDestinationFindNode == null) {
                return NavDestination.getDisplayName(this.mContext, r22);
            }
            if (r12 != r6.length - 1) {
                while (true) {
                    navGraph = (NavGraph) navDestinationFindNode;
                    if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationFindNode = navGraph.findNode(navGraph.getStartDestination());
                }
                navGraph2 = navGraph;
            }
            r12++;
        }
    }

    private int getDestinationCountOnBackStack() {
        Iterator<NavBackStackEntry> it = this.mBackStack.iterator();
        int r12 = 0;
        while (it.hasNext()) {
            if (!(it.next().getDestination() instanceof NavGraph)) {
                r12++;
            }
        }
        return r12;
    }

    private void navigate(@NonNull NavDestination navDestination, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        boolean z10 = false;
        boolean zPopBackStackInternal = (navOptions == null || navOptions.getPopUpTo() == -1) ? false : popBackStackInternal(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
        Navigator navigator = this.mNavigatorProvider.getNavigator(navDestination.getNavigatorName());
        Bundle bundleAddInDefaultArgs = navDestination.addInDefaultArgs(bundle);
        NavDestination navDestinationNavigate = navigator.navigate(navDestination, bundleAddInDefaultArgs, navOptions, extras);
        if (navDestinationNavigate != null) {
            if (!(navDestinationNavigate instanceof FloatingWindow)) {
                while (!this.mBackStack.isEmpty() && (this.mBackStack.peekLast().getDestination() instanceof FloatingWindow) && popBackStackInternal(this.mBackStack.peekLast().getDestination().getId(), true)) {
                }
            }
            ArrayDeque arrayDeque = new ArrayDeque();
            if (navDestination instanceof NavGraph) {
                NavDestination navDestination2 = navDestinationNavigate;
                while (true) {
                    NavGraph parent = navDestination2.getParent();
                    if (parent != null) {
                        arrayDeque.addFirst(new NavBackStackEntry(this.mContext, parent, bundleAddInDefaultArgs, this.mLifecycleOwner, this.mViewModel));
                        if (!this.mBackStack.isEmpty() && this.mBackStack.getLast().getDestination() == parent) {
                            popBackStackInternal(parent.getId(), true);
                        }
                    }
                    if (parent == null || parent == navDestination) {
                        break;
                    } else {
                        navDestination2 = parent;
                    }
                }
            }
            NavDestination destination = arrayDeque.isEmpty() ? navDestinationNavigate : ((NavBackStackEntry) arrayDeque.getFirst()).getDestination();
            while (destination != null && findDestination(destination.getId()) == null) {
                destination = destination.getParent();
                if (destination != null) {
                    arrayDeque.addFirst(new NavBackStackEntry(this.mContext, destination, bundleAddInDefaultArgs, this.mLifecycleOwner, this.mViewModel));
                }
            }
            NavDestination destination2 = arrayDeque.isEmpty() ? navDestinationNavigate : ((NavBackStackEntry) arrayDeque.getLast()).getDestination();
            while (!this.mBackStack.isEmpty() && (this.mBackStack.getLast().getDestination() instanceof NavGraph) && ((NavGraph) this.mBackStack.getLast().getDestination()).findNode(destination2.getId(), false) == null && popBackStackInternal(this.mBackStack.getLast().getDestination().getId(), true)) {
            }
            this.mBackStack.addAll(arrayDeque);
            if (this.mBackStack.isEmpty() || this.mBackStack.getFirst().getDestination() != this.mGraph) {
                this.mBackStack.addFirst(new NavBackStackEntry(this.mContext, this.mGraph, bundleAddInDefaultArgs, this.mLifecycleOwner, this.mViewModel));
            }
            this.mBackStack.add(new NavBackStackEntry(this.mContext, navDestinationNavigate, navDestinationNavigate.addInDefaultArgs(bundleAddInDefaultArgs), this.mLifecycleOwner, this.mViewModel));
        } else if (navOptions != null && navOptions.shouldLaunchSingleTop()) {
            NavBackStackEntry navBackStackEntryPeekLast = this.mBackStack.peekLast();
            if (navBackStackEntryPeekLast != null) {
                navBackStackEntryPeekLast.replaceArguments(bundleAddInDefaultArgs);
            }
            z10 = true;
        }
        updateOnBackPressedCallbackEnabled();
        if (zPopBackStackInternal || navDestinationNavigate != null || z10) {
            dispatchOnDestinationChanged();
        }
    }

    private void onGraphCreated(@Nullable Bundle bundle) {
        Activity activity;
        ArrayList<String> stringArrayList;
        Bundle bundle2 = this.mNavigatorStateToRestore;
        if (bundle2 != null && (stringArrayList = bundle2.getStringArrayList(KEY_NAVIGATOR_STATE_NAMES)) != null) {
            Iterator<String> it = stringArrayList.iterator();
            while (it.hasNext()) {
                String next = it.next();
                Navigator navigator = this.mNavigatorProvider.getNavigator(next);
                Bundle bundle3 = this.mNavigatorStateToRestore.getBundle(next);
                if (bundle3 != null) {
                    navigator.onRestoreState(bundle3);
                }
            }
        }
        Parcelable[] parcelableArr = this.mBackStackToRestore;
        boolean z10 = false;
        if (parcelableArr != null) {
            for (Parcelable parcelable : parcelableArr) {
                NavBackStackEntryState navBackStackEntryState = (NavBackStackEntryState) parcelable;
                NavDestination navDestinationFindDestination = findDestination(navBackStackEntryState.getDestinationId());
                if (navDestinationFindDestination == null) {
                    StringBuilder sbL = a.l("Restoring the Navigation back stack failed: destination ", NavDestination.getDisplayName(this.mContext, navBackStackEntryState.getDestinationId()), " cannot be found from the current destination ");
                    sbL.append(getCurrentDestination());
                    throw new IllegalStateException(sbL.toString());
                }
                Bundle args = navBackStackEntryState.getArgs();
                if (args != null) {
                    args.setClassLoader(this.mContext.getClassLoader());
                }
                this.mBackStack.add(new NavBackStackEntry(this.mContext, navDestinationFindDestination, args, this.mLifecycleOwner, this.mViewModel, navBackStackEntryState.getUUID(), navBackStackEntryState.getSavedState()));
            }
            updateOnBackPressedCallbackEnabled();
            this.mBackStackToRestore = null;
        }
        if (this.mGraph == null || !this.mBackStack.isEmpty()) {
            dispatchOnDestinationChanged();
            return;
        }
        if (!this.mDeepLinkHandled && (activity = this.mActivity) != null && handleDeepLink(activity.getIntent())) {
            z10 = true;
        }
        if (z10) {
            return;
        }
        navigate(this.mGraph, bundle, (NavOptions) null, (Navigator.Extras) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x000e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateOnBackPressedCallbackEnabled() {
        /*
            r3 = this;
            androidx.activity.OnBackPressedCallback r0 = r3.mOnBackPressedCallback
            boolean r1 = r3.mEnableOnBackPressedCallback
            if (r1 == 0) goto Le
            int r1 = r3.getDestinationCountOnBackStack()
            r2 = 1
            if (r1 <= r2) goto Le
            goto Lf
        Le:
            r2 = 0
        Lf:
            r0.setEnabled(r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavController.updateOnBackPressedCallbackEnabled():void");
    }

    public void addOnDestinationChangedListener(@NonNull OnDestinationChangedListener onDestinationChangedListener) {
        if (!this.mBackStack.isEmpty()) {
            NavBackStackEntry navBackStackEntryPeekLast = this.mBackStack.peekLast();
            onDestinationChangedListener.onDestinationChanged(this, navBackStackEntryPeekLast.getDestination(), navBackStackEntryPeekLast.getArguments());
        }
        this.mOnDestinationChangedListeners.add(onDestinationChangedListener);
    }

    @NonNull
    public NavDeepLinkBuilder createDeepLink() {
        return new NavDeepLinkBuilder(this);
    }

    public void enableOnBackPressed(boolean z10) {
        this.mEnableOnBackPressedCallback = z10;
        updateOnBackPressedCallbackEnabled();
    }

    public NavDestination findDestination(@IdRes int r32) {
        NavGraph navGraph = this.mGraph;
        if (navGraph == null) {
            return null;
        }
        if (navGraph.getId() == r32) {
            return this.mGraph;
        }
        NavGraph destination = this.mBackStack.isEmpty() ? this.mGraph : this.mBackStack.getLast().getDestination();
        return (destination instanceof NavGraph ? destination : destination.getParent()).findNode(r32);
    }

    @NonNull
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public Deque<NavBackStackEntry> getBackStack() {
        return this.mBackStack;
    }

    @NonNull
    public NavBackStackEntry getBackStackEntry(@IdRes int r42) {
        NavBackStackEntry next;
        Iterator<NavBackStackEntry> itDescendingIterator = this.mBackStack.descendingIterator();
        while (true) {
            if (!itDescendingIterator.hasNext()) {
                next = null;
                break;
            }
            next = itDescendingIterator.next();
            if (next.getDestination().getId() == r42) {
                break;
            }
        }
        if (next != null) {
            return next;
        }
        StringBuilder sbE = v.e("No destination with ID ", r42, " is on the NavController's back stack. The current destination is ");
        sbE.append(getCurrentDestination());
        throw new IllegalArgumentException(sbE.toString());
    }

    @NonNull
    public Context getContext() {
        return this.mContext;
    }

    @Nullable
    public NavBackStackEntry getCurrentBackStackEntry() {
        if (this.mBackStack.isEmpty()) {
            return null;
        }
        return this.mBackStack.getLast();
    }

    @Nullable
    public NavDestination getCurrentDestination() {
        NavBackStackEntry currentBackStackEntry = getCurrentBackStackEntry();
        if (currentBackStackEntry != null) {
            return currentBackStackEntry.getDestination();
        }
        return null;
    }

    @NonNull
    public NavGraph getGraph() {
        NavGraph navGraph = this.mGraph;
        if (navGraph != null) {
            return navGraph;
        }
        throw new IllegalStateException("You must call setGraph() before calling getGraph()");
    }

    @NonNull
    public NavInflater getNavInflater() {
        if (this.mInflater == null) {
            this.mInflater = new NavInflater(this.mContext, this.mNavigatorProvider);
        }
        return this.mInflater;
    }

    @NonNull
    public NavigatorProvider getNavigatorProvider() {
        return this.mNavigatorProvider;
    }

    @Nullable
    public NavBackStackEntry getPreviousBackStackEntry() {
        Iterator<NavBackStackEntry> itDescendingIterator = this.mBackStack.descendingIterator();
        if (itDescendingIterator.hasNext()) {
            itDescendingIterator.next();
        }
        while (itDescendingIterator.hasNext()) {
            NavBackStackEntry next = itDescendingIterator.next();
            if (!(next.getDestination() instanceof NavGraph)) {
                return next;
            }
        }
        return null;
    }

    @NonNull
    public ViewModelStoreOwner getViewModelStoreOwner(@IdRes int r42) {
        if (this.mViewModel == null) {
            throw new IllegalStateException("You must call setViewModelStore() before calling getViewModelStoreOwner().");
        }
        NavBackStackEntry backStackEntry = getBackStackEntry(r42);
        if (backStackEntry.getDestination() instanceof NavGraph) {
            return backStackEntry;
        }
        throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("No NavGraph with ID ", r42, " is on the NavController's back stack"));
    }

    public boolean handleDeepLink(@Nullable Intent intent) {
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink;
        NavGraph navGraph;
        if (intent == null) {
            return false;
        }
        Bundle extras = intent.getExtras();
        int[] intArray = extras != null ? extras.getIntArray(KEY_DEEP_LINK_IDS) : null;
        Bundle bundle = new Bundle();
        Bundle bundle2 = extras != null ? extras.getBundle(KEY_DEEP_LINK_EXTRAS) : null;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
        if ((intArray == null || intArray.length == 0) && intent.getData() != null && (deepLinkMatchMatchDeepLink = this.mGraph.matchDeepLink(new NavDeepLinkRequest(intent))) != null) {
            NavDestination destination = deepLinkMatchMatchDeepLink.getDestination();
            int[] r52 = destination.buildDeepLinkIds();
            bundle.putAll(destination.addInDefaultArgs(deepLinkMatchMatchDeepLink.getMatchingArgs()));
            intArray = r52;
        }
        if (intArray == null || intArray.length == 0) {
            return false;
        }
        String strFindInvalidDestinationDisplayNameInDeepLink = findInvalidDestinationDisplayNameInDeepLink(intArray);
        if (strFindInvalidDestinationDisplayNameInDeepLink != null) {
            Log.i(TAG, "Could not find destination " + strFindInvalidDestinationDisplayNameInDeepLink + " in the navigation graph, ignoring the deep link from " + intent);
            return false;
        }
        bundle.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        int flags = intent.getFlags();
        int r53 = 268435456 & flags;
        if (r53 != 0 && (flags & 32768) == 0) {
            intent.addFlags(32768);
            TaskStackBuilder.create(this.mContext).addNextIntentWithParentStack(intent).startActivities();
            Activity activity = this.mActivity;
            if (activity != null) {
                activity.finish();
                this.mActivity.overridePendingTransition(0, 0);
            }
            return true;
        }
        if (r53 != 0) {
            if (!this.mBackStack.isEmpty()) {
                popBackStackInternal(this.mGraph.getId(), true);
            }
            int r12 = 0;
            while (r12 < intArray.length) {
                int r54 = r12 + 1;
                int r13 = intArray[r12];
                NavDestination navDestinationFindDestination = findDestination(r13);
                if (navDestinationFindDestination == null) {
                    StringBuilder sbL = a.l("Deep Linking failed: destination ", NavDestination.getDisplayName(this.mContext, r13), " cannot be found from the current destination ");
                    sbL.append(getCurrentDestination());
                    throw new IllegalStateException(sbL.toString());
                }
                navigate(navDestinationFindDestination, bundle, new NavOptions.Builder().setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
                r12 = r54;
            }
            return true;
        }
        NavGraph navGraph2 = this.mGraph;
        int r55 = 0;
        while (r55 < intArray.length) {
            int r72 = intArray[r55];
            NavDestination navDestinationFindNode = r55 == 0 ? this.mGraph : navGraph2.findNode(r72);
            if (navDestinationFindNode == null) {
                throw new IllegalStateException("Deep Linking failed: destination " + NavDestination.getDisplayName(this.mContext, r72) + " cannot be found in graph " + navGraph2);
            }
            if (r55 != intArray.length - 1) {
                while (true) {
                    navGraph = (NavGraph) navDestinationFindNode;
                    if (!(navGraph.findNode(navGraph.getStartDestination()) instanceof NavGraph)) {
                        break;
                    }
                    navDestinationFindNode = navGraph.findNode(navGraph.getStartDestination());
                }
                navGraph2 = navGraph;
            } else {
                navigate(navDestinationFindNode, navDestinationFindNode.addInDefaultArgs(bundle), new NavOptions.Builder().setPopUpTo(this.mGraph.getId(), true).setEnterAnim(0).setExitAnim(0).build(), (Navigator.Extras) null);
            }
            r55++;
        }
        this.mDeepLinkHandled = true;
        return true;
    }

    public void navigate(@IdRes int r22) {
        navigate(r22, (Bundle) null);
    }

    public void navigate(@IdRes int r22, @Nullable Bundle bundle) {
        navigate(r22, bundle, (NavOptions) null);
    }

    public void navigate(@IdRes int r22, @Nullable Bundle bundle, @Nullable NavOptions navOptions) {
        navigate(r22, bundle, navOptions, (Navigator.Extras) null);
    }

    public void navigate(@IdRes int r6, @Nullable Bundle bundle, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        int destinationId;
        NavDestination destination = this.mBackStack.isEmpty() ? this.mGraph : this.mBackStack.getLast().getDestination();
        if (destination == null) {
            throw new IllegalStateException("no current navigation node");
        }
        NavAction action = destination.getAction(r6);
        Bundle bundle2 = null;
        if (action != null) {
            if (navOptions == null) {
                navOptions = action.getNavOptions();
            }
            destinationId = action.getDestinationId();
            Bundle defaultArguments = action.getDefaultArguments();
            if (defaultArguments != null) {
                bundle2 = new Bundle();
                bundle2.putAll(defaultArguments);
            }
        } else {
            destinationId = r6;
        }
        if (bundle != null) {
            if (bundle2 == null) {
                bundle2 = new Bundle();
            }
            bundle2.putAll(bundle);
        }
        if (destinationId == 0 && navOptions != null && navOptions.getPopUpTo() != -1) {
            popBackStack(navOptions.getPopUpTo(), navOptions.isPopUpToInclusive());
            return;
        }
        if (destinationId == 0) {
            throw new IllegalArgumentException("Destination id == 0 can only be used in conjunction with a valid navOptions.popUpTo");
        }
        NavDestination navDestinationFindDestination = findDestination(destinationId);
        if (navDestinationFindDestination != null) {
            navigate(navDestinationFindDestination, bundle2, navOptions, extras);
            return;
        }
        String displayName = NavDestination.getDisplayName(this.mContext, destinationId);
        if (action != null) {
            StringBuilder sbL = a.l("Navigation destination ", displayName, " referenced from action ");
            sbL.append(NavDestination.getDisplayName(this.mContext, r6));
            sbL.append(" cannot be found from the current destination ");
            sbL.append(destination);
            throw new IllegalArgumentException(sbL.toString());
        }
        throw new IllegalArgumentException("Navigation action/destination " + displayName + " cannot be found from the current destination " + destination);
    }

    public void navigate(@NonNull Uri uri) {
        navigate(new NavDeepLinkRequest(uri, null, null));
    }

    public void navigate(@NonNull Uri uri, @Nullable NavOptions navOptions) {
        navigate(new NavDeepLinkRequest(uri, null, null), navOptions);
    }

    public void navigate(@NonNull Uri uri, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        navigate(new NavDeepLinkRequest(uri, null, null), navOptions, extras);
    }

    public void navigate(@NonNull NavDeepLinkRequest navDeepLinkRequest) {
        navigate(navDeepLinkRequest, (NavOptions) null);
    }

    public void navigate(@NonNull NavDeepLinkRequest navDeepLinkRequest, @Nullable NavOptions navOptions) {
        navigate(navDeepLinkRequest, navOptions, (Navigator.Extras) null);
    }

    public void navigate(@NonNull NavDeepLinkRequest navDeepLinkRequest, @Nullable NavOptions navOptions, @Nullable Navigator.Extras extras) {
        NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink = this.mGraph.matchDeepLink(navDeepLinkRequest);
        if (deepLinkMatchMatchDeepLink == null) {
            throw new IllegalArgumentException("Navigation destination that matches request " + navDeepLinkRequest + " cannot be found in the navigation graph " + this.mGraph);
        }
        Bundle bundleAddInDefaultArgs = deepLinkMatchMatchDeepLink.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLink.getMatchingArgs());
        if (bundleAddInDefaultArgs == null) {
            bundleAddInDefaultArgs = new Bundle();
        }
        NavDestination destination = deepLinkMatchMatchDeepLink.getDestination();
        Intent intent = new Intent();
        intent.setDataAndType(navDeepLinkRequest.getUri(), navDeepLinkRequest.getMimeType());
        intent.setAction(navDeepLinkRequest.getAction());
        bundleAddInDefaultArgs.putParcelable(KEY_DEEP_LINK_INTENT, intent);
        navigate(destination, bundleAddInDefaultArgs, navOptions, extras);
    }

    public void navigate(@NonNull NavDirections navDirections) {
        navigate(navDirections.getActionId(), navDirections.getArguments());
    }

    public void navigate(@NonNull NavDirections navDirections, @Nullable NavOptions navOptions) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), navOptions);
    }

    public void navigate(@NonNull NavDirections navDirections, @NonNull Navigator.Extras extras) {
        navigate(navDirections.getActionId(), navDirections.getArguments(), (NavOptions) null, extras);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [androidx.navigation.NavDestination] */
    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.navigation.NavDestination] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.navigation.NavDestination, androidx.navigation.NavGraph] */
    public boolean navigateUp() {
        int id2;
        if (getDestinationCountOnBackStack() != 1) {
            return popBackStack();
        }
        ?? currentDestination = getCurrentDestination();
        do {
            id2 = currentDestination.getId();
            currentDestination = currentDestination.getParent();
            if (currentDestination == 0) {
                return false;
            }
        } while (currentDestination.getStartDestination() == id2);
        Bundle bundle = new Bundle();
        Activity activity = this.mActivity;
        if (activity != null && activity.getIntent() != null && this.mActivity.getIntent().getData() != null) {
            bundle.putParcelable(KEY_DEEP_LINK_INTENT, this.mActivity.getIntent());
            NavDestination.DeepLinkMatch deepLinkMatchMatchDeepLink = this.mGraph.matchDeepLink(new NavDeepLinkRequest(this.mActivity.getIntent()));
            if (deepLinkMatchMatchDeepLink != null) {
                bundle.putAll(deepLinkMatchMatchDeepLink.getDestination().addInDefaultArgs(deepLinkMatchMatchDeepLink.getMatchingArgs()));
            }
        }
        new NavDeepLinkBuilder(this).setDestination(currentDestination.getId()).setArguments(bundle).createTaskStackBuilder().startActivities();
        Activity activity2 = this.mActivity;
        if (activity2 != null) {
            activity2.finish();
        }
        return true;
    }

    public boolean popBackStack() {
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        return popBackStack(getCurrentDestination().getId(), true);
    }

    public boolean popBackStack(@IdRes int r12, boolean z10) {
        return popBackStackInternal(r12, z10) && dispatchOnDestinationChanged();
    }

    public boolean popBackStackInternal(@IdRes int r82, boolean z10) {
        boolean z11;
        boolean z12 = false;
        if (this.mBackStack.isEmpty()) {
            return false;
        }
        ArrayList arrayList = new ArrayList();
        Iterator<NavBackStackEntry> itDescendingIterator = this.mBackStack.descendingIterator();
        while (true) {
            if (!itDescendingIterator.hasNext()) {
                z11 = false;
                break;
            }
            NavDestination destination = itDescendingIterator.next().getDestination();
            Navigator navigator = this.mNavigatorProvider.getNavigator(destination.getNavigatorName());
            if (z10 || destination.getId() != r82) {
                arrayList.add(navigator);
            }
            if (destination.getId() == r82) {
                z11 = true;
                break;
            }
        }
        if (!z11) {
            Log.i(TAG, "Ignoring popBackStack to destination " + NavDestination.getDisplayName(this.mContext, r82) + " as it was not found on the current back stack");
            return false;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext() && ((Navigator) it.next()).popBackStack()) {
            NavBackStackEntry navBackStackEntryRemoveLast = this.mBackStack.removeLast();
            if (navBackStackEntryRemoveLast.getLifecycle().getCurrentState().isAtLeast(Lifecycle.State.CREATED)) {
                navBackStackEntryRemoveLast.setMaxLifecycle(Lifecycle.State.DESTROYED);
            }
            NavControllerViewModel navControllerViewModel = this.mViewModel;
            if (navControllerViewModel != null) {
                navControllerViewModel.clear(navBackStackEntryRemoveLast.mId);
            }
            z12 = true;
        }
        updateOnBackPressedCallbackEnabled();
        return z12;
    }

    public void removeOnDestinationChangedListener(@NonNull OnDestinationChangedListener onDestinationChangedListener) {
        this.mOnDestinationChangedListeners.remove(onDestinationChangedListener);
    }

    @CallSuper
    public void restoreState(@Nullable Bundle bundle) {
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(this.mContext.getClassLoader());
        this.mNavigatorStateToRestore = bundle.getBundle(KEY_NAVIGATOR_STATE);
        this.mBackStackToRestore = bundle.getParcelableArray(KEY_BACK_STACK);
        this.mDeepLinkHandled = bundle.getBoolean(KEY_DEEP_LINK_HANDLED);
    }

    @Nullable
    @CallSuper
    public Bundle saveState() {
        Bundle bundle;
        ArrayList<String> arrayList = new ArrayList<>();
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, Navigator<? extends NavDestination>> entry : this.mNavigatorProvider.getNavigators().entrySet()) {
            String key = entry.getKey();
            Bundle bundleOnSaveState = entry.getValue().onSaveState();
            if (bundleOnSaveState != null) {
                arrayList.add(key);
                bundle2.putBundle(key, bundleOnSaveState);
            }
        }
        if (arrayList.isEmpty()) {
            bundle = null;
        } else {
            bundle = new Bundle();
            bundle2.putStringArrayList(KEY_NAVIGATOR_STATE_NAMES, arrayList);
            bundle.putBundle(KEY_NAVIGATOR_STATE, bundle2);
        }
        if (!this.mBackStack.isEmpty()) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Parcelable[] parcelableArr = new Parcelable[this.mBackStack.size()];
            Iterator<NavBackStackEntry> it = this.mBackStack.iterator();
            int r32 = 0;
            while (it.hasNext()) {
                parcelableArr[r32] = new NavBackStackEntryState(it.next());
                r32++;
            }
            bundle.putParcelableArray(KEY_BACK_STACK, parcelableArr);
        }
        if (this.mDeepLinkHandled) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean(KEY_DEEP_LINK_HANDLED, this.mDeepLinkHandled);
        }
        return bundle;
    }

    @CallSuper
    public void setGraph(@NavigationRes int r22) {
        setGraph(r22, (Bundle) null);
    }

    @CallSuper
    public void setGraph(@NavigationRes int r22, @Nullable Bundle bundle) {
        setGraph(getNavInflater().inflate(r22), bundle);
    }

    @CallSuper
    public void setGraph(@NonNull NavGraph navGraph) {
        setGraph(navGraph, (Bundle) null);
    }

    @CallSuper
    public void setGraph(@NonNull NavGraph navGraph, @Nullable Bundle bundle) {
        NavGraph navGraph2 = this.mGraph;
        if (navGraph2 != null) {
            popBackStackInternal(navGraph2.getId(), true);
        }
        this.mGraph = navGraph;
        onGraphCreated(bundle);
    }

    public void setLifecycleOwner(@NonNull LifecycleOwner lifecycleOwner) {
        if (lifecycleOwner == this.mLifecycleOwner) {
            return;
        }
        this.mLifecycleOwner = lifecycleOwner;
        lifecycleOwner.getLifecycle().addObserver(this.mLifecycleObserver);
    }

    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void setNavigatorProvider(@NonNull NavigatorProvider navigatorProvider) {
        if (!this.mBackStack.isEmpty()) {
            throw new IllegalStateException("NavigatorProvider must be set before setGraph call");
        }
        this.mNavigatorProvider = navigatorProvider;
    }

    public void setOnBackPressedDispatcher(@NonNull OnBackPressedDispatcher onBackPressedDispatcher) {
        if (this.mLifecycleOwner == null) {
            throw new IllegalStateException("You must call setLifecycleOwner() before calling setOnBackPressedDispatcher()");
        }
        this.mOnBackPressedCallback.remove();
        onBackPressedDispatcher.addCallback(this.mLifecycleOwner, this.mOnBackPressedCallback);
        this.mLifecycleOwner.getLifecycle().removeObserver(this.mLifecycleObserver);
        this.mLifecycleOwner.getLifecycle().addObserver(this.mLifecycleObserver);
    }

    public void setViewModelStore(@NonNull ViewModelStore viewModelStore) {
        if (this.mViewModel == NavControllerViewModel.getInstance(viewModelStore)) {
            return;
        }
        if (!this.mBackStack.isEmpty()) {
            throw new IllegalStateException("ViewModelStore should be set before setGraph call");
        }
        this.mViewModel = NavControllerViewModel.getInstance(viewModelStore);
    }
}
