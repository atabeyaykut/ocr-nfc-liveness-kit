package androidx.navigation;

import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import x9.l;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001a\u0010\u0005\u001a\u00020\u00042\u0012\u0010\u0003\u001a\u000e\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u00020\u0000¨\u0006\u0006"}, d2 = {"Lkotlin/Function1;", "Landroidx/navigation/NavOptionsBuilder;", "Ll9/m;", "optionsBuilder", "Landroidx/navigation/NavOptions;", "navOptions", "navigation-common-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavOptionsBuilderKt {
    public static final NavOptions navOptions(l<? super NavOptionsBuilder, m> optionsBuilder) {
        h.g(optionsBuilder, "optionsBuilder");
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        optionsBuilder.invoke(navOptionsBuilder);
        return navOptionsBuilder.build$navigation_common_ktx_release();
    }
}
