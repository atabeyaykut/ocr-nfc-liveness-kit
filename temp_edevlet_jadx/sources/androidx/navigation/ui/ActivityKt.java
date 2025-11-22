package androidx.navigation.ui;

import androidx.appcompat.app.AppCompatActivity;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.navigation.NavController;
import androidx.navigation.NavGraph;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.AppBarConfigurationKt;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001c\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u001a\u001c\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\b\b\u0002\u0010\b\u001a\u00020\u0007¨\u0006\t"}, d2 = {"Landroidx/appcompat/app/AppCompatActivity;", "Landroidx/navigation/NavController;", "navController", "Landroidx/drawerlayout/widget/DrawerLayout;", "drawerLayout", "Ll9/m;", "setupActionBarWithNavController", "Landroidx/navigation/ui/AppBarConfiguration;", "configuration", "navigation-ui-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ActivityKt {
    public static final void setupActionBarWithNavController(AppCompatActivity setupActionBarWithNavController, NavController navController, DrawerLayout drawerLayout) {
        h.g(setupActionBarWithNavController, "$this$setupActionBarWithNavController");
        h.g(navController, "navController");
        NavGraph graph = navController.getGraph();
        h.b(graph, "navController.graph");
        AppBarConfigurationKt.AnonymousClass1 anonymousClass1 = AppBarConfigurationKt.AnonymousClass1.INSTANCE;
        AppBarConfiguration.Builder openableLayout = new AppBarConfiguration.Builder(graph).setOpenableLayout(drawerLayout);
        Object appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 = anonymousClass1;
        if (anonymousClass1 != null) {
            appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 = new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(anonymousClass1);
        }
        AppBarConfiguration appBarConfigurationBuild = openableLayout.setFallbackOnNavigateUpListener((AppBarConfiguration.OnNavigateUpListener) appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        NavigationUI.setupActionBarWithNavController(setupActionBarWithNavController, navController, appBarConfigurationBuild);
    }

    public static final void setupActionBarWithNavController(AppCompatActivity setupActionBarWithNavController, NavController navController, AppBarConfiguration configuration) {
        h.g(setupActionBarWithNavController, "$this$setupActionBarWithNavController");
        h.g(navController, "navController");
        h.g(configuration, "configuration");
        NavigationUI.setupActionBarWithNavController(setupActionBarWithNavController, navController, configuration);
    }

    public static /* synthetic */ void setupActionBarWithNavController$default(AppCompatActivity appCompatActivity, NavController navController, AppBarConfiguration appBarConfiguration, int r32, Object obj) {
        if ((r32 & 2) != 0) {
            NavGraph graph = navController.getGraph();
            h.b(graph, "navController.graph");
            AppBarConfigurationKt.AnonymousClass1 anonymousClass1 = AppBarConfigurationKt.AnonymousClass1.INSTANCE;
            AppBarConfiguration.Builder openableLayout = new AppBarConfiguration.Builder(graph).setOpenableLayout(null);
            Object appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 = anonymousClass1;
            if (anonymousClass1 != null) {
                appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0 = new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(anonymousClass1);
            }
            appBarConfiguration = openableLayout.setFallbackOnNavigateUpListener((AppBarConfiguration.OnNavigateUpListener) appBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0).build();
            h.b(appBarConfiguration, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        }
        setupActionBarWithNavController(appCompatActivity, navController, appBarConfiguration);
    }
}
