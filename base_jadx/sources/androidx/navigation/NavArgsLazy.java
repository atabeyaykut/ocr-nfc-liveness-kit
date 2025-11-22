package androidx.navigation;

import android.os.Bundle;
import androidx.navigation.NavArgs;
import com.google.android.gms.internal.clearcut.d0;
import da.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.e;
import l9.l;
import x9.a;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028\u00000\u0003B#\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b\u0012\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b¢\u0006\u0004\b\u0012\u0010\u0013J\b\u0010\u0005\u001a\u00020\u0004H\u0016R\u0018\u0010\u0006\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0006\u0010\u0007R\u001a\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\t\u0010\nR\u001a\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00028\u00008VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Landroidx/navigation/NavArgsLazy;", "Landroidx/navigation/NavArgs;", "Args", "Ll9/e;", "", "isInitialized", "cached", "Landroidx/navigation/NavArgs;", "Lda/d;", "navArgsClass", "Lda/d;", "Lkotlin/Function0;", "Landroid/os/Bundle;", "argumentProducer", "Lx9/a;", "getValue", "()Landroidx/navigation/NavArgs;", "value", "<init>", "(Lda/d;Lx9/a;)V", "navigation-common-ktx_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes.dex */
public final class NavArgsLazy<Args extends NavArgs> implements e<Args> {
    private final a<Bundle> argumentProducer;
    private Args cached;
    private final d<Args> navArgsClass;

    public NavArgsLazy(d<Args> navArgsClass, a<Bundle> argumentProducer) {
        h.g(navArgsClass, "navArgsClass");
        h.g(argumentProducer, "argumentProducer");
        this.navArgsClass = navArgsClass;
        this.argumentProducer = argumentProducer;
    }

    @Override // l9.e
    public Args getValue() throws IllegalAccessException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
        Args args = this.cached;
        if (args != null) {
            return args;
        }
        Bundle bundleInvoke = this.argumentProducer.invoke();
        Method method = NavArgsLazyKt.getMethodMap().get(this.navArgsClass);
        if (method == null) {
            Class clsQ = d0.q(this.navArgsClass);
            Class<Bundle>[] methodSignature = NavArgsLazyKt.getMethodSignature();
            method = clsQ.getMethod("fromBundle", (Class[]) Arrays.copyOf(methodSignature, methodSignature.length));
            NavArgsLazyKt.getMethodMap().put(this.navArgsClass, method);
            h.b(method, "navArgsClass.java.getMet…hod\n                    }");
        }
        Object objInvoke = method.invoke(null, bundleInvoke);
        if (objInvoke == null) {
            throw new l("null cannot be cast to non-null type Args");
        }
        Args args2 = (Args) objInvoke;
        this.cached = args2;
        return args2;
    }

    public boolean isInitialized() {
        return this.cached != null;
    }
}
