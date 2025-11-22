package ma;

import java.util.Collection;

/* loaded from: classes2.dex */
public interface b extends ma.a, z {

    public enum a {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED
    }

    @Override // ma.a, ma.j
    b a();

    b b0(j jVar, a0 a0Var, o oVar);

    @Override // ma.a
    Collection<? extends b> e();

    a k0();

    void w0(Collection<? extends b> collection);
}
