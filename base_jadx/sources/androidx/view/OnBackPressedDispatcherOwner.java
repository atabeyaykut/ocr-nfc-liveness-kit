package androidx.view;

import androidx.annotation.NonNull;
import androidx.lifecycle.LifecycleOwner;

/* loaded from: classes.dex */
public interface OnBackPressedDispatcherOwner extends LifecycleOwner {
    @NonNull
    OnBackPressedDispatcher getOnBackPressedDispatcher();
}
