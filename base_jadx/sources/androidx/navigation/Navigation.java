package androidx.navigation;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.app.ActivityCompat;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class Navigation {
    private Navigation() {
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@IdRes int r12) {
        return createNavigateOnClickListener(r12, null);
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@IdRes final int r12, @Nullable final Bundle bundle) {
        return new View.OnClickListener() { // from class: androidx.navigation.Navigation.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Navigation.findNavController(view).navigate(r12, bundle);
            }
        };
    }

    @NonNull
    public static View.OnClickListener createNavigateOnClickListener(@NonNull final NavDirections navDirections) {
        return new View.OnClickListener() { // from class: androidx.navigation.Navigation.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Navigation.findNavController(view).navigate(navDirections);
            }
        };
    }

    @NonNull
    public static NavController findNavController(@NonNull Activity activity, @IdRes int r42) {
        NavController navControllerFindViewNavController = findViewNavController(ActivityCompat.requireViewById(activity, r42));
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        throw new IllegalStateException("Activity " + activity + " does not have a NavController set on " + r42);
    }

    @NonNull
    public static NavController findNavController(@NonNull View view) {
        NavController navControllerFindViewNavController = findViewNavController(view);
        if (navControllerFindViewNavController != null) {
            return navControllerFindViewNavController;
        }
        throw new IllegalStateException("View " + view + " does not have a NavController set");
    }

    @Nullable
    private static NavController findViewNavController(@NonNull View view) {
        while (view != null) {
            NavController viewNavController = getViewNavController(view);
            if (viewNavController != null) {
                return viewNavController;
            }
            Object parent = view.getParent();
            view = parent instanceof View ? (View) parent : null;
        }
        return null;
    }

    @Nullable
    private static NavController getViewNavController(@NonNull View view) {
        Object tag = view.getTag(R.id.nav_controller_view_tag);
        if (tag instanceof WeakReference) {
            tag = ((WeakReference) tag).get();
        } else if (!(tag instanceof NavController)) {
            return null;
        }
        return (NavController) tag;
    }

    public static void setViewNavController(@NonNull View view, @Nullable NavController navController) {
        view.setTag(R.id.nav_controller_view_tag, navController);
    }
}
