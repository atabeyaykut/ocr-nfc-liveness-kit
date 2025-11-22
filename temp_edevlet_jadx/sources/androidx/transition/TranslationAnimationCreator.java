package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TimeInterpolator;
import android.util.Property;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.transition.Transition;

/* loaded from: classes.dex */
class TranslationAnimationCreator {

    public static class TransitionPositionListener extends AnimatorListenerAdapter implements Transition.TransitionListener {
        private final View mMovingView;
        private float mPausedX;
        private float mPausedY;
        private final int mStartX;
        private final int mStartY;
        private final float mTerminalX;
        private final float mTerminalY;
        private int[] mTransitionPosition;
        private final View mViewInHierarchy;

        public TransitionPositionListener(View view, View view2, int r42, int r52, float f, float f10) {
            this.mMovingView = view;
            this.mViewInHierarchy = view2;
            this.mStartX = r42 - Math.round(view.getTranslationX());
            this.mStartY = r52 - Math.round(view.getTranslationY());
            this.mTerminalX = f;
            this.mTerminalY = f10;
            int r22 = R.id.transition_position;
            int[] r43 = (int[]) view2.getTag(r22);
            this.mTransitionPosition = r43;
            if (r43 != null) {
                view2.setTag(r22, null);
            }
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            if (this.mTransitionPosition == null) {
                this.mTransitionPosition = new int[2];
            }
            this.mTransitionPosition[0] = Math.round(this.mMovingView.getTranslationX() + this.mStartX);
            this.mTransitionPosition[1] = Math.round(this.mMovingView.getTranslationY() + this.mStartY);
            this.mViewInHierarchy.setTag(R.id.transition_position, this.mTransitionPosition);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            this.mPausedX = this.mMovingView.getTranslationX();
            this.mPausedY = this.mMovingView.getTranslationY();
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            this.mMovingView.setTranslationX(this.mPausedX);
            this.mMovingView.setTranslationY(this.mPausedY);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionCancel(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionEnd(@NonNull Transition transition) {
            this.mMovingView.setTranslationX(this.mTerminalX);
            this.mMovingView.setTranslationY(this.mTerminalY);
            transition.removeListener(this);
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionPause(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionResume(@NonNull Transition transition) {
        }

        @Override // androidx.transition.Transition.TransitionListener
        public void onTransitionStart(@NonNull Transition transition) {
        }
    }

    private TranslationAnimationCreator() {
    }

    @Nullable
    public static Animator createAnimation(@NonNull View view, @NonNull TransitionValues transitionValues, int r16, int r17, float f, float f10, float f11, float f12, @Nullable TimeInterpolator timeInterpolator, @NonNull Transition transition) {
        float f13;
        float f14;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        if (((int[]) transitionValues.view.getTag(R.id.transition_position)) != null) {
            f13 = (r4[0] - r16) + translationX;
            f14 = (r4[1] - r17) + translationY;
        } else {
            f13 = f;
            f14 = f10;
        }
        int r82 = Math.round(f13 - translationX) + r16;
        int r92 = Math.round(f14 - translationY) + r17;
        view.setTranslationX(f13);
        view.setTranslationY(f14);
        if (f13 == f11 && f14 == f12) {
            return null;
        }
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f13, f11), PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f14, f12));
        TransitionPositionListener transitionPositionListener = new TransitionPositionListener(view, transitionValues.view, r82, r92, translationX, translationY);
        transition.addListener(transitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.addListener(transitionPositionListener);
        AnimatorUtils.addPauseListener(objectAnimatorOfPropertyValuesHolder, transitionPositionListener);
        objectAnimatorOfPropertyValuesHolder.setInterpolator(timeInterpolator);
        return objectAnimatorOfPropertyValuesHolder;
    }
}
