package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import android.support.v4.media.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l8.k;
import org.bouncycastle.i18n.TextBundle;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005J\t\u0010\t\u001a\u00020\u0003HÆ\u0003J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u001d\u0010\u000b\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\f\u001a\u00020\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0003HÖ\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\u0007¨\u0006\u0012"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/Question;", "", "code", "", TextBundle.TEXT_ENTRY, "(Ljava/lang/String;Ljava/lang/String;)V", "getCode", "()Ljava/lang/String;", "getText", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class Question {

    @k(name = "code")
    private final String code;

    @k(name = TextBundle.TEXT_ENTRY)
    private final String text;

    public Question(String code, String text) {
        h.f(code, "code");
        h.f(text, "text");
        this.code = code;
        this.text = text;
    }

    public static /* synthetic */ Question copy$default(Question question, String str, String str2, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = question.code;
        }
        if ((r32 & 2) != 0) {
            str2 = question.text;
        }
        return question.copy(str, str2);
    }

    /* renamed from: component1, reason: from getter */
    public final String getCode() {
        return this.code;
    }

    /* renamed from: component2, reason: from getter */
    public final String getText() {
        return this.text;
    }

    public final Question copy(String code, String text) {
        h.f(code, "code");
        h.f(text, "text");
        return new Question(code, text);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Question)) {
            return false;
        }
        Question question = (Question) other;
        return h.a(this.code, question.code) && h.a(this.text, question.text);
    }

    public final String getCode() {
        return this.code;
    }

    public final String getText() {
        return this.text;
    }

    public int hashCode() {
        return this.text.hashCode() + (this.code.hashCode() * 31);
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("Question(code=");
        sb2.append(this.code);
        sb2.append(", text=");
        return a.h(sb2, this.text, ')');
    }
}
