package androidx.transition;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.v4.media.a;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.browser.browseractions.b;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class TransitionSet extends Transition {
    private static final int FLAG_CHANGE_EPICENTER = 8;
    private static final int FLAG_CHANGE_INTERPOLATOR = 1;
    private static final int FLAG_CHANGE_PATH_MOTION = 4;
    private static final int FLAG_CHANGE_PROPAGATION = 2;
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    private int mChangeFlags;
    int mCurrentListeners;
    private boolean mPlayTogether;
    boolean mStarted;
    private ArrayList<Transition> mTransitions;

    public static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        public TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            int r12 = transitionSet.mCurrentListeners - 1;
            transitionSet.mCurrentListeners = r12;
            if (r12 == 0) {
                transitionSet.mStarted = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }

        @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.start();
            this.mTransitionSet.mStarted = true;
        }
    }

    public TransitionSet() {
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
    }

    @SuppressLint({"RestrictedApi"})
    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_SET);
        setOrdering(TypedArrayUtils.getNamedInt(typedArrayObtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        typedArrayObtainStyledAttributes.recycle();
    }

    private void addTransitionInternal(@NonNull Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
    }

    private void setupStartEndListeners() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition addTarget(@NonNull Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@IdRes int r32) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).addTarget(r32);
        }
        return (TransitionSet) super.addTarget(r32);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull View view) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull Class<?> cls) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet addTarget(@NonNull String str) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @NonNull
    public TransitionSet addTransition(@NonNull Transition transition) {
        addTransitionInternal(transition);
        long j10 = this.mDuration;
        if (j10 >= 0) {
            transition.setDuration(j10);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.mChangeFlags & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).cancel();
        }
    }

    @Override // androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.isValidTarget(transitionValues.view)) {
                    next.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    public void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).capturePropagationValues(transitionValues);
        }
    }

    @Override // androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.isValidTarget(transitionValues.view)) {
                    next.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(next);
                }
            }
        }
    }

    @Override // androidx.transition.Transition
    /* renamed from: clone */
    public Transition mo28clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo28clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int r22 = 0; r22 < size; r22++) {
            transitionSet.addTransitionInternal(this.mTransitions.get(r22).mo28clone());
        }
        return transitionSet;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        for (int r42 = 0; r42 < size; r42++) {
            Transition transition = this.mTransitions.get(r42);
            if (startDelay > 0 && (this.mPlayTogether || r42 == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(int r32, boolean z10) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).excludeTarget(r32, z10);
        }
        return super.excludeTarget(r32, z10);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull View view, boolean z10) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).excludeTarget(view, z10);
        }
        return super.excludeTarget(view, z10);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull Class<?> cls, boolean z10) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).excludeTarget(cls, z10);
        }
        return super.excludeTarget(cls, z10);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public Transition excludeTarget(@NonNull String str, boolean z10) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).excludeTarget(str, z10);
        }
        return super.excludeTarget(str, z10);
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).forceToEnd(viewGroup);
        }
    }

    public int getOrdering() {
        return !this.mPlayTogether ? 1 : 0;
    }

    @Nullable
    public Transition getTransitionAt(int r22) {
        if (r22 < 0 || r22 >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(r22);
    }

    public int getTransitionCount() {
        return this.mTransitions.size();
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).pause(view);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeListener(@NonNull Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public /* bridge */ /* synthetic */ Transition removeTarget(@NonNull Class cls) {
        return removeTarget((Class<?>) cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@IdRes int r32) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).removeTarget(r32);
        }
        return (TransitionSet) super.removeTarget(r32);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull View view) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull Class<?> cls) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet removeTarget(@NonNull String str) {
        for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
            this.mTransitions.get(r02).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }

    @NonNull
    public TransitionSet removeTransition(@NonNull Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void resume(View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).resume(view);
        }
    }

    @Override // androidx.transition.Transition
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP_PREFIX})
    public void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        if (this.mPlayTogether) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int r02 = 1; r02 < this.mTransitions.size(); r02++) {
            Transition transition = this.mTransitions.get(r02 - 1);
            final Transition transition2 = this.mTransitions.get(r02);
            transition.addListener(new TransitionListenerAdapter() { // from class: androidx.transition.TransitionSet.1
                @Override // androidx.transition.TransitionListenerAdapter, androidx.transition.Transition.TransitionListener
                public void onTransitionEnd(@NonNull Transition transition3) {
                    transition2.runAnimators();
                    transition3.removeListener(this);
                }
            });
        }
        Transition transition3 = this.mTransitions.get(0);
        if (transition3 != null) {
            transition3.runAnimators();
        }
    }

    @Override // androidx.transition.Transition
    public void setCanRemoveViews(boolean z10) {
        super.setCanRemoveViews(z10);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).setCanRemoveViews(z10);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setDuration(long j10) {
        ArrayList<Transition> arrayList;
        super.setDuration(j10);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
            for (int r12 = 0; r12 < size; r12++) {
                this.mTransitions.get(r12).setDuration(j10);
            }
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).setEpicenterCallback(epicenterCallback);
        }
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setInterpolator(@Nullable TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList<Transition> arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int r12 = 0; r12 < size; r12++) {
                this.mTransitions.get(r12).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @NonNull
    public TransitionSet setOrdering(int r32) {
        if (r32 == 0) {
            this.mPlayTogether = true;
        } else {
            if (r32 != 1) {
                throw new AndroidRuntimeException(a.d("Invalid parameter for TransitionSet ordering: ", r32));
            }
            this.mPlayTogether = false;
        }
        return this;
    }

    @Override // androidx.transition.Transition
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int r02 = 0; r02 < this.mTransitions.size(); r02++) {
                this.mTransitions.get(r02).setPathMotion(pathMotion);
            }
        }
    }

    @Override // androidx.transition.Transition
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).setPropagation(transitionPropagation);
        }
    }

    @Override // androidx.transition.Transition
    public TransitionSet setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.mTransitions.size();
        for (int r12 = 0; r12 < size; r12++) {
            this.mTransitions.get(r12).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override // androidx.transition.Transition
    @NonNull
    public TransitionSet setStartDelay(long j10) {
        return (TransitionSet) super.setStartDelay(j10);
    }

    @Override // androidx.transition.Transition
    public String toString(String str) {
        String string = super.toString(str);
        for (int r12 = 0; r12 < this.mTransitions.size(); r12++) {
            StringBuilder sbI = b.i(string, "\n");
            sbI.append(this.mTransitions.get(r12).toString(str + "  "));
            string = sbI.toString();
        }
        return string;
    }
}
