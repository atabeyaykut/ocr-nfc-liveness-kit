package androidx.navigation;

import android.os.Bundle;
import androidx.core.os.BundleKt;
import b8.f;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.g;
import l9.l;
import l9.m;
import m9.v;

@NavDestinationDsl
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u001a\u0010\u0006\u001a\u00020\u00042\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002J\u000f\u0010\n\u001a\u00020\u0007H\u0000¢\u0006\u0004\b\b\u0010\tR\"\u0010\f\u001a\u00020\u000b8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R%\u0010\u0014\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u00128\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0019¨\u0006\u001c"}, d2 = {"Landroidx/navigation/NavActionBuilder;", "", "Lkotlin/Function1;", "Landroidx/navigation/NavOptionsBuilder;", "Ll9/m;", "optionsBuilder", "navOptions", "Landroidx/navigation/NavAction;", "build$navigation_common_ktx_release", "()Landroidx/navigation/NavAction;", "build", "", "destinationId", "I", "getDestinationId", "()I", "setDestinationId", "(I)V", "", "", "defaultArguments", "Ljava/util/Map;", "getDefaultArguments", "()Ljava/util/Map;", "Landroidx/navigation/NavOptions;", "Landroidx/navigation/NavOptions;", "<init>", "()V", "navigation-common-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavActionBuilder {
    private final Map<String, Object> defaultArguments = new LinkedHashMap();
    private int destinationId;
    private NavOptions navOptions;

    public final NavAction build$navigation_common_ktx_release() {
        Bundle bundleBundleOf;
        int r02 = this.destinationId;
        NavOptions navOptions = this.navOptions;
        if (this.defaultArguments.isEmpty()) {
            bundleBundleOf = null;
        } else {
            Map<String, Object> map = this.defaultArguments;
            h.f(map, "<this>");
            int size = map.size();
            Collection collectionS = v.f10173a;
            if (size != 0) {
                Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
                if (it.hasNext()) {
                    Map.Entry<String, Object> next = it.next();
                    if (it.hasNext()) {
                        ArrayList arrayList = new ArrayList(map.size());
                        arrayList.add(new g(next.getKey(), next.getValue()));
                        do {
                            Map.Entry<String, Object> next2 = it.next();
                            arrayList.add(new g(next2.getKey(), next2.getValue()));
                        } while (it.hasNext());
                        collectionS = arrayList;
                    } else {
                        collectionS = f.S(new g(next.getKey(), next.getValue()));
                    }
                }
            }
            Object[] array = collectionS.toArray(new g[0]);
            if (array == null) {
                throw new l("null cannot be cast to non-null type kotlin.Array<T>");
            }
            g[] gVarArr = (g[]) array;
            bundleBundleOf = BundleKt.bundleOf((g[]) Arrays.copyOf(gVarArr, gVarArr.length));
        }
        return new NavAction(r02, navOptions, bundleBundleOf);
    }

    public final Map<String, Object> getDefaultArguments() {
        return this.defaultArguments;
    }

    public final int getDestinationId() {
        return this.destinationId;
    }

    public final void navOptions(x9.l<? super NavOptionsBuilder, m> optionsBuilder) {
        h.g(optionsBuilder, "optionsBuilder");
        NavOptionsBuilder navOptionsBuilder = new NavOptionsBuilder();
        optionsBuilder.invoke(navOptionsBuilder);
        this.navOptions = navOptionsBuilder.build$navigation_common_ktx_release();
    }

    public final void setDestinationId(int r12) {
        this.destinationId = r12;
    }
}
