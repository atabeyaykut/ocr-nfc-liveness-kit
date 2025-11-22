package androidx.navigation.ui;

import android.view.Menu;
import androidx.customview.widget.Openable;
import androidx.navigation.NavGraph;
import androidx.navigation.ui.AppBarConfiguration;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import x9.a;

@Metadata(bv = {1, 0, 3}, d1 = {"\u0000.\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0010\b\n\u0000\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\b\u001a-\u0010\u0000\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\b\u001a3\u0010\u0000\u001a\u00020\u00012\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\f2\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u000e\b\n\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0086\b¨\u0006\u000e"}, d2 = {"AppBarConfiguration", "Landroidx/navigation/ui/AppBarConfiguration;", "topLevelMenu", "Landroid/view/Menu;", "drawerLayout", "Landroidx/customview/widget/Openable;", "fallbackOnNavigateUpListener", "Lkotlin/Function0;", "", "navGraph", "Landroidx/navigation/NavGraph;", "topLevelDestinationIds", "", "", "navigation-ui-ktx_release"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes.dex */
public final class AppBarConfigurationKt {

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$1, reason: invalid class name */
    public static final class AnonymousClass1 extends j implements a<Boolean> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(0);
        }

        @Override // x9.a
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(invoke2());
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2() {
            return false;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$2, reason: invalid class name */
    public static final class AnonymousClass2 extends j implements a<Boolean> {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(0);
        }

        @Override // x9.a
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(invoke2());
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2() {
            return false;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u000b\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 1, 16})
    /* renamed from: androidx.navigation.ui.AppBarConfigurationKt$AppBarConfiguration$3, reason: invalid class name */
    public static final class AnonymousClass3 extends j implements a<Boolean> {
        public static final AnonymousClass3 INSTANCE = new AnonymousClass3();

        public AnonymousClass3() {
            super(0);
        }

        @Override // x9.a
        public /* bridge */ /* synthetic */ Boolean invoke() {
            return Boolean.valueOf(invoke2());
        }

        /* renamed from: invoke, reason: avoid collision after fix types in other method */
        public final boolean invoke2() {
            return false;
        }
    }

    public static final AppBarConfiguration AppBarConfiguration(Menu topLevelMenu, Openable openable, a<Boolean> fallbackOnNavigateUpListener) {
        h.g(topLevelMenu, "topLevelMenu");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(topLevelMenu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }

    public static final AppBarConfiguration AppBarConfiguration(NavGraph navGraph, Openable openable, a<Boolean> fallbackOnNavigateUpListener) {
        h.g(navGraph, "navGraph");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }

    public static final AppBarConfiguration AppBarConfiguration(Set<Integer> topLevelDestinationIds, Openable openable, a<Boolean> fallbackOnNavigateUpListener) {
        h.g(topLevelDestinationIds, "topLevelDestinationIds");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(topLevelDestinationIds).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Menu topLevelMenu, Openable openable, a fallbackOnNavigateUpListener, int r32, Object obj) {
        if ((r32 & 2) != 0) {
            openable = null;
        }
        if ((r32 & 4) != 0) {
            fallbackOnNavigateUpListener = AnonymousClass2.INSTANCE;
        }
        h.g(topLevelMenu, "topLevelMenu");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(topLevelMenu).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(NavGraph navGraph, Openable openable, a fallbackOnNavigateUpListener, int r32, Object obj) {
        if ((r32 & 2) != 0) {
            openable = null;
        }
        if ((r32 & 4) != 0) {
            fallbackOnNavigateUpListener = AnonymousClass1.INSTANCE;
        }
        h.g(navGraph, "navGraph");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder(navGraph).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }

    public static /* synthetic */ AppBarConfiguration AppBarConfiguration$default(Set topLevelDestinationIds, Openable openable, a fallbackOnNavigateUpListener, int r32, Object obj) {
        if ((r32 & 2) != 0) {
            openable = null;
        }
        if ((r32 & 4) != 0) {
            fallbackOnNavigateUpListener = AnonymousClass3.INSTANCE;
        }
        h.g(topLevelDestinationIds, "topLevelDestinationIds");
        h.g(fallbackOnNavigateUpListener, "fallbackOnNavigateUpListener");
        AppBarConfiguration appBarConfigurationBuild = new AppBarConfiguration.Builder((Set<Integer>) topLevelDestinationIds).setOpenableLayout(openable).setFallbackOnNavigateUpListener(new AppBarConfigurationKt$sam$i$androidx_navigation_ui_AppBarConfiguration_OnNavigateUpListener$0(fallbackOnNavigateUpListener)).build();
        h.b(appBarConfigurationBuild, "AppBarConfiguration.Buil…eUpListener)\n    .build()");
        return appBarConfigurationBuild;
    }
}
