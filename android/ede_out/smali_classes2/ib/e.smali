.class public final Lib/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lmb/h$c<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmb/h$c<",
            "TM;>;",
            "Lmb/h$e<",
            "TM;TT;>;)TT;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extension"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmb/h$c;->l(Lmb/h$e;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lmb/h$c;->k(Lmb/h$e;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lmb/h$c;Lmb/h$e;I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lmb/h$c<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(",
            "Lmb/h$c<",
            "TM;>;",
            "Lmb/h$e<",
            "TM;",
            "Ljava/util/List<",
            "TT;>;>;I)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lmb/h$c;->p(Lmb/h$e;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lmb/h$c;->a:Lmb/g;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    iget-object v1, p1, Lmb/h$e;->d:Lmb/h$d;

    .line 15
    .line 16
    iget-boolean v2, v1, Lmb/h$d;->c:Z

    .line 17
    .line 18
    const-string v3, "getRepeatedField() can only be called on repeated fields."

    .line 19
    .line 20
    if-eqz v2, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lmb/g;->f(Lmb/g$a;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    check-cast v2, Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :goto_0
    if-ge p2, v2, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lmb/h$c;->p(Lmb/h$e;)V

    .line 39
    .line 40
    .line 41
    iget-boolean p0, v1, Lmb/h$d;->c:Z

    .line 42
    .line 43
    if-eqz p0, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lmb/g;->f(Lmb/g$a;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    check-cast p0, Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p1, p0}, Lmb/h$e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    .line 63
    .line 64
    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    .line 65
    .line 66
    .line 67
    throw p0

    .line 68
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_3
    const/4 p0, 0x0

    .line 75
    :goto_1
    return-object p0

    .line 76
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 77
    .line 78
    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method
