package androidx.navigation;

import androidx.annotation.IdRes;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@NavDestinationDsl
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0006\b\u0017\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B#\u0012\u0006\u0010\u000f\u001a\u00020\u000e\u0012\b\b\u0001\u0010\u0016\u001a\u00020\u0013\u0012\b\b\u0001\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0017\u0010\u0018J\u001e\u0010\u0007\u001a\u00020\u0006\"\b\b\u0000\u0010\u0004*\u00020\u00032\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0001J\r\u0010\b\u001a\u00020\u0006*\u00020\u0003H\u0086\u0002J\u000e\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0003J\b\u0010\n\u001a\u00020\u0002H\u0016R\u001a\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00030\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0017\u0010\u000f\u001a\u00020\u000e8\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Landroidx/navigation/NavGraphBuilder;", "Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/NavGraph;", "Landroidx/navigation/NavDestination;", "D", "navDestination", "Ll9/m;", "destination", "unaryPlus", "addDestination", "build", "", "destinations", "Ljava/util/List;", "Landroidx/navigation/NavigatorProvider;", "provider", "Landroidx/navigation/NavigatorProvider;", "getProvider", "()Landroidx/navigation/NavigatorProvider;", "", "startDestination", "I", "id", "<init>", "(Landroidx/navigation/NavigatorProvider;II)V", "navigation-common-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public class NavGraphBuilder extends NavDestinationBuilder<NavGraph> {
    private final List<NavDestination> destinations;
    private final NavigatorProvider provider;
    private int startDestination;

    /* JADX WARN: Illegal instructions before constructor call */
    public NavGraphBuilder(NavigatorProvider provider, @IdRes int r42, @IdRes int r52) {
        h.g(provider, "provider");
        Navigator navigator = provider.getNavigator((Class<Navigator>) NavGraphNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        super(navigator, r42);
        this.provider = provider;
        this.startDestination = r52;
        this.destinations = new ArrayList();
    }

    public final void addDestination(NavDestination destination) {
        h.g(destination, "destination");
        this.destinations.add(destination);
    }

    @Override // androidx.navigation.NavDestinationBuilder
    public NavGraph build() {
        NavGraph navGraph = (NavGraph) super.build();
        navGraph.addDestinations(this.destinations);
        int r12 = this.startDestination;
        if (r12 == 0) {
            throw new IllegalStateException("You must set a startDestination");
        }
        navGraph.setStartDestination(r12);
        return navGraph;
    }

    public final <D extends NavDestination> void destination(NavDestinationBuilder<? extends D> navDestination) {
        h.g(navDestination, "navDestination");
        this.destinations.add(navDestination.build());
    }

    public final NavigatorProvider getProvider() {
        return this.provider;
    }

    public final void unaryPlus(NavDestination unaryPlus) {
        h.g(unaryPlus, "$this$unaryPlus");
        addDestination(unaryPlus);
    }
}
