.class public final Lta/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lua/b;Lua/c;Lma/e;Llb/f;)V
    .locals 0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scopeOwner"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final b(Lua/b;Lua/c;Lma/e0;Llb/f;)V
    .locals 0

    const-string p1, "<this>"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "scopeOwner"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "name"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lma/e0;->d()Llb/c;

    move-result-object p0

    invoke-virtual {p0}, Llb/c;->b()Ljava/lang/String;

    invoke-virtual {p3}, Llb/f;->o()Ljava/lang/String;

    move-result-object p0

    const-string p1, "name.asString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
