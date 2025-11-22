package ud;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public class z {

    /* renamed from: c, reason: collision with root package name */
    public static final z f18112c;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f18113a;

    /* renamed from: b, reason: collision with root package name */
    public final Constructor<MethodHandles.Lookup> f18114b;

    public static final class a extends z {

        /* renamed from: ud.z$a$a, reason: collision with other inner class name */
        public static final class ExecutorC0280a implements Executor {

            /* renamed from: a, reason: collision with root package name */
            public final Handler f18115a = new Handler(Looper.getMainLooper());

            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                this.f18115a.post(runnable);
            }
        }

        public a() {
            super(Build.VERSION.SDK_INT >= 24);
        }

        @Override // ud.z
        public final Executor a() {
            return new ExecutorC0280a();
        }

        @Override // ud.z
        public final Object b(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
            if (Build.VERSION.SDK_INT >= 26) {
                return super.b(method, cls, obj, objArr);
            }
            throw new UnsupportedOperationException("Calling default methods on API 24 and 25 is not supported");
        }
    }

    static {
        f18112c = "Dalvik".equals(System.getProperty("java.vm.name")) ? new a() : new z(true);
    }

    public z(boolean z10) throws NoSuchMethodException, SecurityException {
        this.f18113a = z10;
        Constructor<MethodHandles.Lookup> declaredConstructor = null;
        if (z10) {
            try {
                declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
                declaredConstructor.setAccessible(true);
            } catch (NoClassDefFoundError | NoSuchMethodException unused) {
            }
        }
        this.f18114b = declaredConstructor;
    }

    public Executor a() {
        return null;
    }

    @IgnoreJRERequirement
    public Object b(Method method, Class<?> cls, Object obj, Object... objArr) throws Throwable {
        Constructor<MethodHandles.Lookup> constructor = this.f18114b;
        return (constructor != null ? constructor.newInstance(cls, -1) : MethodHandles.lookup()).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
    }
}
