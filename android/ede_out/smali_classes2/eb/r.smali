.class public final Leb/r;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Leb/q;Llb/b;)Leb/s;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Leb/q;->a(Llb/b;)Leb/q$a$b;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-object p0, p0, Leb/q$a$b;->a:Leb/s;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
