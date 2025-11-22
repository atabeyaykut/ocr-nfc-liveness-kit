.class public Lga/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lma/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lma/l<",
        "Lga/h<",
        "*>;",
        "Ll9/m;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lga/s;


# direct methods
.method public constructor <init>(Lga/s;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lga/d;->a:Lga/s;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Lma/a1;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/a1;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p2, Ll9/m;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "data"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance p2, Lga/x;

    .line 14
    .line 15
    iget-object v0, p0, Lga/d;->a:Lga/s;

    .line 16
    .line 17
    invoke-direct {p2, v0, p1}, Lga/x;-><init>(Lga/s;Lma/u;)V

    .line 18
    .line 19
    .line 20
    return-object p2
.end method

.method public final c(Lma/n0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/n0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lga/d;->b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final d(Lma/l0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p2, Ll9/m;

    .line 2
    .line 3
    const-string v0, "descriptor"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "data"

    .line 9
    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/h;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lma/a;->a0()Lma/o0;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p2, 0x0

    .line 24
    :goto_0
    invoke-interface {p1}, Lma/a;->h0()Lma/o0;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    const/4 v0, 0x1

    .line 31
    :cond_1
    add-int/2addr p2, v0

    .line 32
    invoke-interface {p1}, Lma/b1;->f0()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    const/4 v2, 0x2

    .line 37
    iget-object v3, p0, Lga/d;->a:Lga/s;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    if-eqz p2, :cond_3

    .line 42
    .line 43
    if-eq p2, v1, :cond_2

    .line 44
    .line 45
    if-ne p2, v2, :cond_5

    .line 46
    .line 47
    new-instance p2, Lga/a0;

    .line 48
    .line 49
    invoke-direct {p2, v3, p1}, Lga/a0;-><init>(Lga/s;Lma/l0;)V

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_2
    new-instance p2, Lga/z;

    .line 54
    .line 55
    invoke-direct {p2, v3, p1}, Lga/z;-><init>(Lga/s;Lma/l0;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    new-instance p2, Lga/y;

    .line 60
    .line 61
    invoke-direct {p2, v3, p1}, Lga/y;-><init>(Lga/s;Lma/l0;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_4
    if-eqz p2, :cond_7

    .line 66
    .line 67
    if-eq p2, v1, :cond_6

    .line 68
    .line 69
    if-ne p2, v2, :cond_5

    .line 70
    .line 71
    new-instance p2, Lga/i0;

    .line 72
    .line 73
    invoke-direct {p2, v3, p1}, Lga/i0;-><init>(Lga/s;Lma/l0;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_5
    new-instance p2, Ll9/f;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "Unsupported property: "

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-direct {p2, p1, v1}, Ll9/f;-><init>(Ljava/lang/String;I)V

    .line 94
    .line 95
    .line 96
    throw p2

    .line 97
    :cond_6
    new-instance p2, Lga/h0;

    .line 98
    .line 99
    invoke-direct {p2, v3, p1}, Lga/h0;-><init>(Lga/s;Lma/l0;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_7
    new-instance p2, Lga/g0;

    .line 104
    .line 105
    invoke-direct {p2, v3, p1}, Lga/g0;-><init>(Lga/s;Lma/l0;)V

    .line 106
    .line 107
    .line 108
    :goto_1
    return-object p2
.end method

.method public final bridge synthetic e(Lma/e0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/e0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic f(Lma/e;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/e;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic g(Lma/o0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/o0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(Lma/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/i;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lga/d;->b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic i(Lma/w0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/w0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final j(Lma/m0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/m0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lga/d;->b(Lma/u;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic k(Lma/v0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/v0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic l(Lma/i0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/i0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final bridge synthetic m(Lma/b0;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lma/b0;",
            "Ll9/m;",
            ")",
            "Lga/h<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
