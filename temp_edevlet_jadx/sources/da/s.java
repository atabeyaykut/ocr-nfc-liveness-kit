package da;

import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class s implements TypeVariable<GenericDeclaration>, Type {

    /* renamed from: a, reason: collision with root package name */
    public final o f4727a;

    public s(o typeParameter) {
        kotlin.jvm.internal.h.f(typeParameter, "typeParameter");
        this.f4727a = typeParameter;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof TypeVariable) || !kotlin.jvm.internal.h.a(getName(), ((TypeVariable) obj).getName())) {
            return false;
        }
        getGenericDeclaration();
        throw null;
    }

    @Override // java.lang.reflect.TypeVariable
    public final Type[] getBounds() {
        List<n> upperBounds = this.f4727a.getUpperBounds();
        ArrayList arrayList = new ArrayList(m9.n.Q0(upperBounds));
        Iterator<T> it = upperBounds.iterator();
        while (it.hasNext()) {
            arrayList.add(t.b((n) it.next(), true));
        }
        return (Type[]) arrayList.toArray(new Type[0]);
    }

    @Override // java.lang.reflect.TypeVariable
    public final GenericDeclaration getGenericDeclaration() {
        throw new l9.f(androidx.browser.browseractions.b.e("An operation is not implemented: ", "getGenericDeclaration() is not yet supported for type variables created from KType: " + this.f4727a), 0);
    }

    @Override // java.lang.reflect.TypeVariable
    public final String getName() {
        return this.f4727a.getName();
    }

    @Override // java.lang.reflect.Type
    public final String getTypeName() {
        return getName();
    }

    public final int hashCode() {
        getName().hashCode();
        getGenericDeclaration();
        throw null;
    }

    public final String toString() {
        return getName();
    }
}
