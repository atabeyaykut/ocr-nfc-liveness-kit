.class public final Lya/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lp4/g7;Lma/f;Lcb/y;I)Lp4/g7;
    .locals 3

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    const-string p3, "<this>"

    .line 7
    .line 8
    invoke-static {p0, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p3, "containingDeclaration"

    .line 12
    .line 13
    invoke-static {p1, p3}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance p3, Lya/a;

    .line 17
    .line 18
    invoke-direct {p3, p0, p1}, Lya/a;-><init>(Lp4/g7;Lma/f;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x3

    .line 22
    invoke-static {v0, p3}, Lc5/y;->v(ILx9/a;)Ll9/e;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    iget-object v0, p0, Lp4/g7;->a:Ljava/lang/Object;

    .line 27
    .line 28
    check-cast v0, Lya/c;

    .line 29
    .line 30
    if-eqz p2, :cond_1

    .line 31
    .line 32
    new-instance v1, Lya/g;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    invoke-direct {v1, p0, p1, p2, v2}, Lya/g;-><init>(Lp4/g7;Lma/j;Lcb/y;I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object p0, p0, Lp4/g7;->b:Ljava/lang/Object;

    .line 40
    .line 41
    move-object v1, p0

    .line 42
    check-cast v1, Lya/j;

    .line 43
    .line 44
    :goto_0
    new-instance p0, Lp4/g7;

    .line 45
    .line 46
    invoke-direct {p0, v0, v1, p3}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 47
    .line 48
    .line 49
    return-object p0
.end method

.method public static final b(Lp4/g7;Lna/h;)Lp4/g7;
    .locals 4

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "additionalAnnotations"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lna/h;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    new-instance v0, Lp4/g7;

    .line 19
    .line 20
    iget-object v1, p0, Lp4/g7;->a:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lya/c;

    .line 23
    .line 24
    iget-object v2, p0, Lp4/g7;->b:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v2, Lya/j;

    .line 27
    .line 28
    new-instance v3, Lya/b$a;

    .line 29
    .line 30
    invoke-direct {v3, p0, p1}, Lya/b$a;-><init>(Lp4/g7;Lna/h;)V

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x3

    .line 34
    invoke-static {p0, v3}, Lc5/y;->v(ILx9/a;)Ll9/e;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-direct {v0, v1, v2, p0}, Lp4/g7;-><init>(Lya/c;Lya/j;Ll9/e;)V

    .line 39
    .line 40
    .line 41
    move-object p0, v0

    .line 42
    :goto_0
    return-object p0
.end method
