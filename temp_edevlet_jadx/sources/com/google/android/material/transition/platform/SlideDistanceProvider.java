package com.google.android.material.transition.platform;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.support.v4.media.a;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.view.ViewCompat;
import com.google.android.material.R;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@RequiresApi(21)
/* loaded from: classes2.dex */
public final class SlideDistanceProvider implements VisibilityAnimatorProvider {
    private static final int DEFAULT_DISTANCE = -1;

    @Px
    private int slideDistance = -1;
    private int slideEdge;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public @interface GravityFlag {
    }

    public SlideDistanceProvider(int r22) {
        this.slideEdge = r22;
    }

    private static Animator createTranslationAppearAnimator(View view, View view2, int r52, @Px int r6) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (r52 == 3) {
            return createTranslationXAnimator(view2, r6 + translationX, translationX, translationX);
        }
        if (r52 == 5) {
            return createTranslationXAnimator(view2, translationX - r6, translationX, translationX);
        }
        if (r52 == 48) {
            return createTranslationYAnimator(view2, translationY - r6, translationY, translationY);
        }
        if (r52 == 80) {
            return createTranslationYAnimator(view2, r6 + translationY, translationY, translationY);
        }
        if (r52 == 8388611) {
            return createTranslationXAnimator(view2, isRtl(view) ? r6 + translationX : translationX - r6, translationX, translationX);
        }
        if (r52 == 8388613) {
            return createTranslationXAnimator(view2, isRtl(view) ? translationX - r6 : r6 + translationX, translationX, translationX);
        }
        throw new IllegalArgumentException(a.d("Invalid slide direction: ", r52));
    }

    private static Animator createTranslationDisappearAnimator(View view, View view2, int r52, @Px int r6) {
        float translationX = view2.getTranslationX();
        float translationY = view2.getTranslationY();
        if (r52 == 3) {
            return createTranslationXAnimator(view2, translationX, translationX - r6, translationX);
        }
        if (r52 == 5) {
            return createTranslationXAnimator(view2, translationX, r6 + translationX, translationX);
        }
        if (r52 == 48) {
            return createTranslationYAnimator(view2, translationY, r6 + translationY, translationY);
        }
        if (r52 == 80) {
            return createTranslationYAnimator(view2, translationY, translationY - r6, translationY);
        }
        if (r52 == 8388611) {
            return createTranslationXAnimator(view2, translationX, isRtl(view) ? translationX - r6 : r6 + translationX, translationX);
        }
        if (r52 == 8388613) {
            return createTranslationXAnimator(view2, translationX, isRtl(view) ? r6 + translationX : translationX - r6, translationX);
        }
        throw new IllegalArgumentException(a.d("Invalid slide direction: ", r52));
    }

    private static Animator createTranslationXAnimator(final View view, float f, float f10, final float f11) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_X, f, f10));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.1
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationX(f11);
            }
        });
        return objectAnimatorOfPropertyValuesHolder;
    }

    private static Animator createTranslationYAnimator(final View view, float f, float f10, final float f11) {
        ObjectAnimator objectAnimatorOfPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(view, PropertyValuesHolder.ofFloat((Property<?, Float>) View.TRANSLATION_Y, f, f10));
        objectAnimatorOfPropertyValuesHolder.addListener(new AnimatorListenerAdapter() { // from class: com.google.android.material.transition.platform.SlideDistanceProvider.2
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                view.setTranslationY(f11);
            }
        });
        return objectAnimatorOfPropertyValuesHolder;
    }

    private int getSlideDistanceOrDefault(Context context) {
        int r02 = this.slideDistance;
        return r02 != -1 ? r02 : context.getResources().getDimensionPixelSize(R.dimen.mtrl_transition_shared_axis_slide_distance);
    }

    private static boolean isRtl(View view) {
        return ViewCompat.getLayoutDirection(view) == 1;
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createAppear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationAppearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Override // com.google.android.material.transition.platform.VisibilityAnimatorProvider
    @Nullable
    public Animator createDisappear(@NonNull ViewGroup viewGroup, @NonNull View view) {
        return createTranslationDisappearAnimator(viewGroup, view, this.slideEdge, getSlideDistanceOrDefault(view.getContext()));
    }

    @Px
    public int getSlideDistance() {
        return this.slideDistance;
    }

    public int getSlideEdge() {
        return this.slideEdge;
    }

    public void setSlideDistance(@Px int r22) {
        if (r22 < 0) {
            throw new IllegalArgumentException("Slide distance must be positive. If attempting to reverse the direction of the slide, use setSlideEdge(int) instead.");
        }
        this.slideDistance = r22;
    }

    public void setSlideEdge(int r12) {
        this.slideEdge = r12;
    }
}
