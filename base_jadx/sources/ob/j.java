package ob;

/* loaded from: classes2.dex */
public interface j {

    public enum a {
        CONFLICTS_ONLY,
        SUCCESS_ONLY,
        BOTH
    }

    public enum b {
        OVERRIDABLE,
        /* JADX INFO: Fake field, exist only in values array */
        CONFLICT,
        INCOMPATIBLE,
        UNKNOWN
    }

    a a();

    b b(ma.a aVar, ma.a aVar2, ma.e eVar);
}
