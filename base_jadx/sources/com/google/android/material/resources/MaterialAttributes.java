package com.google.android.material.resources;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
import androidx.annotation.AttrRes;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes2.dex */
public class MaterialAttributes {
    @Nullable
    public static TypedValue resolve(@NonNull Context context, @AttrRes int r32) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(r32, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    public static boolean resolveBoolean(@NonNull Context context, @AttrRes int r22, boolean z10) {
        TypedValue typedValueResolve = resolve(context, r22);
        return (typedValueResolve == null || typedValueResolve.type != 18) ? z10 : typedValueResolve.data != 0;
    }

    public static boolean resolveBooleanOrThrow(@NonNull Context context, @AttrRes int r12, @NonNull String str) {
        return resolveOrThrow(context, r12, str) != 0;
    }

    @Px
    public static int resolveDimension(@NonNull Context context, @AttrRes int r32, @DimenRes int r42) {
        TypedValue typedValueResolve = resolve(context, r32);
        return (int) ((typedValueResolve == null || typedValueResolve.type != 5) ? context.getResources().getDimension(r42) : typedValueResolve.getDimension(context.getResources().getDisplayMetrics()));
    }

    public static int resolveInteger(@NonNull Context context, @AttrRes int r22, int r32) {
        TypedValue typedValueResolve = resolve(context, r22);
        return (typedValueResolve == null || typedValueResolve.type != 16) ? r32 : typedValueResolve.data;
    }

    @Px
    public static int resolveMinimumAccessibleTouchTarget(@NonNull Context context) {
        return resolveDimension(context, R.attr.minTouchTargetSize, R.dimen.mtrl_min_touch_target_size);
    }

    public static int resolveOrThrow(@NonNull Context context, @AttrRes int r42, @NonNull String str) {
        TypedValue typedValueResolve = resolve(context, r42);
        if (typedValueResolve != null) {
            return typedValueResolve.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(r42)));
    }

    public static int resolveOrThrow(@NonNull View view, @AttrRes int r22) {
        return resolveOrThrow(view.getContext(), r22, view.getClass().getCanonicalName());
    }
}
