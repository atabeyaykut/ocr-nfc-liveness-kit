package tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel;

import af.c;
import androidx.exifinterface.media.ExifInterface;
import cf.b;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import r0.f1;
import r0.p;
import r0.r0;
import r0.z;
import tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.a;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\b&\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00010\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0005B\u001d\u0012\u0014\u0010\f\u001a\u0010\u0012\f\b\u0001\u0012\b\u0012\u0004\u0012\u00028\u00010\u00010\u000b¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\t\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0001H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/core/di/viewmodel/DaggerMvRxViewModelFactory;", "Laf/c;", "VM", "Lr0/p;", ExifInterface.LATITUDE_SOUTH, "Lr0/r0;", "Lr0/f1;", "viewModelContext", "state", "create", "(Lr0/f1;Lr0/p;)Laf/c;", "Ljava/lang/Class;", "viewModelClass", "<init>", "(Ljava/lang/Class;)V", "core_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class DaggerMvRxViewModelFactory<VM extends c<S>, S extends p> implements r0<VM, S> {

    /* renamed from: a, reason: collision with root package name */
    public final Class<? extends c<S>> f16153a;

    public DaggerMvRxViewModelFactory(Class<? extends c<S>> viewModelClass) {
        h.f(viewModelClass, "viewModelClass");
        this.f16153a = viewModelClass;
    }

    public VM create(f1 viewModelContext, S state) {
        h.f(viewModelContext, "viewModelContext");
        h.f(state, "state");
        int r22 = a.f16154a;
        a aVar = a.C0269a.f16155a;
        if (!(aVar != null)) {
            throw new IllegalArgumentException("AppComponent requested without being initialized first. Call initAppComponent() beforerequesting an instance.".toString());
        }
        h.c(aVar);
        b bVar = (b) aVar;
        bVar.f2394b.getClass();
        Map<Class<? extends c<?>>, ? extends cf.a<?, ?>> viewModelFactoryMap = bVar.f2395c;
        h.f(viewModelFactoryMap, "viewModelFactoryMap");
        cf.a<?, ?> aVar2 = viewModelFactoryMap.get(this.f16153a);
        VM vm = null;
        if (aVar2 == null) {
            aVar2 = null;
        }
        if (aVar2 != null) {
            vm = (VM) aVar2.a(state);
        }
        h.d(vm, "null cannot be cast to non-null type VM of tr.gov.turkiye.edevlet.kapisi.core.di.viewmodel.DaggerMvRxViewModelFactory.createViewModel");
        return vm;
    }

    /* renamed from: create, reason: collision with other method in class */
    public /* bridge */ /* synthetic */ z m37create(f1 f1Var, p pVar) {
        return create(f1Var, (f1) pVar);
    }

    public S initialState(f1 viewModelContext) {
        h.f(viewModelContext, "viewModelContext");
        return null;
    }
}
