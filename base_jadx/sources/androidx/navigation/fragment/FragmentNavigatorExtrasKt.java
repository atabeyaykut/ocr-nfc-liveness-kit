package androidx.navigation.fragment;

import android.view.View;
import androidx.navigation.fragment.FragmentNavigator;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a9\u0010\u0006\u001a\u00020\u00052*\u0010\u0004\u001a\u0016\u0012\u0012\b\u0001\u0012\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00010\u0000\"\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"", "Ll9/g;", "Landroid/view/View;", "", "sharedElements", "Landroidx/navigation/fragment/FragmentNavigator$Extras;", "FragmentNavigatorExtras", "([Ll9/g;)Landroidx/navigation/fragment/FragmentNavigator$Extras;", "navigation-fragment-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class FragmentNavigatorExtrasKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final FragmentNavigator.Extras FragmentNavigatorExtras(g<? extends View, String>... sharedElements) {
        h.g(sharedElements, "sharedElements");
        FragmentNavigator.Extras.Builder builder = new FragmentNavigator.Extras.Builder();
        for (g<? extends View, String> gVar : sharedElements) {
            builder.addSharedElement((View) gVar.f9582a, gVar.f9583b);
        }
        FragmentNavigator.Extras extrasBuild = builder.build();
        h.b(extrasBuild, "FragmentNavigator.Extras…      }\n        }.build()");
        return extrasBuild;
    }
}
