package androidx.navigation;

import androidx.annotation.IdRes;
import androidx.navigation.NavDestination;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import org.bouncycastle.jcajce.util.AnnotatedPrivateKey;
import x9.l;

@NavDestinationDsl
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\r\n\u0002\b\u0006\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0017\u0018\u0000*\n\b\u0000\u0010\u0002 \u0001*\u00020\u00012\u00020\u0003B!\u0012\u000e\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000'\u0012\b\b\u0001\u0010,\u001a\u00020\u000f¢\u0006\u0004\b0\u00101J\"\u0010\n\u001a\u00020\b2\u0006\u0010\u0005\u001a\u00020\u00042\u0012\u0010\t\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\b0\u0006J\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004J\u001a\u0010\f\u001a\u00020\b2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\b0\u0006J\"\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0012\u0010\u0012\u001a\u000e\u0012\u0004\u0012\u00020\u0011\u0012\u0004\u0012\u00020\b0\u0006J\u000f\u0010\u0014\u001a\u00028\u0000H\u0016¢\u0006\u0004\b\u0014\u0010\u0015R$\u0010\u0017\u001a\u0004\u0018\u00010\u00168\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\"\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u001e0\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010 R\u001c\u0010#\u001a\b\u0012\u0004\u0012\u00020\"0!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\"\u0010&\u001a\u000e\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00020%0\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010 R\"\u0010(\u001a\n\u0012\u0006\b\u0001\u0012\u00028\u00000'8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R\u0017\u0010,\u001a\u00020\u000f8\u0006¢\u0006\f\n\u0004\b,\u0010-\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Landroidx/navigation/NavDestinationBuilder;", "Landroidx/navigation/NavDestination;", "D", "", "", "name", "Lkotlin/Function1;", "Landroidx/navigation/NavArgumentBuilder;", "Ll9/m;", "argumentBuilder", "argument", "uriPattern", "deepLink", "Landroidx/navigation/NavDeepLinkDslBuilder;", "navDeepLink", "", "actionId", "Landroidx/navigation/NavActionBuilder;", "actionBuilder", "action", "build", "()Landroidx/navigation/NavDestination;", "", AnnotatedPrivateKey.LABEL, "Ljava/lang/CharSequence;", "getLabel", "()Ljava/lang/CharSequence;", "setLabel", "(Ljava/lang/CharSequence;)V", "", "Landroidx/navigation/NavArgument;", "arguments", "Ljava/util/Map;", "", "Landroidx/navigation/NavDeepLink;", "deepLinks", "Ljava/util/List;", "Landroidx/navigation/NavAction;", "actions", "Landroidx/navigation/Navigator;", "navigator", "Landroidx/navigation/Navigator;", "getNavigator", "()Landroidx/navigation/Navigator;", "id", "I", "getId", "()I", "<init>", "(Landroidx/navigation/Navigator;I)V", "navigation-common-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public class NavDestinationBuilder<D extends NavDestination> {
    private Map<Integer, NavAction> actions;
    private Map<String, NavArgument> arguments;
    private List<NavDeepLink> deepLinks;
    private final int id;
    private CharSequence label;
    private final Navigator<? extends D> navigator;

    public NavDestinationBuilder(Navigator<? extends D> navigator, @IdRes int r32) {
        h.g(navigator, "navigator");
        this.navigator = navigator;
        this.id = r32;
        this.arguments = new LinkedHashMap();
        this.deepLinks = new ArrayList();
        this.actions = new LinkedHashMap();
    }

    public final void action(int r32, l<? super NavActionBuilder, m> actionBuilder) {
        h.g(actionBuilder, "actionBuilder");
        Map<Integer, NavAction> map = this.actions;
        Integer numValueOf = Integer.valueOf(r32);
        NavActionBuilder navActionBuilder = new NavActionBuilder();
        actionBuilder.invoke(navActionBuilder);
        map.put(numValueOf, navActionBuilder.build$navigation_common_ktx_release());
    }

    public final void argument(String name, l<? super NavArgumentBuilder, m> argumentBuilder) {
        h.g(name, "name");
        h.g(argumentBuilder, "argumentBuilder");
        Map<String, NavArgument> map = this.arguments;
        NavArgumentBuilder navArgumentBuilder = new NavArgumentBuilder();
        argumentBuilder.invoke(navArgumentBuilder);
        map.put(name, navArgumentBuilder.build());
    }

    public D build() {
        D d10 = (D) this.navigator.createDestination();
        d10.setId(this.id);
        d10.setLabel(this.label);
        for (Map.Entry<String, NavArgument> entry : this.arguments.entrySet()) {
            d10.addArgument(entry.getKey(), entry.getValue());
        }
        Iterator<T> it = this.deepLinks.iterator();
        while (it.hasNext()) {
            d10.addDeepLink((NavDeepLink) it.next());
        }
        for (Map.Entry<Integer, NavAction> entry2 : this.actions.entrySet()) {
            d10.putAction(entry2.getKey().intValue(), entry2.getValue());
        }
        return d10;
    }

    public final void deepLink(String uriPattern) {
        h.g(uriPattern, "uriPattern");
        this.deepLinks.add(new NavDeepLink(uriPattern));
    }

    public final void deepLink(l<? super NavDeepLinkDslBuilder, m> navDeepLink) {
        h.g(navDeepLink, "navDeepLink");
        List<NavDeepLink> list = this.deepLinks;
        NavDeepLinkDslBuilder navDeepLinkDslBuilder = new NavDeepLinkDslBuilder();
        navDeepLink.invoke(navDeepLinkDslBuilder);
        list.add(navDeepLinkDslBuilder.build$navigation_common_ktx_release());
    }

    public final int getId() {
        return this.id;
    }

    public final CharSequence getLabel() {
        return this.label;
    }

    public final Navigator<? extends D> getNavigator() {
        return this.navigator;
    }

    public final void setLabel(CharSequence charSequence) {
        this.label = charSequence;
    }
}
