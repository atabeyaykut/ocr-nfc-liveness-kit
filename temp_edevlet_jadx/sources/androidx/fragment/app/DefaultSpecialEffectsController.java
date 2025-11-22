package androidx.fragment.app;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import androidx.core.app.SharedElementCallback;
import androidx.core.os.CancellationSignal;
import androidx.core.util.Preconditions;
import androidx.core.view.OneShotPreDrawListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.ViewGroupCompat;
import androidx.fragment.app.FragmentAnim;
import androidx.fragment.app.SpecialEffectsController;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class DefaultSpecialEffectsController extends SpecialEffectsController {

    /* renamed from: androidx.fragment.app.DefaultSpecialEffectsController$10, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass10 {
        static final /* synthetic */ int[] $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State;

        static {
            int[] r02 = new int[SpecialEffectsController.Operation.State.values().length];
            $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State = r02;
            try {
                r02[SpecialEffectsController.Operation.State.GONE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.INVISIBLE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.REMOVED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$fragment$app$SpecialEffectsController$Operation$State[SpecialEffectsController.Operation.State.VISIBLE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class AnimationInfo extends SpecialEffectsInfo {

        @Nullable
        private FragmentAnim.AnimationOrAnimator mAnimation;
        private boolean mIsPop;
        private boolean mLoadedAnim;

        public AnimationInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z10) {
            super(operation, cancellationSignal);
            this.mLoadedAnim = false;
            this.mIsPop = z10;
        }

        @Nullable
        public FragmentAnim.AnimationOrAnimator getAnimation(@NonNull Context context) throws Resources.NotFoundException {
            if (this.mLoadedAnim) {
                return this.mAnimation;
            }
            FragmentAnim.AnimationOrAnimator animationOrAnimatorLoadAnimation = FragmentAnim.loadAnimation(context, getOperation().getFragment(), getOperation().getFinalState() == SpecialEffectsController.Operation.State.VISIBLE, this.mIsPop);
            this.mAnimation = animationOrAnimatorLoadAnimation;
            this.mLoadedAnim = true;
            return animationOrAnimatorLoadAnimation;
        }
    }

    public static class SpecialEffectsInfo {

        @NonNull
        private final SpecialEffectsController.Operation mOperation;

        @NonNull
        private final CancellationSignal mSignal;

        public SpecialEffectsInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal) {
            this.mOperation = operation;
            this.mSignal = cancellationSignal;
        }

        public void completeSpecialEffect() {
            this.mOperation.completeSpecialEffect(this.mSignal);
        }

        @NonNull
        public SpecialEffectsController.Operation getOperation() {
            return this.mOperation;
        }

        @NonNull
        public CancellationSignal getSignal() {
            return this.mSignal;
        }

        public boolean isVisibilityUnchanged() {
            SpecialEffectsController.Operation.State state;
            SpecialEffectsController.Operation.State stateFrom = SpecialEffectsController.Operation.State.from(this.mOperation.getFragment().mView);
            SpecialEffectsController.Operation.State finalState = this.mOperation.getFinalState();
            return stateFrom == finalState || !(stateFrom == (state = SpecialEffectsController.Operation.State.VISIBLE) || finalState == state);
        }
    }

    public static class TransitionInfo extends SpecialEffectsInfo {
        private final boolean mOverlapAllowed;

        @Nullable
        private final Object mSharedElementTransition;

        @Nullable
        private final Object mTransition;

        public TransitionInfo(@NonNull SpecialEffectsController.Operation operation, @NonNull CancellationSignal cancellationSignal, boolean z10, boolean z11) {
            boolean allowReturnTransitionOverlap;
            Object sharedElementReturnTransition;
            super(operation, cancellationSignal);
            if (operation.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                Fragment fragment = operation.getFragment();
                this.mTransition = z10 ? fragment.getReenterTransition() : fragment.getEnterTransition();
                Fragment fragment2 = operation.getFragment();
                allowReturnTransitionOverlap = z10 ? fragment2.getAllowReturnTransitionOverlap() : fragment2.getAllowEnterTransitionOverlap();
            } else {
                Fragment fragment3 = operation.getFragment();
                this.mTransition = z10 ? fragment3.getReturnTransition() : fragment3.getExitTransition();
                allowReturnTransitionOverlap = true;
            }
            this.mOverlapAllowed = allowReturnTransitionOverlap;
            if (z11) {
                Fragment fragment4 = operation.getFragment();
                sharedElementReturnTransition = z10 ? fragment4.getSharedElementReturnTransition() : fragment4.getSharedElementEnterTransition();
            } else {
                sharedElementReturnTransition = null;
            }
            this.mSharedElementTransition = sharedElementReturnTransition;
        }

        @Nullable
        private FragmentTransitionImpl getHandlingImpl(Object obj) {
            if (obj == null) {
                return null;
            }
            FragmentTransitionImpl fragmentTransitionImpl = FragmentTransition.PLATFORM_IMPL;
            if (fragmentTransitionImpl != null && fragmentTransitionImpl.canHandle(obj)) {
                return fragmentTransitionImpl;
            }
            FragmentTransitionImpl fragmentTransitionImpl2 = FragmentTransition.SUPPORT_IMPL;
            if (fragmentTransitionImpl2 != null && fragmentTransitionImpl2.canHandle(obj)) {
                return fragmentTransitionImpl2;
            }
            throw new IllegalArgumentException("Transition " + obj + " for fragment " + getOperation().getFragment() + " is not a valid framework Transition or AndroidX Transition");
        }

        @Nullable
        public FragmentTransitionImpl getHandlingImpl() {
            FragmentTransitionImpl handlingImpl = getHandlingImpl(this.mTransition);
            FragmentTransitionImpl handlingImpl2 = getHandlingImpl(this.mSharedElementTransition);
            if (handlingImpl == null || handlingImpl2 == null || handlingImpl == handlingImpl2) {
                return handlingImpl != null ? handlingImpl : handlingImpl2;
            }
            throw new IllegalArgumentException("Mixing framework transitions and AndroidX transitions is not allowed. Fragment " + getOperation().getFragment() + " returned Transition " + this.mTransition + " which uses a different Transition  type than its shared element transition " + this.mSharedElementTransition);
        }

        @Nullable
        public Object getSharedElementTransition() {
            return this.mSharedElementTransition;
        }

        @Nullable
        public Object getTransition() {
            return this.mTransition;
        }

        public boolean hasSharedElementTransition() {
            return this.mSharedElementTransition != null;
        }

        public boolean isOverlapAllowed() {
            return this.mOverlapAllowed;
        }
    }

    public DefaultSpecialEffectsController(@NonNull ViewGroup viewGroup) {
        super(viewGroup);
    }

    private void startAnimations(@NonNull List<AnimationInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, boolean z10, @NonNull Map<SpecialEffectsController.Operation, Boolean> map) {
        int r14;
        StringBuilder sb2;
        String str;
        boolean z11;
        Context context;
        View view;
        FragmentAnim.AnimationOrAnimator animation;
        final SpecialEffectsController.Operation operation;
        final ViewGroup container = getContainer();
        Context context2 = container.getContext();
        ArrayList arrayList = new ArrayList();
        Iterator<AnimationInfo> it = list.iterator();
        boolean z12 = false;
        while (true) {
            r14 = 2;
            if (!it.hasNext()) {
                break;
            }
            final AnimationInfo next = it.next();
            if (next.isVisibilityUnchanged() || (animation = next.getAnimation(context2)) == null) {
                next.completeSpecialEffect();
            } else {
                final Animator animator = animation.animator;
                if (animator == null) {
                    arrayList.add(next);
                } else {
                    final SpecialEffectsController.Operation operation2 = next.getOperation();
                    Fragment fragment = operation2.getFragment();
                    if (Boolean.TRUE.equals(map.get(operation2))) {
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                        }
                        next.completeSpecialEffect();
                    } else {
                        boolean z13 = operation2.getFinalState() == SpecialEffectsController.Operation.State.GONE;
                        if (z13) {
                            list2.remove(operation2);
                        }
                        final View view2 = fragment.mView;
                        container.startViewTransition(view2);
                        final boolean z14 = z13;
                        animator.addListener(new AnimatorListenerAdapter() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.2
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                container.endViewTransition(view2);
                                if (z14) {
                                    operation2.getFinalState().applyState(view2);
                                }
                                next.completeSpecialEffect();
                                if (FragmentManager.isLoggingEnabled(2)) {
                                    Log.v(FragmentManager.TAG, "Animator from operation " + operation2 + " has ended.");
                                }
                            }
                        });
                        animator.setTarget(view2);
                        animator.start();
                        if (FragmentManager.isLoggingEnabled(2)) {
                            StringBuilder sb3 = new StringBuilder("Animator from operation ");
                            operation = operation2;
                            sb3.append(operation);
                            sb3.append(" has started.");
                            Log.v(FragmentManager.TAG, sb3.toString());
                        } else {
                            operation = operation2;
                        }
                        next.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.3
                            @Override // androidx.core.os.CancellationSignal.OnCancelListener
                            public void onCancel() {
                                animator.end();
                                if (FragmentManager.isLoggingEnabled(2)) {
                                    Log.v(FragmentManager.TAG, "Animator from operation " + operation + " has been canceled.");
                                }
                            }
                        });
                        z12 = true;
                    }
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final AnimationInfo animationInfo = (AnimationInfo) it2.next();
            final SpecialEffectsController.Operation operation3 = animationInfo.getOperation();
            Fragment fragment2 = operation3.getFragment();
            if (z10) {
                if (FragmentManager.isLoggingEnabled(r14)) {
                    sb2 = new StringBuilder("Ignoring Animation set on ");
                    sb2.append(fragment2);
                    str = " as Animations cannot run alongside Transitions.";
                    sb2.append(str);
                    Log.v(FragmentManager.TAG, sb2.toString());
                }
                animationInfo.completeSpecialEffect();
            } else if (z12) {
                if (FragmentManager.isLoggingEnabled(r14)) {
                    sb2 = new StringBuilder("Ignoring Animation set on ");
                    sb2.append(fragment2);
                    str = " as Animations cannot run alongside Animators.";
                    sb2.append(str);
                    Log.v(FragmentManager.TAG, sb2.toString());
                }
                animationInfo.completeSpecialEffect();
            } else {
                final View view3 = fragment2.mView;
                Animation animation2 = (Animation) Preconditions.checkNotNull(((FragmentAnim.AnimationOrAnimator) Preconditions.checkNotNull(animationInfo.getAnimation(context2))).animation);
                if (operation3.getFinalState() != SpecialEffectsController.Operation.State.REMOVED) {
                    view3.startAnimation(animation2);
                    animationInfo.completeSpecialEffect();
                    z11 = z12;
                    context = context2;
                    view = view3;
                } else {
                    container.startViewTransition(view3);
                    FragmentAnim.EndViewTransitionAnimation endViewTransitionAnimation = new FragmentAnim.EndViewTransitionAnimation(animation2, container, view3);
                    z11 = z12;
                    context = context2;
                    view = view3;
                    endViewTransitionAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4
                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation3) {
                            container.post(new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.4.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    AnonymousClass4 anonymousClass4 = AnonymousClass4.this;
                                    container.endViewTransition(view3);
                                    animationInfo.completeSpecialEffect();
                                }
                            });
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Animation from operation " + operation3 + " has ended.");
                            }
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationRepeat(Animation animation3) {
                        }

                        @Override // android.view.animation.Animation.AnimationListener
                        public void onAnimationStart(Animation animation3) {
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Animation from operation " + operation3 + " has reached onAnimationStart.");
                            }
                        }
                    });
                    view.startAnimation(endViewTransitionAnimation);
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Animation from operation " + operation3 + " has started.");
                    }
                }
                final View view4 = view;
                animationInfo.getSignal().setOnCancelListener(new CancellationSignal.OnCancelListener() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.5
                    @Override // androidx.core.os.CancellationSignal.OnCancelListener
                    public void onCancel() {
                        view4.clearAnimation();
                        container.endViewTransition(view4);
                        animationInfo.completeSpecialEffect();
                        if (FragmentManager.isLoggingEnabled(2)) {
                            Log.v(FragmentManager.TAG, "Animation from operation " + operation3 + " has been cancelled.");
                        }
                    }
                });
                z12 = z11;
                context2 = context;
                r14 = 2;
            }
        }
    }

    @NonNull
    private Map<SpecialEffectsController.Operation, Boolean> startTransitions(@NonNull List<TransitionInfo> list, @NonNull List<SpecialEffectsController.Operation> list2, final boolean z10, @Nullable final SpecialEffectsController.Operation operation, @Nullable final SpecialEffectsController.Operation operation2) {
        SpecialEffectsController.Operation operation3;
        Object obj;
        SpecialEffectsController.Operation operation4;
        Object obj2;
        Object objMergeTransitionsTogether;
        View view;
        ArrayList arrayList;
        ArrayList<View> arrayList2;
        View view2;
        HashMap map;
        Object obj3;
        SpecialEffectsController.Operation operation5;
        final ArrayList<View> arrayList3;
        View view3;
        ArrayList arrayList4;
        HashMap map2;
        Rect rect;
        View view4;
        ArrayMap arrayMap;
        ArrayList<View> arrayList5;
        final Rect rect2;
        FragmentTransitionImpl fragmentTransitionImpl;
        HashMap map3;
        ArrayList<View> arrayList6;
        SharedElementCallback enterTransitionCallback;
        SharedElementCallback exitTransitionCallback;
        ArrayList<String> arrayList7;
        int r02;
        final View view5;
        String strFindKeyForValue;
        ArrayList<String> arrayList8;
        boolean z11 = z10;
        HashMap map4 = new HashMap();
        final FragmentTransitionImpl fragmentTransitionImpl2 = null;
        for (TransitionInfo transitionInfo : list) {
            if (!transitionInfo.isVisibilityUnchanged()) {
                FragmentTransitionImpl handlingImpl = transitionInfo.getHandlingImpl();
                if (fragmentTransitionImpl2 == null) {
                    fragmentTransitionImpl2 = handlingImpl;
                } else if (handlingImpl != null && fragmentTransitionImpl2 != handlingImpl) {
                    StringBuilder sb2 = new StringBuilder("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    sb2.append(transitionInfo.getOperation().getFragment());
                    sb2.append(" returned Transition ");
                    throw new IllegalArgumentException(androidx.camera.core.impl.a.e(sb2, transitionInfo.getTransition(), " which uses a different Transition  type than other Fragments."));
                }
            }
        }
        if (fragmentTransitionImpl2 == null) {
            for (TransitionInfo transitionInfo2 : list) {
                map4.put(transitionInfo2.getOperation(), Boolean.FALSE);
                transitionInfo2.completeSpecialEffect();
            }
            return map4;
        }
        View view6 = new View(getContainer().getContext());
        Rect rect3 = new Rect();
        ArrayList<View> arrayList9 = new ArrayList<>();
        ArrayList<View> arrayList10 = new ArrayList<>();
        ArrayMap arrayMap2 = new ArrayMap();
        Object obj4 = null;
        SpecialEffectsController.Operation operation6 = operation2;
        View view7 = null;
        boolean z12 = false;
        SpecialEffectsController.Operation operation7 = operation;
        for (TransitionInfo transitionInfo3 : list) {
            if (!transitionInfo3.hasSharedElementTransition() || operation7 == null || operation6 == null) {
                view4 = view7;
                arrayMap = arrayMap2;
                arrayList5 = arrayList9;
                rect2 = rect3;
                fragmentTransitionImpl = fragmentTransitionImpl2;
                map3 = map4;
                arrayList6 = arrayList10;
            } else {
                Object objWrapTransitionInSet = fragmentTransitionImpl2.wrapTransitionInSet(fragmentTransitionImpl2.cloneTransition(transitionInfo3.getSharedElementTransition()));
                ArrayList<String> sharedElementSourceNames = operation2.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementSourceNames2 = operation.getFragment().getSharedElementSourceNames();
                ArrayList<String> sharedElementTargetNames = operation.getFragment().getSharedElementTargetNames();
                HashMap map5 = map4;
                view4 = view7;
                int r92 = 0;
                while (r92 < sharedElementTargetNames.size()) {
                    int r82 = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(r92));
                    ArrayList<String> arrayList11 = sharedElementTargetNames;
                    if (r82 != -1) {
                        sharedElementSourceNames.set(r82, sharedElementSourceNames2.get(r92));
                    }
                    r92++;
                    sharedElementTargetNames = arrayList11;
                }
                ArrayList<String> sharedElementTargetNames2 = operation2.getFragment().getSharedElementTargetNames();
                Fragment fragment = operation.getFragment();
                if (z11) {
                    enterTransitionCallback = fragment.getEnterTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getExitTransitionCallback();
                } else {
                    enterTransitionCallback = fragment.getExitTransitionCallback();
                    exitTransitionCallback = operation2.getFragment().getEnterTransitionCallback();
                }
                int size = sharedElementSourceNames.size();
                View view8 = view6;
                int r14 = 0;
                while (r14 < size) {
                    arrayMap2.put(sharedElementSourceNames.get(r14), sharedElementTargetNames2.get(r14));
                    r14++;
                    size = size;
                    rect3 = rect3;
                }
                Rect rect4 = rect3;
                if (FragmentManager.isLoggingEnabled(2)) {
                    Log.v(FragmentManager.TAG, ">>> entering view names <<<");
                    for (Iterator<String> it = sharedElementTargetNames2.iterator(); it.hasNext(); it = it) {
                        Log.v(FragmentManager.TAG, "Name: " + it.next());
                    }
                    Log.v(FragmentManager.TAG, ">>> exiting view names <<<");
                    for (Iterator<String> it2 = sharedElementSourceNames.iterator(); it2.hasNext(); it2 = it2) {
                        Log.v(FragmentManager.TAG, "Name: " + it2.next());
                    }
                }
                ArrayMap<String, View> arrayMap3 = new ArrayMap<>();
                findNamedViews(arrayMap3, operation.getFragment().mView);
                arrayMap3.retainAll(sharedElementSourceNames);
                if (enterTransitionCallback != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Executing exit callback for operation " + operation7);
                    }
                    enterTransitionCallback.onMapSharedElements(sharedElementSourceNames, arrayMap3);
                    int size2 = sharedElementSourceNames.size() - 1;
                    while (size2 >= 0) {
                        String str = sharedElementSourceNames.get(size2);
                        View view9 = arrayMap3.get(str);
                        if (view9 == null) {
                            arrayMap2.remove(str);
                            arrayList8 = sharedElementSourceNames;
                        } else {
                            arrayList8 = sharedElementSourceNames;
                            if (!str.equals(ViewCompat.getTransitionName(view9))) {
                                arrayMap2.put(ViewCompat.getTransitionName(view9), (String) arrayMap2.remove(str));
                            }
                        }
                        size2--;
                        sharedElementSourceNames = arrayList8;
                    }
                    arrayList7 = sharedElementSourceNames;
                } else {
                    arrayList7 = sharedElementSourceNames;
                    arrayMap2.retainAll(arrayMap3.keySet());
                }
                final ArrayMap<String, View> arrayMap4 = new ArrayMap<>();
                findNamedViews(arrayMap4, operation2.getFragment().mView);
                arrayMap4.retainAll(sharedElementTargetNames2);
                arrayMap4.retainAll(arrayMap2.values());
                if (exitTransitionCallback != null) {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "Executing enter callback for operation " + operation6);
                    }
                    exitTransitionCallback.onMapSharedElements(sharedElementTargetNames2, arrayMap4);
                    for (int size3 = sharedElementTargetNames2.size() - 1; size3 >= 0; size3--) {
                        String str2 = sharedElementTargetNames2.get(size3);
                        View view10 = arrayMap4.get(str2);
                        if (view10 == null) {
                            String strFindKeyForValue2 = FragmentTransition.findKeyForValue(arrayMap2, str2);
                            if (strFindKeyForValue2 != null) {
                                arrayMap2.remove(strFindKeyForValue2);
                            }
                        } else if (!str2.equals(ViewCompat.getTransitionName(view10)) && (strFindKeyForValue = FragmentTransition.findKeyForValue(arrayMap2, str2)) != null) {
                            arrayMap2.put(strFindKeyForValue, ViewCompat.getTransitionName(view10));
                        }
                    }
                } else {
                    FragmentTransition.retainValues(arrayMap2, arrayMap4);
                }
                retainMatchingViews(arrayMap3, arrayMap2.keySet());
                retainMatchingViews(arrayMap4, arrayMap2.values());
                if (arrayMap2.isEmpty()) {
                    arrayList9.clear();
                    arrayList10.clear();
                    obj4 = null;
                    arrayMap = arrayMap2;
                    arrayList6 = arrayList10;
                    arrayList5 = arrayList9;
                    fragmentTransitionImpl = fragmentTransitionImpl2;
                    map3 = map5;
                    view6 = view8;
                    rect2 = rect4;
                } else {
                    FragmentTransition.callSharedElementStartEnd(operation2.getFragment(), operation.getFragment(), z11, arrayMap3, true);
                    ArrayMap arrayMap5 = arrayMap2;
                    OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.6
                        @Override // java.lang.Runnable
                        public void run() {
                            FragmentTransition.callSharedElementStartEnd(operation2.getFragment(), operation.getFragment(), z10, arrayMap4, false);
                        }
                    });
                    arrayList9.addAll(arrayMap3.values());
                    if (arrayList7.isEmpty()) {
                        r02 = 0;
                    } else {
                        r02 = 0;
                        View view11 = arrayMap3.get(arrayList7.get(0));
                        fragmentTransitionImpl2.setEpicenter(objWrapTransitionInSet, view11);
                        view4 = view11;
                    }
                    arrayList10.addAll(arrayMap4.values());
                    if (sharedElementTargetNames2.isEmpty() || (view5 = arrayMap4.get(sharedElementTargetNames2.get(r02))) == null) {
                        rect2 = rect4;
                    } else {
                        rect2 = rect4;
                        OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.7
                            @Override // java.lang.Runnable
                            public void run() {
                                fragmentTransitionImpl2.getBoundsOnScreen(view5, rect2);
                            }
                        });
                        z12 = true;
                    }
                    fragmentTransitionImpl2.setSharedElementTargets(objWrapTransitionInSet, view8, arrayList9);
                    arrayMap = arrayMap5;
                    arrayList6 = arrayList10;
                    arrayList5 = arrayList9;
                    FragmentTransitionImpl fragmentTransitionImpl3 = fragmentTransitionImpl2;
                    fragmentTransitionImpl2.scheduleRemoveTargets(objWrapTransitionInSet, null, null, null, null, objWrapTransitionInSet, arrayList6);
                    Boolean bool = Boolean.TRUE;
                    map3 = map5;
                    map3.put(operation, bool);
                    map3.put(operation2, bool);
                    view6 = view8;
                    obj4 = objWrapTransitionInSet;
                    operation6 = operation2;
                    fragmentTransitionImpl = fragmentTransitionImpl3;
                    operation7 = operation;
                }
            }
            rect3 = rect2;
            arrayMap2 = arrayMap;
            arrayList9 = arrayList5;
            arrayList10 = arrayList6;
            map4 = map3;
            view7 = view4;
            fragmentTransitionImpl2 = fragmentTransitionImpl;
            z11 = z10;
        }
        View view12 = view7;
        ArrayMap arrayMap6 = arrayMap2;
        Rect rect5 = rect3;
        FragmentTransitionImpl fragmentTransitionImpl4 = fragmentTransitionImpl2;
        HashMap map6 = map4;
        ArrayList<View> arrayList12 = arrayList10;
        ArrayList<View> arrayList13 = arrayList9;
        ArrayList arrayList14 = new ArrayList();
        Object objMergeTransitionsTogether2 = null;
        Object obj5 = null;
        for (TransitionInfo transitionInfo4 : list) {
            if (transitionInfo4.isVisibilityUnchanged()) {
                operation4 = transitionInfo4.getOperation();
                obj = objMergeTransitionsTogether2;
            } else {
                obj = objMergeTransitionsTogether2;
                Object objCloneTransition = fragmentTransitionImpl4.cloneTransition(transitionInfo4.getTransition());
                operation4 = transitionInfo4.getOperation();
                boolean z13 = obj4 != null && (operation4 == operation7 || operation4 == operation6);
                if (objCloneTransition == null) {
                    if (!z13) {
                    }
                    objMergeTransitionsTogether2 = obj;
                    rect = rect5;
                    objMergeTransitionsTogether = obj5;
                    arrayList2 = arrayList13;
                    map2 = map6;
                    view3 = view12;
                    arrayList4 = arrayList14;
                    view2 = view6;
                    arrayList14 = arrayList4;
                    view6 = view2;
                    rect5 = rect;
                    view12 = view3;
                    map6 = map2;
                    obj5 = objMergeTransitionsTogether;
                    arrayList13 = arrayList2;
                } else {
                    HashMap map7 = map6;
                    ArrayList<View> arrayList15 = new ArrayList<>();
                    Object obj6 = obj5;
                    captureTransitioningViews(arrayList15, operation4.getFragment().mView);
                    if (z13) {
                        if (operation4 == operation7) {
                            arrayList15.removeAll(arrayList13);
                        } else {
                            arrayList15.removeAll(arrayList12);
                        }
                    }
                    if (arrayList15.isEmpty()) {
                        fragmentTransitionImpl4.addTarget(objCloneTransition, view6);
                        obj2 = obj;
                        objMergeTransitionsTogether = obj6;
                        arrayList = arrayList14;
                        arrayList2 = arrayList13;
                        arrayList3 = arrayList15;
                        view = view12;
                        map = map7;
                        view2 = view6;
                        obj3 = objCloneTransition;
                        operation5 = operation4;
                    } else {
                        fragmentTransitionImpl4.addTargets(objCloneTransition, arrayList15);
                        obj2 = obj;
                        objMergeTransitionsTogether = obj6;
                        view = view12;
                        arrayList = arrayList14;
                        arrayList2 = arrayList13;
                        view2 = view6;
                        map = map7;
                        fragmentTransitionImpl4.scheduleRemoveTargets(objCloneTransition, objCloneTransition, arrayList15, null, null, null, null);
                        if (operation4.getFinalState() == SpecialEffectsController.Operation.State.GONE) {
                            operation5 = operation4;
                            list2.remove(operation5);
                            arrayList3 = arrayList15;
                            ArrayList<View> arrayList16 = new ArrayList<>(arrayList3);
                            arrayList16.remove(operation5.getFragment().mView);
                            obj3 = objCloneTransition;
                            fragmentTransitionImpl4.scheduleHideFragmentView(obj3, operation5.getFragment().mView, arrayList16);
                            OneShotPreDrawListener.add(getContainer(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.8
                                @Override // java.lang.Runnable
                                public void run() {
                                    FragmentTransition.setViewVisibility(arrayList3, 4);
                                }
                            });
                        } else {
                            obj3 = objCloneTransition;
                            operation5 = operation4;
                            arrayList3 = arrayList15;
                        }
                    }
                    if (operation5.getFinalState() == SpecialEffectsController.Operation.State.VISIBLE) {
                        arrayList4 = arrayList;
                        arrayList4.addAll(arrayList3);
                        if (z12) {
                            fragmentTransitionImpl4.setEpicenter(obj3, rect5);
                        }
                        view3 = view;
                    } else {
                        view3 = view;
                        arrayList4 = arrayList;
                        fragmentTransitionImpl4.setEpicenter(obj3, view3);
                    }
                    map2 = map;
                    map2.put(operation5, Boolean.TRUE);
                    if (transitionInfo4.isOverlapAllowed()) {
                        objMergeTransitionsTogether2 = fragmentTransitionImpl4.mergeTransitionsTogether(obj2, obj3, null);
                        rect = rect5;
                    } else {
                        rect = rect5;
                        objMergeTransitionsTogether = fragmentTransitionImpl4.mergeTransitionsTogether(objMergeTransitionsTogether, obj3, null);
                        objMergeTransitionsTogether2 = obj2;
                    }
                    arrayList14 = arrayList4;
                    view6 = view2;
                    rect5 = rect;
                    view12 = view3;
                    map6 = map2;
                    obj5 = objMergeTransitionsTogether;
                    arrayList13 = arrayList2;
                }
            }
            map6.put(operation4, Boolean.FALSE);
            transitionInfo4.completeSpecialEffect();
            objMergeTransitionsTogether2 = obj;
            rect = rect5;
            objMergeTransitionsTogether = obj5;
            arrayList2 = arrayList13;
            map2 = map6;
            view3 = view12;
            arrayList4 = arrayList14;
            view2 = view6;
            arrayList14 = arrayList4;
            view6 = view2;
            rect5 = rect;
            view12 = view3;
            map6 = map2;
            obj5 = objMergeTransitionsTogether;
            arrayList13 = arrayList2;
        }
        ArrayList<View> arrayList17 = arrayList13;
        HashMap map8 = map6;
        ArrayList arrayList18 = arrayList14;
        Object objMergeTransitionsInSequence = fragmentTransitionImpl4.mergeTransitionsInSequence(objMergeTransitionsTogether2, obj5, obj4);
        if (objMergeTransitionsInSequence == null) {
            return map8;
        }
        for (final TransitionInfo transitionInfo5 : list) {
            if (!transitionInfo5.isVisibilityUnchanged()) {
                Object transition = transitionInfo5.getTransition();
                final SpecialEffectsController.Operation operation8 = transitionInfo5.getOperation();
                boolean z14 = obj4 != null && (operation8 == operation7 || operation8 == operation6);
                if (transition == null && !z14) {
                    operation3 = operation7;
                    operation7 = operation3;
                } else if (ViewCompat.isLaidOut(getContainer())) {
                    operation3 = operation7;
                    fragmentTransitionImpl4.setListenerForTransitionEnd(transitionInfo5.getOperation().getFragment(), objMergeTransitionsInSequence, transitionInfo5.getSignal(), new Runnable() { // from class: androidx.fragment.app.DefaultSpecialEffectsController.9
                        @Override // java.lang.Runnable
                        public void run() {
                            transitionInfo5.completeSpecialEffect();
                            if (FragmentManager.isLoggingEnabled(2)) {
                                Log.v(FragmentManager.TAG, "Transition for operation " + operation8 + "has completed");
                            }
                        }
                    });
                    operation7 = operation3;
                } else {
                    if (FragmentManager.isLoggingEnabled(2)) {
                        Log.v(FragmentManager.TAG, "SpecialEffectsController: Container " + getContainer() + " has not been laid out. Completing operation " + operation8);
                    }
                    transitionInfo5.completeSpecialEffect();
                    operation3 = operation7;
                    operation7 = operation3;
                }
            }
        }
        if (!ViewCompat.isLaidOut(getContainer())) {
            return map8;
        }
        FragmentTransition.setViewVisibility(arrayList18, 4);
        ArrayList<String> arrayListPrepareSetNameOverridesReordered = fragmentTransitionImpl4.prepareSetNameOverridesReordered(arrayList12);
        if (FragmentManager.isLoggingEnabled(2)) {
            Log.v(FragmentManager.TAG, ">>>>> Beginning transition <<<<<");
            Log.v(FragmentManager.TAG, ">>>>> SharedElementFirstOutViews <<<<<");
            Iterator<View> it3 = arrayList17.iterator();
            while (it3.hasNext()) {
                View next = it3.next();
                Log.v(FragmentManager.TAG, "View: " + next + " Name: " + ViewCompat.getTransitionName(next));
            }
            Log.v(FragmentManager.TAG, ">>>>> SharedElementLastInViews <<<<<");
            Iterator<View> it4 = arrayList12.iterator();
            while (it4.hasNext()) {
                View next2 = it4.next();
                Log.v(FragmentManager.TAG, "View: " + next2 + " Name: " + ViewCompat.getTransitionName(next2));
            }
        }
        fragmentTransitionImpl4.beginDelayedTransition(getContainer(), objMergeTransitionsInSequence);
        fragmentTransitionImpl4.setNameOverridesReordered(getContainer(), arrayList17, arrayList12, arrayListPrepareSetNameOverridesReordered, arrayMap6);
        FragmentTransition.setViewVisibility(arrayList18, 0);
        fragmentTransitionImpl4.swapSharedElementTargets(obj4, arrayList17, arrayList12);
        return map8;
    }

    private void syncAnimations(@NonNull List<SpecialEffectsController.Operation> list) {
        Fragment fragment = list.get(list.size() - 1).getFragment();
        for (SpecialEffectsController.Operation operation : list) {
            operation.getFragment().mAnimationInfo.mEnterAnim = fragment.mAnimationInfo.mEnterAnim;
            operation.getFragment().mAnimationInfo.mExitAnim = fragment.mAnimationInfo.mExitAnim;
            operation.getFragment().mAnimationInfo.mPopEnterAnim = fragment.mAnimationInfo.mPopEnterAnim;
            operation.getFragment().mAnimationInfo.mPopExitAnim = fragment.mAnimationInfo.mPopExitAnim;
        }
    }

    public void applyContainerChanges(@NonNull SpecialEffectsController.Operation operation) {
        operation.getFinalState().applyState(operation.getFragment().mView);
    }

    public void captureTransitioningViews(ArrayList<View> arrayList, View view) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (ViewGroupCompat.isTransitionGroup(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int r12 = 0; r12 < childCount; r12++) {
            View childAt = viewGroup.getChildAt(r12);
            if (childAt.getVisibility() == 0) {
                captureTransitioningViews(arrayList, childAt);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a8  */
    @Override // androidx.fragment.app.SpecialEffectsController
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void executeOperations(@androidx.annotation.NonNull java.util.List<androidx.fragment.app.SpecialEffectsController.Operation> r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.DefaultSpecialEffectsController.executeOperations(java.util.List, boolean):void");
    }

    public void findNamedViews(Map<String, View> map, @NonNull View view) {
        String transitionName = ViewCompat.getTransitionName(view);
        if (transitionName != null) {
            map.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int r12 = 0; r12 < childCount; r12++) {
                View childAt = viewGroup.getChildAt(r12);
                if (childAt.getVisibility() == 0) {
                    findNamedViews(map, childAt);
                }
            }
        }
    }

    public void retainMatchingViews(@NonNull ArrayMap<String, View> arrayMap, @NonNull Collection<String> collection) {
        Iterator<Map.Entry<String, View>> it = arrayMap.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(ViewCompat.getTransitionName(it.next().getValue()))) {
                it.remove();
            }
        }
    }
}
