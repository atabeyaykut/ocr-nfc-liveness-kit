package androidx.navigation;

import androidx.annotation.IdRes;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a+\u0010\u0007\u001a\u00020\u0005*\u00020\u00002\b\b\u0001\u0010\u0002\u001a\u00020\u00012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003H\u0086\b¨\u0006\b"}, d2 = {"Landroidx/navigation/NavGraphBuilder;", "", "id", "Lkotlin/Function1;", "Landroidx/navigation/ActivityNavigatorDestinationBuilder;", "Ll9/m;", "builder", "activity", "navigation-runtime-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class ActivityNavigatorDestinationBuilderKt {
    public static final void activity(NavGraphBuilder activity, @IdRes int r32, l<? super ActivityNavigatorDestinationBuilder, m> builder) {
        h.g(activity, "$this$activity");
        h.g(builder, "builder");
        Navigator navigator = activity.getProvider().getNavigator((Class<Navigator>) ActivityNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        ActivityNavigatorDestinationBuilder activityNavigatorDestinationBuilder = new ActivityNavigatorDestinationBuilder((ActivityNavigator) navigator, r32);
        builder.invoke(activityNavigatorDestinationBuilder);
        activity.destination(activityNavigatorDestinationBuilder);
    }
}
