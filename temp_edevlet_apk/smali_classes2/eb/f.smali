.class public final Leb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lgb/m;Lib/c;Lib/g;ZZZ)Leb/v;
    .locals 2

    .line 1
    const-string v0, "proto"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "nameResolver"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "typeTable"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Ljb/a;->d:Lmb/h$e;

    .line 17
    .line 18
    const-string v1, "propertySignature"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0}, Lib/e;->a(Lmb/h$c;Lmb/h$e;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljb/a$c;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-object v1

    .line 33
    :cond_0
    if-eqz p3, :cond_2

    .line 34
    .line 35
    invoke-static {p0, p1, p2, p5}, Lkb/h;->b(Lgb/m;Lib/c;Lib/g;Z)Lkb/d$a;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    if-nez p0, :cond_1

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_1
    invoke-static {p0}, Leb/v$a;->b(Lkb/d;)Leb/v;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0

    .line 47
    :cond_2
    if-eqz p4, :cond_4

    .line 48
    .line 49
    iget p0, v0, Ljb/a$c;->b:I

    .line 50
    .line 51
    const/4 p2, 0x2

    .line 52
    and-int/2addr p0, p2

    .line 53
    if-ne p0, p2, :cond_3

    .line 54
    .line 55
    const/4 p0, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    const/4 p0, 0x0

    .line 58
    :goto_0
    if-eqz p0, :cond_4

    .line 59
    .line 60
    iget-object p0, v0, Ljb/a$c;->d:Ljb/a$b;

    .line 61
    .line 62
    const-string p2, "signature.syntheticMethod"

    .line 63
    .line 64
    invoke-static {p0, p2}, Lkotlin/jvm/internal/h;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p1, p0}, Leb/v$a;->c(Lib/c;Ljb/a$b;)Leb/v;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    return-object v1
.end method

.method public static synthetic b(Lgb/m;Lib/c;Lib/g;ZZI)Leb/v;
    .locals 8

    and-int/lit8 v0, p5, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    move v5, p3

    :goto_0
    and-int/lit8 p3, p5, 0x10

    if-eqz p3, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    move v6, p4

    :goto_1
    and-int/lit8 p3, p5, 0x20

    if-eqz p3, :cond_2

    const/4 v1, 0x1

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v2 .. v7}, Leb/f;->a(Lgb/m;Lib/c;Lib/g;ZZZ)Leb/v;

    move-result-object p0

    return-object p0
.end method
