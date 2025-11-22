package androidx.navigation.ui;

import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.customview.widget.Openable;
import androidx.navigation.ActivityNavigator;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavGraph;
import androidx.navigation.NavOptions;
import androidx.navigation.ui.AppBarConfiguration;
import com.google.android.material.appbar.CollapsingToolbarLayout;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.navigation.NavigationView;
import java.lang.ref.WeakReference;
import java.util.Set;

/* loaded from: classes.dex */
public final class NavigationUI {
    private NavigationUI() {
    }

    public static BottomSheetBehavior findBottomSheetBehavior(@NonNull View view) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof CoordinatorLayout.LayoutParams) {
            CoordinatorLayout.Behavior behavior = ((CoordinatorLayout.LayoutParams) layoutParams).getBehavior();
            if (behavior instanceof BottomSheetBehavior) {
                return (BottomSheetBehavior) behavior;
            }
            return null;
        }
        Object parent = view.getParent();
        if (parent instanceof View) {
            return findBottomSheetBehavior((View) parent);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.navigation.NavDestination] */
    public static NavDestination findStartDestination(@NonNull NavGraph navGraph) {
        NavGraph navGraphFindNode = navGraph;
        while (navGraphFindNode instanceof NavGraph) {
            NavGraph navGraph2 = navGraphFindNode;
            navGraphFindNode = navGraph2.findNode(navGraph2.getStartDestination());
        }
        return navGraphFindNode;
    }

    public static boolean matchDestination(@NonNull NavDestination navDestination, @IdRes int r22) {
        while (navDestination.getId() != r22 && navDestination.getParent() != null) {
            navDestination = navDestination.getParent();
        }
        return navDestination.getId() == r22;
    }

    public static boolean matchDestinations(@NonNull NavDestination navDestination, @NonNull Set<Integer> set) {
        while (!set.contains(Integer.valueOf(navDestination.getId()))) {
            navDestination = navDestination.getParent();
            if (navDestination == null) {
                return false;
            }
        }
        return true;
    }

    public static boolean navigateUp(@NonNull NavController navController, @Nullable Openable openable) {
        return navigateUp(navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static boolean navigateUp(@NonNull NavController navController, @NonNull AppBarConfiguration appBarConfiguration) {
        Openable openableLayout = appBarConfiguration.getOpenableLayout();
        NavDestination currentDestination = navController.getCurrentDestination();
        Set<Integer> topLevelDestinations = appBarConfiguration.getTopLevelDestinations();
        if (openableLayout != null && currentDestination != null && matchDestinations(currentDestination, topLevelDestinations)) {
            openableLayout.open();
            return true;
        }
        if (navController.navigateUp()) {
            return true;
        }
        if (appBarConfiguration.getFallbackOnNavigateUpListener() != null) {
            return appBarConfiguration.getFallbackOnNavigateUpListener().onNavigateUp();
        }
        return false;
    }

    public static boolean onNavDestinationSelected(@NonNull MenuItem menuItem, @NonNull NavController navController) {
        NavOptions.Builder popEnterAnim;
        int r32;
        NavOptions.Builder launchSingleTop = new NavOptions.Builder().setLaunchSingleTop(true);
        if (navController.getCurrentDestination().getParent().findNode(menuItem.getItemId()) instanceof ActivityNavigator.Destination) {
            popEnterAnim = launchSingleTop.setEnterAnim(R.anim.nav_default_enter_anim).setExitAnim(R.anim.nav_default_exit_anim).setPopEnterAnim(R.anim.nav_default_pop_enter_anim);
            r32 = R.anim.nav_default_pop_exit_anim;
        } else {
            popEnterAnim = launchSingleTop.setEnterAnim(R.animator.nav_default_enter_anim).setExitAnim(R.animator.nav_default_exit_anim).setPopEnterAnim(R.animator.nav_default_pop_enter_anim);
            r32 = R.animator.nav_default_pop_exit_anim;
        }
        popEnterAnim.setPopExitAnim(r32);
        if ((menuItem.getOrder() & 196608) == 0) {
            launchSingleTop.setPopUpTo(findStartDestination(navController.getGraph()).getId(), false);
        }
        try {
            navController.navigate(menuItem.getItemId(), (Bundle) null, launchSingleTop.build());
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public static void setupActionBarWithNavController(@NonNull AppCompatActivity appCompatActivity, @NonNull NavController navController) {
        setupActionBarWithNavController(appCompatActivity, navController, new AppBarConfiguration.Builder(navController.getGraph()).build());
    }

    public static void setupActionBarWithNavController(@NonNull AppCompatActivity appCompatActivity, @NonNull NavController navController, @Nullable Openable openable) {
        setupActionBarWithNavController(appCompatActivity, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static void setupActionBarWithNavController(@NonNull AppCompatActivity appCompatActivity, @NonNull NavController navController, @NonNull AppBarConfiguration appBarConfiguration) {
        navController.addOnDestinationChangedListener(new ActionBarOnDestinationChangedListener(appCompatActivity, appBarConfiguration));
    }

    public static void setupWithNavController(@NonNull Toolbar toolbar, @NonNull NavController navController) {
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).build());
    }

    public static void setupWithNavController(@NonNull Toolbar toolbar, @NonNull NavController navController, @Nullable Openable openable) {
        setupWithNavController(toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static void setupWithNavController(@NonNull Toolbar toolbar, @NonNull final NavController navController, @NonNull final AppBarConfiguration appBarConfiguration) {
        navController.addOnDestinationChangedListener(new ToolbarOnDestinationChangedListener(toolbar, appBarConfiguration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.navigation.ui.NavigationUI.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NavigationUI.navigateUp(navController, appBarConfiguration);
            }
        });
    }

    public static void setupWithNavController(@NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull Toolbar toolbar, @NonNull NavController navController) {
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).build());
    }

    public static void setupWithNavController(@NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull Toolbar toolbar, @NonNull NavController navController, @Nullable Openable openable) {
        setupWithNavController(collapsingToolbarLayout, toolbar, navController, new AppBarConfiguration.Builder(navController.getGraph()).setOpenableLayout(openable).build());
    }

    public static void setupWithNavController(@NonNull CollapsingToolbarLayout collapsingToolbarLayout, @NonNull Toolbar toolbar, @NonNull final NavController navController, @NonNull final AppBarConfiguration appBarConfiguration) {
        navController.addOnDestinationChangedListener(new CollapsingToolbarOnDestinationChangedListener(collapsingToolbarLayout, toolbar, appBarConfiguration));
        toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: androidx.navigation.ui.NavigationUI.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                NavigationUI.navigateUp(navController, appBarConfiguration);
            }
        });
    }

    public static void setupWithNavController(@NonNull BottomNavigationView bottomNavigationView, @NonNull final NavController navController) {
        bottomNavigationView.setOnNavigationItemSelectedListener(new BottomNavigationView.OnNavigationItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI.5
            @Override // com.google.android.material.navigation.NavigationBarView.OnItemSelectedListener
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                return NavigationUI.onNavDestinationSelected(menuItem, navController);
            }
        });
        final WeakReference weakReference = new WeakReference(bottomNavigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.6
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(@NonNull NavController navController2, @NonNull NavDestination navDestination, @Nullable Bundle bundle) {
                BottomNavigationView bottomNavigationView2 = (BottomNavigationView) weakReference.get();
                if (bottomNavigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                Menu menu = bottomNavigationView2.getMenu();
                int size = menu.size();
                for (int r02 = 0; r02 < size; r02++) {
                    MenuItem item = menu.getItem(r02);
                    if (NavigationUI.matchDestination(navDestination, item.getItemId())) {
                        item.setChecked(true);
                    }
                }
            }
        });
    }

    public static void setupWithNavController(@NonNull final NavigationView navigationView, @NonNull final NavController navController) {
        navigationView.setNavigationItemSelectedListener(new NavigationView.OnNavigationItemSelectedListener() { // from class: androidx.navigation.ui.NavigationUI.3
            @Override // com.google.android.material.navigation.NavigationView.OnNavigationItemSelectedListener
            public boolean onNavigationItemSelected(@NonNull MenuItem menuItem) {
                boolean zOnNavDestinationSelected = NavigationUI.onNavDestinationSelected(menuItem, navController);
                if (zOnNavDestinationSelected) {
                    ViewParent parent = navigationView.getParent();
                    if (parent instanceof Openable) {
                        ((Openable) parent).close();
                    } else {
                        BottomSheetBehavior bottomSheetBehaviorFindBottomSheetBehavior = NavigationUI.findBottomSheetBehavior(navigationView);
                        if (bottomSheetBehaviorFindBottomSheetBehavior != null) {
                            bottomSheetBehaviorFindBottomSheetBehavior.setState(5);
                        }
                    }
                }
                return zOnNavDestinationSelected;
            }
        });
        final WeakReference weakReference = new WeakReference(navigationView);
        navController.addOnDestinationChangedListener(new NavController.OnDestinationChangedListener() { // from class: androidx.navigation.ui.NavigationUI.4
            @Override // androidx.navigation.NavController.OnDestinationChangedListener
            public void onDestinationChanged(@NonNull NavController navController2, @NonNull NavDestination navDestination, @Nullable Bundle bundle) {
                NavigationView navigationView2 = (NavigationView) weakReference.get();
                if (navigationView2 == null) {
                    navController.removeOnDestinationChangedListener(this);
                    return;
                }
                Menu menu = navigationView2.getMenu();
                int size = menu.size();
                for (int r02 = 0; r02 < size; r02++) {
                    MenuItem item = menu.getItem(r02);
                    item.setChecked(NavigationUI.matchDestination(navDestination, item.getItemId()));
                }
            }
        });
    }
}
