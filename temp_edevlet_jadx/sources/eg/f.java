package eg;

import java.util.List;

/* loaded from: classes3.dex */
public final class f {

    @l8.k(name = "myArrayList")
    private final List<Object> questionAnswerList;

    public f(List<Object> questionAnswerList) {
        kotlin.jvm.internal.h.f(questionAnswerList, "questionAnswerList");
        this.questionAnswerList = questionAnswerList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof f) && kotlin.jvm.internal.h.a(this.questionAnswerList, ((f) obj).questionAnswerList);
    }

    public final int hashCode() {
        return this.questionAnswerList.hashCode();
    }

    public final String toString() {
        return android.support.v4.media.a.j(new StringBuilder("QuestionAnswers(questionAnswerList="), this.questionAnswerList, ')');
    }
}
