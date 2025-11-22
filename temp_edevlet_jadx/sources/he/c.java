package he;

import android.view.View;
import androidx.viewbinding.ViewBinding;
import c5.y;
import com.airbnb.epoxy.s;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.concurrent.ConcurrentHashMap;
import kotlin.jvm.internal.h;
import l9.j;

/* loaded from: classes3.dex */
public final class c extends s {

    /* renamed from: a, reason: collision with root package name */
    public final Class<?> f7105a;

    /* renamed from: b, reason: collision with root package name */
    public final j f7106b = y.w(new a());

    /* renamed from: c, reason: collision with root package name */
    public ViewBinding f7107c;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Method> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Method invoke() {
            Method method;
            Class<?> cls = c.this.f7105a;
            ConcurrentHashMap<Class<?>, Method> concurrentHashMap = b.f7104a;
            synchronized (b.class) {
                ConcurrentHashMap<Class<?>, Method> concurrentHashMap2 = b.f7104a;
                Method declaredMethod = concurrentHashMap2.get(cls);
                if (declaredMethod == null) {
                    Type type = b.a(cls).getActualTypeArguments()[0];
                    h.d(type, "null cannot be cast to non-null type java.lang.Class<androidx.viewbinding.ViewBinding>");
                    declaredMethod = ((Class) type).getDeclaredMethod("bind", View.class);
                    if (declaredMethod == null) {
                        throw new IllegalStateException(("The binder class " + cls.getCanonicalName() + " should have a method bind(View)").toString());
                    }
                    Method methodPutIfAbsent = concurrentHashMap2.putIfAbsent(cls, declaredMethod);
                    if (methodPutIfAbsent != null) {
                        declaredMethod = methodPutIfAbsent;
                    }
                }
                method = declaredMethod;
            }
            return method;
        }
    }

    public c(Class<?> cls) {
        this.f7105a = cls;
    }

    @Override // com.airbnb.epoxy.s
    public final void a(View itemView) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        h.f(itemView, "itemView");
        Object objInvoke = ((Method) this.f7106b.getValue()).invoke(null, itemView);
        h.d(objInvoke, "null cannot be cast to non-null type androidx.viewbinding.ViewBinding");
        this.f7107c = (ViewBinding) objInvoke;
    }
}
