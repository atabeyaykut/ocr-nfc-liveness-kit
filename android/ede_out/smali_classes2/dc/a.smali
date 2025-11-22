.class public final Ldc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(ZZLdc/p;Ldc/e;Ldc/f;I)Lcc/b1;
    .locals 6

    .line 1
    and-int/lit8 v0, p5, 0x2

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 v2, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, p1

    .line 9
    :goto_0
    and-int/lit8 p1, p5, 0x4

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    sget-object p2, Ldc/p;->a:Ldc/p;

    .line 14
    .line 15
    :cond_1
    move-object v3, p2

    .line 16
    and-int/lit8 p1, p5, 0x8

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    sget-object p3, Ldc/e$a;->a:Ldc/e$a;

    .line 21
    .line 22
    :cond_2
    move-object v4, p3

    .line 23
    and-int/lit8 p1, p5, 0x10

    .line 24
    .line 25
    if-eqz p1, :cond_3

    .line 26
    .line 27
    sget-object p4, Ldc/f$a;->a:Ldc/f$a;

    .line 28
    .line 29
    :cond_3
    move-object v5, p4

    .line 30
    const-string p1, "typeSystemContext"

    .line 31
    .line 32
    invoke-static {v3, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p1, "kotlinTypePreparator"

    .line 36
    .line 37
    invoke-static {v4, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string p1, "kotlinTypeRefiner"

    .line 41
    .line 42
    invoke-static {v5, p1}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance p1, Lcc/b1;

    .line 46
    .line 47
    move-object v0, p1

    .line 48
    move v1, p0

    .line 49
    invoke-direct/range {v0 .. v5}, Lcc/b1;-><init>(ZZLfc/n;Lc6/a;Lc6/a;)V

    .line 50
    .line 51
    .line 52
    return-object p1
.end method
