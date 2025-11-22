package androidx.navigation;

import android.annotation.SuppressLint;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.browser.browseractions.a;
import androidx.navigation.Navigator;
import java.util.HashMap;
import java.util.Map;

@SuppressLint({"TypeParameterUnusedInFormals"})
/* loaded from: classes.dex */
public class NavigatorProvider {
    private static final HashMap<Class<?>, String> sAnnotationNames = new HashMap<>();
    private final HashMap<String, Navigator<? extends NavDestination>> mNavigators = new HashMap<>();

    @NonNull
    public static String getNameForNavigator(@NonNull Class<? extends Navigator> cls) {
        HashMap<Class<?>, String> map = sAnnotationNames;
        String strValue = map.get(cls);
        if (strValue == null) {
            Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
            strValue = name != null ? name.value() : null;
            if (!validateName(strValue)) {
                throw new IllegalArgumentException("No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
            }
            map.put(cls, strValue);
        }
        return strValue;
    }

    private static boolean validateName(String str) {
        return (str == null || str.isEmpty()) ? false : true;
    }

    @Nullable
    public final Navigator<? extends NavDestination> addNavigator(@NonNull Navigator<? extends NavDestination> navigator) {
        return addNavigator(getNameForNavigator(navigator.getClass()), navigator);
    }

    @Nullable
    @CallSuper
    public Navigator<? extends NavDestination> addNavigator(@NonNull String str, @NonNull Navigator<? extends NavDestination> navigator) {
        if (validateName(str)) {
            return this.mNavigators.put(str, navigator);
        }
        throw new IllegalArgumentException("navigator name cannot be an empty string");
    }

    @NonNull
    public final <T extends Navigator<?>> T getNavigator(@NonNull Class<T> cls) {
        return (T) getNavigator(getNameForNavigator(cls));
    }

    @NonNull
    @CallSuper
    public <T extends Navigator<?>> T getNavigator(@NonNull String str) {
        if (!validateName(str)) {
            throw new IllegalArgumentException("navigator name cannot be an empty string");
        }
        Navigator<? extends NavDestination> navigator = this.mNavigators.get(str);
        if (navigator != null) {
            return navigator;
        }
        throw new IllegalStateException(a.a("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
    }

    public Map<String, Navigator<? extends NavDestination>> getNavigators() {
        return this.mNavigators;
    }
}
