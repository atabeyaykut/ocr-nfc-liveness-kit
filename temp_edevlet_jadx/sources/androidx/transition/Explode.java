package androidx.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public class Explode extends Visibility {
    private static final String PROPNAME_SCREEN_BOUNDS = "android:explode:screenBounds";
    private int[] mTempLoc;
    private static final TimeInterpolator sDecelerate = new DecelerateInterpolator();
    private static final TimeInterpolator sAccelerate = new AccelerateInterpolator();

    public Explode() {
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    public Explode(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTempLoc = new int[2];
        setPropagation(new CircularPropagation());
    }

    private static float calculateDistance(float f, float f10) {
        return (float) Math.sqrt((f10 * f10) + (f * f));
    }

    private static float calculateMaxDistance(View view, int r22, int r32) {
        return calculateDistance(Math.max(r22, view.getWidth() - r22), Math.max(r32, view.getHeight() - r32));
    }

    private void calculateOut(View view, Rect rect, int[] r15) {
        int r52;
        int r6;
        view.getLocationOnScreen(this.mTempLoc);
        int[] r02 = this.mTempLoc;
        int r22 = r02[0];
        int r03 = r02[1];
        Rect epicenter = getEpicenter();
        if (epicenter == null) {
            r52 = Math.round(view.getTranslationX()) + (view.getWidth() / 2) + r22;
            r6 = Math.round(view.getTranslationY()) + (view.getHeight() / 2) + r03;
        } else {
            r52 = epicenter.centerX();
            r6 = epicenter.centerY();
        }
        float fCenterX = rect.centerX() - r52;
        float fCenterY = rect.centerY() - r6;
        if (fCenterX == 0.0f && fCenterY == 0.0f) {
            fCenterX = ((float) (Math.random() * 2.0d)) - 1.0f;
            fCenterY = ((float) (Math.random() * 2.0d)) - 1.0f;
        }
        float fCalculateDistance = calculateDistance(fCenterX, fCenterY);
        float fCalculateMaxDistance = calculateMaxDistance(view, r52 - r22, r6 - r03);
        r15[0] = Math.round((fCenterX / fCalculateDistance) * fCalculateMaxDistance);
        r15[1] = Math.round(fCalculateMaxDistance * (fCenterY / fCalculateDistance));
    }

    private void captureValues(TransitionValues transitionValues) {
        View view = transitionValues.view;
        view.getLocationOnScreen(this.mTempLoc);
        int[] r12 = this.mTempLoc;
        int r22 = r12[0];
        int r13 = r12[1];
        transitionValues.values.put(PROPNAME_SCREEN_BOUNDS, new Rect(r22, r13, view.getWidth() + r22, view.getHeight() + r13));
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureEndValues(@NonNull TransitionValues transitionValues) {
        super.captureEndValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility, androidx.transition.Transition
    public void captureStartValues(@NonNull TransitionValues transitionValues) {
        super.captureStartValues(transitionValues);
        captureValues(transitionValues);
    }

    @Override // androidx.transition.Visibility
    public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        if (transitionValues2 == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues2.values.get(PROPNAME_SCREEN_BOUNDS);
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        calculateOut(viewGroup, rect, this.mTempLoc);
        int[] r11 = this.mTempLoc;
        return TranslationAnimationCreator.createAnimation(view, transitionValues2, rect.left, rect.top, translationX + r11[0], translationY + r11[1], translationX, translationY, sDecelerate, this);
    }

    @Override // androidx.transition.Visibility
    public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
        float f;
        float f10;
        if (transitionValues == null) {
            return null;
        }
        Rect rect = (Rect) transitionValues.values.get(PROPNAME_SCREEN_BOUNDS);
        int r22 = rect.left;
        int r32 = rect.top;
        float translationX = view.getTranslationX();
        float translationY = view.getTranslationY();
        int[] r02 = (int[]) transitionValues.view.getTag(R.id.transition_position);
        if (r02 != null) {
            f = (r7 - rect.left) + translationX;
            f10 = (r0 - rect.top) + translationY;
            rect.offsetTo(r02[0], r02[1]);
        } else {
            f = translationX;
            f10 = translationY;
        }
        calculateOut(viewGroup, rect, this.mTempLoc);
        int[] r11 = this.mTempLoc;
        return TranslationAnimationCreator.createAnimation(view, transitionValues, r22, r32, translationX, translationY, f + r11[0], f10 + r11[1], sAccelerate, this);
    }
}
