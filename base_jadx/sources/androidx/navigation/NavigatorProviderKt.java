package androidx.navigation;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.internal.clearcut.d0;
import da.d;
import kotlin.Metadata;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a.\u0010\u0006\u001a\u00028\u0000\"\u0010\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0000*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0004H\u0086\n¢\u0006\u0004\b\u0006\u0010\u0007\u001a4\u0010\u0006\u001a\u00028\u0000\"\u0010\b\u0000\u0010\u0002*\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0000*\u00020\u00032\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\bH\u0086\n¢\u0006\u0004\b\u0006\u0010\n\u001a7\u0010\r\u001a\u0014\u0012\u000e\b\u0001\u0012\n \f*\u0004\u0018\u00010\u00010\u0001\u0018\u00010\u0000*\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u00042\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0000H\u0086\n\u001a\u001d\u0010\u000f\u001a\u00020\u000e*\u00020\u00032\u000e\u0010\u000b\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0000H\u0086\n¨\u0006\u0010"}, d2 = {"Landroidx/navigation/Navigator;", "Landroidx/navigation/NavDestination;", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/navigation/NavigatorProvider;", "", "name", "get", "(Landroidx/navigation/NavigatorProvider;Ljava/lang/String;)Landroidx/navigation/Navigator;", "Lda/d;", "clazz", "(Landroidx/navigation/NavigatorProvider;Lda/d;)Landroidx/navigation/Navigator;", "navigator", "kotlin.jvm.PlatformType", "set", "Ll9/m;", "plusAssign", "navigation-common-ktx_release"}, k = 2, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavigatorProviderKt {
    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider get, d<T> clazz) {
        h.g(get, "$this$get");
        h.g(clazz, "clazz");
        T t10 = (T) get.getNavigator(d0.q(clazz));
        h.b(t10, "getNavigator(clazz.java)");
        return t10;
    }

    public static final <T extends Navigator<? extends NavDestination>> T get(NavigatorProvider get, String name) {
        h.g(get, "$this$get");
        h.g(name, "name");
        T t10 = (T) get.getNavigator(name);
        h.b(t10, "getNavigator(name)");
        return t10;
    }

    public static final void plusAssign(NavigatorProvider plusAssign, Navigator<? extends NavDestination> navigator) {
        h.g(plusAssign, "$this$plusAssign");
        h.g(navigator, "navigator");
        plusAssign.addNavigator(navigator);
    }

    public static final Navigator<? extends NavDestination> set(NavigatorProvider set, String name, Navigator<? extends NavDestination> navigator) {
        h.g(set, "$this$set");
        h.g(name, "name");
        h.g(navigator, "navigator");
        return set.addNavigator(name, navigator);
    }
}
