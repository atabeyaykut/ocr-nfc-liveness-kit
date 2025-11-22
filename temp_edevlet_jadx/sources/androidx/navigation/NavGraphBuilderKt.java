package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a5\u0010\t\u001a\u00020\b*\u00020\u00002\b\b\u0003\u0010\u0002\u001a\u00020\u00012\b\b\u0001\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0086\b\u001a5\u0010\t\u001a\u00020\u0006*\u00020\u00052\b\b\u0001\u0010\u0002\u001a\u00020\u00012\b\b\u0001\u0010\u0003\u001a\u00020\u00012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0086\b¨\u0006\n"}, d2 = {"Landroidx/navigation/NavigatorProvider;", "", "id", "startDestination", "Lkotlin/Function1;", "Landroidx/navigation/NavGraphBuilder;", "Ll9/m;", "builder", "Landroidx/navigation/NavGraph;", NotificationCompat.CATEGORY_NAVIGATION, "navigation-common-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavGraphBuilderKt {
    public static final NavGraph navigation(NavigatorProvider navigation, @IdRes int r22, @IdRes int r32, l<? super NavGraphBuilder, m> builder) {
        h.g(navigation, "$this$navigation");
        h.g(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation, r22, r32);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }

    public static final void navigation(NavGraphBuilder navigation, @IdRes int r32, @IdRes int r42, l<? super NavGraphBuilder, m> builder) {
        h.g(navigation, "$this$navigation");
        h.g(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation.getProvider(), r32, r42);
        builder.invoke(navGraphBuilder);
        navigation.destination(navGraphBuilder);
    }

    public static /* synthetic */ NavGraph navigation$default(NavigatorProvider navigation, int r12, int r22, l builder, int r42, Object obj) {
        if ((r42 & 1) != 0) {
            r12 = 0;
        }
        h.g(navigation, "$this$navigation");
        h.g(builder, "builder");
        NavGraphBuilder navGraphBuilder = new NavGraphBuilder(navigation, r12, r22);
        builder.invoke(navGraphBuilder);
        return navGraphBuilder.build();
    }
}
