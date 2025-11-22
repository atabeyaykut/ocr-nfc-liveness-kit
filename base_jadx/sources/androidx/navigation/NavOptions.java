package androidx.navigation;

import androidx.annotation.AnimRes;
import androidx.annotation.AnimatorRes;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;

/* loaded from: classes.dex */
public final class NavOptions {

    @AnimRes
    @AnimatorRes
    private int mEnterAnim;

    @AnimRes
    @AnimatorRes
    private int mExitAnim;

    @AnimRes
    @AnimatorRes
    private int mPopEnterAnim;

    @AnimRes
    @AnimatorRes
    private int mPopExitAnim;

    @IdRes
    private int mPopUpTo;
    private boolean mPopUpToInclusive;
    private boolean mSingleTop;

    public static final class Builder {
        boolean mPopUpToInclusive;
        boolean mSingleTop;

        @IdRes
        int mPopUpTo = -1;

        @AnimRes
        @AnimatorRes
        int mEnterAnim = -1;

        @AnimRes
        @AnimatorRes
        int mExitAnim = -1;

        @AnimRes
        @AnimatorRes
        int mPopEnterAnim = -1;

        @AnimRes
        @AnimatorRes
        int mPopExitAnim = -1;

        @NonNull
        public NavOptions build() {
            return new NavOptions(this.mSingleTop, this.mPopUpTo, this.mPopUpToInclusive, this.mEnterAnim, this.mExitAnim, this.mPopEnterAnim, this.mPopExitAnim);
        }

        @NonNull
        public Builder setEnterAnim(@AnimRes @AnimatorRes int r12) {
            this.mEnterAnim = r12;
            return this;
        }

        @NonNull
        public Builder setExitAnim(@AnimRes @AnimatorRes int r12) {
            this.mExitAnim = r12;
            return this;
        }

        @NonNull
        public Builder setLaunchSingleTop(boolean z10) {
            this.mSingleTop = z10;
            return this;
        }

        @NonNull
        public Builder setPopEnterAnim(@AnimRes @AnimatorRes int r12) {
            this.mPopEnterAnim = r12;
            return this;
        }

        @NonNull
        public Builder setPopExitAnim(@AnimRes @AnimatorRes int r12) {
            this.mPopExitAnim = r12;
            return this;
        }

        @NonNull
        public Builder setPopUpTo(@IdRes int r12, boolean z10) {
            this.mPopUpTo = r12;
            this.mPopUpToInclusive = z10;
            return this;
        }
    }

    public NavOptions(boolean z10, @IdRes int r22, boolean z11, @AnimRes @AnimatorRes int r42, @AnimRes @AnimatorRes int r52, @AnimRes @AnimatorRes int r6, @AnimRes @AnimatorRes int r72) {
        this.mSingleTop = z10;
        this.mPopUpTo = r22;
        this.mPopUpToInclusive = z11;
        this.mEnterAnim = r42;
        this.mExitAnim = r52;
        this.mPopEnterAnim = r6;
        this.mPopExitAnim = r72;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || NavOptions.class != obj.getClass()) {
            return false;
        }
        NavOptions navOptions = (NavOptions) obj;
        return this.mSingleTop == navOptions.mSingleTop && this.mPopUpTo == navOptions.mPopUpTo && this.mPopUpToInclusive == navOptions.mPopUpToInclusive && this.mEnterAnim == navOptions.mEnterAnim && this.mExitAnim == navOptions.mExitAnim && this.mPopEnterAnim == navOptions.mPopEnterAnim && this.mPopExitAnim == navOptions.mPopExitAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getEnterAnim() {
        return this.mEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getExitAnim() {
        return this.mExitAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getPopEnterAnim() {
        return this.mPopEnterAnim;
    }

    @AnimRes
    @AnimatorRes
    public int getPopExitAnim() {
        return this.mPopExitAnim;
    }

    @IdRes
    public int getPopUpTo() {
        return this.mPopUpTo;
    }

    public int hashCode() {
        return getPopExitAnim() + ((getPopEnterAnim() + ((getExitAnim() + ((getEnterAnim() + (((isPopUpToInclusive() ? 1 : 0) + ((getPopUpTo() + ((shouldLaunchSingleTop() ? 1 : 0) * 31)) * 31)) * 31)) * 31)) * 31)) * 31);
    }

    public boolean isPopUpToInclusive() {
        return this.mPopUpToInclusive;
    }

    public boolean shouldLaunchSingleTop() {
        return this.mSingleTop;
    }
}
