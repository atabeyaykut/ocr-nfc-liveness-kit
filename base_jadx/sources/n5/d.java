package n5;

import com.google.crypto.tink.shaded.protobuf.a0;
import com.google.crypto.tink.shaded.protobuf.i;
import com.google.crypto.tink.shaded.protobuf.q0;
import java.security.GeneralSecurityException;
import n5.f;
import u5.e0;

/* loaded from: classes2.dex */
public final class d<PrimitiveT, KeyProtoT extends q0> {

    /* renamed from: a, reason: collision with root package name */
    public final f<KeyProtoT> f10567a;

    /* renamed from: b, reason: collision with root package name */
    public final Class<PrimitiveT> f10568b;

    public d(f<KeyProtoT> fVar, Class<PrimitiveT> cls) {
        if (!fVar.f10571b.keySet().contains(cls) && !Void.class.equals(cls)) {
            throw new IllegalArgumentException(String.format("Given internalKeyMananger %s does not support primitive class %s", fVar.toString(), cls.getName()));
        }
        this.f10567a = fVar;
        this.f10568b = cls;
    }

    public final PrimitiveT a(com.google.crypto.tink.shaded.protobuf.i iVar) throws GeneralSecurityException {
        f<KeyProtoT> fVar = this.f10567a;
        try {
            q0 q0VarE = fVar.e(iVar);
            Class<PrimitiveT> cls = this.f10568b;
            if (Void.class.equals(cls)) {
                throw new GeneralSecurityException("Cannot create a primitive for Void");
            }
            fVar.f(q0VarE);
            return (PrimitiveT) fVar.b(q0VarE, cls);
        } catch (a0 e10) {
            throw new GeneralSecurityException("Failures parsing proto of type ".concat(fVar.f10570a.getName()), e10);
        }
    }

    public final e0 b(com.google.crypto.tink.shaded.protobuf.i iVar) throws GeneralSecurityException {
        f<KeyProtoT> fVar = this.f10567a;
        try {
            f.a<?, KeyProtoT> aVarC = fVar.c();
            q0 q0VarB = aVarC.b(iVar);
            aVarC.c(q0VarB);
            KeyProtoT keyprototA = aVarC.a(q0VarB);
            e0.a aVarA = e0.A();
            String strA = fVar.a();
            aVarA.k();
            e0.t((e0) aVarA.f4393b, strA);
            i.f fVarF = keyprototA.f();
            aVarA.k();
            e0.u((e0) aVarA.f4393b, fVarF);
            e0.b bVarD = fVar.d();
            aVarA.k();
            e0.v((e0) aVarA.f4393b, bVarD);
            return aVarA.i();
        } catch (a0 e10) {
            throw new GeneralSecurityException("Unexpected proto", e10);
        }
    }
}
