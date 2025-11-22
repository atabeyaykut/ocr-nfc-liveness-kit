package gd;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import c5.y;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class m extends ViewModel {

    /* renamed from: a, reason: collision with root package name */
    public final l9.j f6697a = y.w(b.f6700a);

    /* renamed from: b, reason: collision with root package name */
    public final l9.j f6698b = y.w(a.f6699a);

    public static final class a extends kotlin.jvm.internal.j implements x9.a<MutableLiveData<Collection<? extends c>>> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f6699a = new a();

        public a() {
            super(0);
        }

        @Override // x9.a
        public final MutableLiveData<Collection<? extends c>> invoke() {
            return new MutableLiveData<>();
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<MutableLiveData<Integer>> {

        /* renamed from: a, reason: collision with root package name */
        public static final b f6700a = new b();

        public b() {
            super(0);
        }

        @Override // x9.a
        public final MutableLiveData<Integer> invoke() {
            return new MutableLiveData<>();
        }
    }
}
