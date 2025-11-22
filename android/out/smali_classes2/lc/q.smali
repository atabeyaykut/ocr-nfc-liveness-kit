.class public Llc/q;
.super Lb8/f;
.source "SourceFile"


# direct methods
.method public static final Q0(Llc/h;)Llc/f;
    .locals 3

    .line 1
    instance-of v0, p0, Llc/y;

    .line 2
    .line 3
    sget-object v1, Llc/m;->a:Llc/m;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast p0, Llc/y;

    .line 8
    .line 9
    const-string v0, "iterator"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Llc/f;

    .line 15
    .line 16
    iget-object v2, p0, Llc/y;->a:Llc/h;

    .line 17
    .line 18
    iget-object p0, p0, Llc/y;->b:Lx9/l;

    .line 19
    .line 20
    invoke-direct {v0, v2, p0, v1}, Llc/f;-><init>(Llc/h;Lx9/l;Lx9/l;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Llc/f;

    .line 25
    .line 26
    sget-object v2, Llc/n;->a:Llc/n;

    .line 27
    .line 28
    invoke-direct {v0, p0, v2, v1}, Llc/f;-><init>(Llc/h;Lx9/l;Lx9/l;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v0
.end method

.method public static final R0(Lx9/l;Ljava/lang/Object;)Llc/h;
    .locals 2

    const-string v0, "nextFunction"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    sget-object p0, Llc/d;->a:Llc/d;

    goto :goto_0

    :cond_0
    new-instance v0, Llc/g;

    new-instance v1, Llc/p;

    invoke-direct {v1, p1}, Llc/p;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1, p0}, Llc/g;-><init>(Lx9/a;Lx9/l;)V

    move-object p0, v0

    :goto_0
    return-object p0
.end method

.method public static final varargs S0([Ljava/lang/Object;)Llc/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Llc/h<",
            "TT;>;"
        }
    .end annotation

    array-length v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    sget-object p0, Llc/d;->a:Llc/d;

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lm9/k;->n0([Ljava/lang/Object;)Llc/h;

    move-result-object p0

    :goto_1
    return-object p0
.end method
