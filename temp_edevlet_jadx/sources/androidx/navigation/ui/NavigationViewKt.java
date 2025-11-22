package androidx.navigation.ui;

import androidx.navigation.NavController;
import com.google.android.material.navigation.NavigationView;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0012\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001¨\u0006\u0005"}, d2 = {"Lcom/google/android/material/navigation/NavigationView;", "Landroidx/navigation/NavController;", "navController", "Ll9/m;", "setupWithNavController", "navigation-ui-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavigationViewKt {
    public static final void setupWithNavController(NavigationView setupWithNavController, NavController navController) {
        h.g(setupWithNavController, "$this$setupWithNavController");
        h.g(navController, "navController");
        NavigationUI.setupWithNavController(setupWithNavController, navController);
    }
}
