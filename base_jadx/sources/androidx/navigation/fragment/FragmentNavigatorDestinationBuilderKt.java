package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.Fragment;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\u00020\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0003H\u0086\b\u001a7\u0010\u0006\u001a\u00020\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0086\b¨\u0006\n"}, d2 = {"Landroidx/fragment/app/Fragment;", "F", "Landroidx/navigation/NavGraphBuilder;", "", "id", "Ll9/m;", "fragment", "Lkotlin/Function1;", "Landroidx/navigation/fragment/FragmentNavigatorDestinationBuilder;", "builder", "navigation-fragment-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class FragmentNavigatorDestinationBuilderKt {
    public static final <F extends Fragment> void fragment(NavGraphBuilder fragment, @IdRes int r12) {
        h.g(fragment, "$this$fragment");
        Navigator navigator = fragment.getProvider().getNavigator((Class<Navigator>) FragmentNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        h.m();
        throw null;
    }

    public static final <F extends Fragment> void fragment(NavGraphBuilder fragment, @IdRes int r12, l<? super FragmentNavigatorDestinationBuilder, m> builder) {
        h.g(fragment, "$this$fragment");
        h.g(builder, "builder");
        Navigator navigator = fragment.getProvider().getNavigator((Class<Navigator>) FragmentNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        h.m();
        throw null;
    }
}
