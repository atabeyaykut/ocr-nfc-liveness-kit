.class public final Lob/h$a;
.super Lpa/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lob/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lac/d;)V
    .locals 7

    .line 1
    sget-object v6, Lma/r0;->a:Lma/r0$a;

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    sget-object v3, Lna/h$a;->a:Lna/h$a$a;

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    sget-object v5, Lma/b$a;->a:Lma/b$a;

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    invoke-direct/range {v0 .. v6}, Lpa/l;-><init>(Lma/e;Lma/i;Lna/h;ZLma/b$a;Lma/r0;)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget v1, Lob/i;->a:I

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    const/4 v2, 0x0

    .line 22
    iget v3, p1, Lac/d;->l:I

    .line 23
    .line 24
    if-eq v3, v1, :cond_6

    .line 25
    .line 26
    invoke-static {v3}, Landroidx/camera/core/impl/utils/f;->c(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-static {p1}, Lob/i;->q(Lma/h;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    sget-object p1, Lma/p;->a:Lma/p$d;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/16 p1, 0x33

    .line 45
    .line 46
    invoke-static {p1}, Lob/i;->a(I)V

    .line 47
    .line 48
    .line 49
    throw v2

    .line 50
    :cond_2
    invoke-static {p1}, Lob/i;->k(Lma/j;)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    sget-object p1, Lma/p;->k:Lma/p$h;

    .line 57
    .line 58
    if-eqz p1, :cond_3

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/16 p1, 0x34

    .line 62
    .line 63
    invoke-static {p1}, Lob/i;->a(I)V

    .line 64
    .line 65
    .line 66
    throw v2

    .line 67
    :cond_4
    sget-object p1, Lma/p;->e:Lma/p$h;

    .line 68
    .line 69
    if-eqz p1, :cond_5

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_5
    const/16 p1, 0x35

    .line 73
    .line 74
    invoke-static {p1}, Lob/i;->a(I)V

    .line 75
    .line 76
    .line 77
    throw v2

    .line 78
    :cond_6
    :goto_0
    sget-object p1, Lma/p;->a:Lma/p$d;

    .line 79
    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    :goto_1
    invoke-virtual {p0, v0, p1}, Lpa/l;->V0(Ljava/util/List;Lma/q;)V

    .line 83
    .line 84
    .line 85
    return-void

    .line 86
    :cond_7
    const/16 p1, 0x31

    .line 87
    .line 88
    invoke-static {p1}, Lob/i;->a(I)V

    .line 89
    .line 90
    .line 91
    throw v2
.end method
