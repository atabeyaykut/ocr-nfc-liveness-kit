package androidx.navigation.fragment;

import androidx.annotation.IdRes;
import androidx.fragment.app.DialogFragment;
import androidx.navigation.NavGraphBuilder;
import androidx.navigation.Navigator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a#\u0010\u0006\u001a\u00020\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u0003H\u0086\b\u001a7\u0010\u0006\u001a\u00020\u0005\"\n\b\u0000\u0010\u0001\u0018\u0001*\u00020\u0000*\u00020\u00022\b\b\u0001\u0010\u0004\u001a\u00020\u00032\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0086\b¨\u0006\n"}, d2 = {"Landroidx/fragment/app/DialogFragment;", "F", "Landroidx/navigation/NavGraphBuilder;", "", "id", "Ll9/m;", "dialog", "Lkotlin/Function1;", "Landroidx/navigation/fragment/DialogFragmentNavigatorDestinationBuilder;", "builder", "navigation-fragment-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class DialogFragmentNavigatorDestinationBuilderKt {
    public static final <F extends DialogFragment> void dialog(NavGraphBuilder dialog, @IdRes int r12) {
        h.g(dialog, "$this$dialog");
        Navigator navigator = dialog.getProvider().getNavigator((Class<Navigator>) DialogFragmentNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        h.m();
        throw null;
    }

    public static final <F extends DialogFragment> void dialog(NavGraphBuilder dialog, @IdRes int r12, l<? super DialogFragmentNavigatorDestinationBuilder, m> builder) {
        h.g(dialog, "$this$dialog");
        h.g(builder, "builder");
        Navigator navigator = dialog.getProvider().getNavigator((Class<Navigator>) DialogFragmentNavigator.class);
        h.b(navigator, "getNavigator(clazz.java)");
        h.m();
        throw null;
    }
}
