package androidx.navigation;

import android.os.Bundle;
import androidx.annotation.IdRes;
import androidx.annotation.Nullable;

/* loaded from: classes.dex */
public final class NavAction {
    private Bundle mDefaultArguments;

    @IdRes
    private final int mDestinationId;
    private NavOptions mNavOptions;

    public NavAction(@IdRes int r22) {
        this(r22, null);
    }

    public NavAction(@IdRes int r22, @Nullable NavOptions navOptions) {
        this(r22, navOptions, null);
    }

    public NavAction(@IdRes int r12, @Nullable NavOptions navOptions, @Nullable Bundle bundle) {
        this.mDestinationId = r12;
        this.mNavOptions = navOptions;
        this.mDefaultArguments = bundle;
    }

    @Nullable
    public Bundle getDefaultArguments() {
        return this.mDefaultArguments;
    }

    public int getDestinationId() {
        return this.mDestinationId;
    }

    @Nullable
    public NavOptions getNavOptions() {
        return this.mNavOptions;
    }

    public void setDefaultArguments(@Nullable Bundle bundle) {
        this.mDefaultArguments = bundle;
    }

    public void setNavOptions(@Nullable NavOptions navOptions) {
        this.mNavOptions = navOptions;
    }
}
