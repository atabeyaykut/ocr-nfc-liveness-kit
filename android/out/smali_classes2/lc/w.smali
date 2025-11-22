.class public Llc/w;
.super Llc/r;
.source "SourceFile"


# direct methods
.method public static final T0(Llc/h;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llc/h<",
            "+TT;>;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Llc/h;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    if-ltz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p0, Ljava/lang/ArithmeticException;

    .line 21
    .line 22
    const-string v0, "Count overflow has happened."

    .line 23
    .line 24
    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p0

    .line 28
    :cond_1
    return v0
.end method

.method public static final U0(Llc/h;I)Llc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llc/h<",
            "+TT;>;I)",
            "Llc/h<",
            "TT;>;"
        }
    .end annotation

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    :goto_0
    if-eqz v0, :cond_3

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_1
    instance-of v0, p0, Llc/c;

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    check-cast p0, Llc/c;

    .line 16
    .line 17
    invoke-interface {p0, p1}, Llc/c;->a(I)Llc/h;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    goto :goto_1

    .line 22
    :cond_2
    new-instance v0, Llc/b;

    .line 23
    .line 24
    invoke-direct {v0, p0, p1}, Llc/b;-><init>(Llc/h;I)V

    .line 25
    .line 26
    .line 27
    move-object p0, v0

    .line 28
    :goto_1
    return-object p0

    .line 29
    :cond_3
    const-string p0, "Requested element count "

    .line 30
    .line 31
    const-string v0, " is less than zero."

    .line 32
    .line 33
    invoke-static {p0, p1, v0}, Landroidx/appcompat/graphics/drawable/a;->f(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method

.method public static final V0(Llc/h;Lx9/l;)Llc/e;
    .locals 2

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/e;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Llc/e;-><init>(Llc/h;ZLx9/l;)V

    return-object v0
.end method

.method public static final W0(Llc/h;Lx9/l;)Llc/e;
    .locals 2

    const-string v0, "predicate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Llc/e;-><init>(Llc/h;ZLx9/l;)V

    return-object v0
.end method

.method public static final X0(Llc/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Llc/e$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Llc/e$a;-><init>(Llc/e;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Llc/e$a;->hasNext()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return-object p0

    .line 14
    :cond_0
    invoke-virtual {v0}, Llc/e$a;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method public static final Y0(Llc/h;Lx9/l;)Llc/f;
    .locals 2

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/f;

    sget-object v1, Llc/u;->a:Llc/u;

    invoke-direct {v0, p0, p1, v1}, Llc/f;-><init>(Llc/h;Lx9/l;Lx9/l;)V

    return-object v0
.end method

.method public static final Z0(Llc/h;Lx9/l;)Llc/y;
    .locals 1

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Llc/y;

    invoke-direct {v0, p0, p1}, Llc/y;-><init>(Llc/h;Lx9/l;)V

    return-object v0
.end method

.method public static final a1(Llc/h;Lx9/l;)Llc/e;
    .locals 1

    .line 1
    const-string v0, "transform"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Llc/y;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1}, Llc/y;-><init>(Llc/h;Lx9/l;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Llc/t;->a:Llc/t;

    .line 12
    .line 13
    invoke-static {v0, p0}, Llc/w;->W0(Llc/h;Lx9/l;)Llc/e;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final b1(Llc/y;Ljava/lang/Object;)Llc/f;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Llc/h;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    new-array v2, p0, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-static {v2}, Llc/q;->S0([Ljava/lang/Object;)Llc/h;

    move-result-object p1

    aput-object p1, v0, p0

    invoke-static {v0}, Llc/q;->S0([Ljava/lang/Object;)Llc/h;

    move-result-object p0

    invoke-static {p0}, Llc/q;->Q0(Llc/h;)Llc/f;

    move-result-object p0

    return-object p0
.end method

.method public static final c1(Llc/h;)Ljava/util/ArrayList;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Llc/h;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    return-object v0
.end method
