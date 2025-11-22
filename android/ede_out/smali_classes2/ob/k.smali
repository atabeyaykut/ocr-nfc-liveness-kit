.class public final Lob/k;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Llb/c;

    const-string v1, "kotlin.jvm.JvmInline"

    invoke-direct {v0, v1}, Llb/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Llb/b;->l(Llb/c;)Llb/b;

    return-void
.end method

.method public static final a(Lma/u;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lma/m0;

    if-eqz v0, :cond_0

    check-cast p0, Lma/m0;

    invoke-interface {p0}, Lma/k0;->A0()Lma/l0;

    move-result-object p0

    const-string v0, "correspondingProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lob/k;->d(Lma/b1;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final b(Lma/j;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Lma/e;

    if-eqz v0, :cond_0

    check-cast p0, Lma/e;

    invoke-interface {p0}, Lma/e;->y0()Lma/y0;

    move-result-object p0

    instance-of p0, p0, Lma/v;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final c(Lcc/e0;)Z
    .locals 0

    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    move-result-object p0

    invoke-interface {p0}, Lcc/c1;->n()Lma/g;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lob/k;->b(Lma/j;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final d(Lma/b1;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lma/a;->h0()Lma/o0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    invoke-interface {p0}, Lma/z0;->b()Lma/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Lma/e;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lma/e;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget v1, Lsb/b;->a:I

    .line 23
    .line 24
    invoke-interface {v0}, Lma/e;->y0()Lma/y0;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    instance-of v1, v0, Lma/v;

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    check-cast v0, Lma/v;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-object v0, v2

    .line 36
    :goto_1
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iget-object v2, v0, Lma/v;->a:Llb/f;

    .line 39
    .line 40
    :cond_2
    invoke-interface {p0}, Lma/j;->getName()Llb/f;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {v2, p0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    .line 50
    const/4 p0, 0x1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    const/4 p0, 0x0

    .line 53
    :goto_2
    return p0
.end method

.method public static final e(Lcc/e0;)Lcc/m0;
    .locals 2

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcc/e0;->M0()Lcc/c1;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-interface {p0}, Lcc/c1;->n()Lma/g;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    instance-of v0, p0, Lma/e;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    move-object p0, v1

    .line 20
    :cond_0
    check-cast p0, Lma/e;

    .line 21
    .line 22
    if-eqz p0, :cond_2

    .line 23
    .line 24
    sget v0, Lsb/b;->a:I

    .line 25
    .line 26
    invoke-interface {p0}, Lma/e;->y0()Lma/y0;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    instance-of v0, p0, Lma/v;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    check-cast p0, Lma/v;

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move-object p0, v1

    .line 38
    :goto_0
    if-eqz p0, :cond_2

    .line 39
    .line 40
    iget-object p0, p0, Lma/v;->b:Lfc/i;

    .line 41
    .line 42
    move-object v1, p0

    .line 43
    check-cast v1, Lcc/m0;

    .line 44
    .line 45
    :cond_2
    return-object v1
.end method
