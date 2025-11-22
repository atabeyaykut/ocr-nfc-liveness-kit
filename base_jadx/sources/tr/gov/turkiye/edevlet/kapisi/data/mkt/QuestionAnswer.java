package tr.gov.turkiye.edevlet.kapisi.data.mkt;

import androidx.browser.browseractions.b;
import kotlin.Metadata;
import kotlin.jvm.internal.d;
import kotlin.jvm.internal.h;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/data/mkt/QuestionAnswer;", "", "questionCode", "", "answer", "", "(Ljava/lang/String;Z)V", "getAnswer", "()Z", "getQuestionCode", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "other", "hashCode", "", "toString", "data_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes3.dex */
public final /* data */ class QuestionAnswer {
    private final boolean answer;
    private final String questionCode;

    public QuestionAnswer(String questionCode, boolean z10) {
        h.f(questionCode, "questionCode");
        this.questionCode = questionCode;
        this.answer = z10;
    }

    public /* synthetic */ QuestionAnswer(String str, boolean z10, int r32, d dVar) {
        this(str, (r32 & 2) != 0 ? true : z10);
    }

    public static /* synthetic */ QuestionAnswer copy$default(QuestionAnswer questionAnswer, String str, boolean z10, int r32, Object obj) {
        if ((r32 & 1) != 0) {
            str = questionAnswer.questionCode;
        }
        if ((r32 & 2) != 0) {
            z10 = questionAnswer.answer;
        }
        return questionAnswer.copy(str, z10);
    }

    /* renamed from: component1, reason: from getter */
    public final String getQuestionCode() {
        return this.questionCode;
    }

    /* renamed from: component2, reason: from getter */
    public final boolean getAnswer() {
        return this.answer;
    }

    public final QuestionAnswer copy(String questionCode, boolean answer) {
        h.f(questionCode, "questionCode");
        return new QuestionAnswer(questionCode, answer);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof QuestionAnswer)) {
            return false;
        }
        QuestionAnswer questionAnswer = (QuestionAnswer) other;
        return h.a(this.questionCode, questionAnswer.questionCode) && this.answer == questionAnswer.answer;
    }

    public final boolean getAnswer() {
        return this.answer;
    }

    public final String getQuestionCode() {
        return this.questionCode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public int hashCode() {
        int r02 = this.questionCode.hashCode() * 31;
        boolean z10 = this.answer;
        int r12 = z10;
        if (z10 != 0) {
            r12 = 1;
        }
        return r02 + r12;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder("QuestionAnswer(questionCode=");
        sb2.append(this.questionCode);
        sb2.append(", answer=");
        return b.f(sb2, this.answer, ')');
    }
}
