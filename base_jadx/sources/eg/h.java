package eg;

/* loaded from: classes3.dex */
public final class h {

    @l8.k(name = "accidentComment")
    private final String accidentComment;

    public h(String str) {
        this.accidentComment = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof h) && kotlin.jvm.internal.h.a(this.accidentComment, ((h) obj).accidentComment);
    }

    public final int hashCode() {
        String str = this.accidentComment;
        if (str == null) {
            return 0;
        }
        return str.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.h(new StringBuilder("ReportComment(accidentComment="), this.accidentComment, ')');
    }
}
