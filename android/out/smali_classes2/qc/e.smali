.class public abstract Lqc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/f;"
    }
.end annotation


# instance fields
.field public final a:Lp9/f;

.field public final b:I

.field public final c:Lpc/f;


# direct methods
.method public constructor <init>(Lp9/f;ILpc/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqc/e;->a:Lp9/f;

    iput p2, p0, Lqc/e;->b:I

    iput-object p3, p0, Lqc/e;->c:Lpc/f;

    return-void
.end method


# virtual methods
.method public a(Lkotlinx/coroutines/flow/g;Lp9/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/g<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    new-instance v0, Lqc/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, p0}, Lqc/c;-><init>(Lp9/d;Lkotlinx/coroutines/flow/g;Lqc/e;)V

    invoke-static {v0, p2}, Lb8/f;->t(Lx9/p;Lp9/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lq9/a;->a:Lq9/a;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Ll9/m;->a:Ll9/m;

    :goto_0
    return-object p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract c(Lpc/r;Lp9/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpc/r<",
            "-TT;>;",
            "Lp9/d<",
            "-",
            "Ll9/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract d(Lp9/f;ILpc/f;)Lqc/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")",
            "Lqc/e<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final e(Lp9/f;ILpc/f;)Lkotlinx/coroutines/flow/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp9/f;",
            "I",
            "Lpc/f;",
            ")",
            "Lkotlinx/coroutines/flow/f<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lqc/e;->a:Lp9/f;

    invoke-interface {p1, v0}, Lp9/f;->plus(Lp9/f;)Lp9/f;

    move-result-object p1

    sget-object v1, Lpc/f;->a:Lpc/f;

    iget-object v2, p0, Lqc/e;->c:Lpc/f;

    iget v3, p0, Lqc/e;->b:I

    if-eq p3, v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 p3, -0x3

    if-ne v3, p3, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, -0x2

    if-ne v3, p3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p2, p3, :cond_4

    :goto_0
    move p2, v3

    goto :goto_1

    :cond_4
    add-int/2addr p2, v3

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const p2, 0x7fffffff

    :goto_1
    move-object p3, v2

    :goto_2
    invoke-static {p1, v0}, Lkotlin/jvm/internal/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-ne p2, v3, :cond_6

    if-ne p3, v2, :cond_6

    return-object p0

    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lqc/e;->d(Lp9/f;ILpc/f;)Lqc/e;

    move-result-object p1

    return-object p1
.end method

.method public f(Lnc/a0;)Lpc/u;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnc/a0;",
            ")",
            "Lpc/u<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, -0x3

    .line 2
    iget v1, p0, Lqc/e;->b:I

    .line 3
    .line 4
    if-ne v1, v0, :cond_0

    .line 5
    .line 6
    const/4 v1, -0x2

    .line 7
    :cond_0
    new-instance v0, Lqc/d;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v0, p0, v2}, Lqc/d;-><init>(Lqc/e;Lp9/d;)V

    .line 11
    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    iget-object v3, p0, Lqc/e;->c:Lpc/f;

    .line 15
    .line 16
    invoke-static {v1, v3, v2}, Lb8/f;->e(ILpc/f;I)Lpc/a;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lqc/e;->a:Lp9/f;

    .line 21
    .line 22
    invoke-static {p1, v2}, Lnc/w;->b(Lnc/a0;Lp9/f;)Lp9/f;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    new-instance v2, Lpc/q;

    .line 27
    .line 28
    invoke-direct {v2, p1, v1}, Lpc/q;-><init>(Lp9/f;Lpc/a;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x3

    .line 32
    invoke-virtual {v2, p1, v2, v0}, Lnc/a;->l0(ILnc/a;Lx9/p;)V

    .line 33
    .line 34
    .line 35
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lqc/e;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    :goto_0
    sget-object v1, Lp9/g;->a:Lp9/g;

    .line 18
    .line 19
    iget-object v2, p0, Lqc/e;->a:Lp9/f;

    .line 20
    .line 21
    if-eq v2, v1, :cond_1

    .line 22
    .line 23
    const-string v1, "context="

    .line 24
    .line 25
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    :cond_1
    const/4 v1, -0x3

    .line 33
    iget v2, p0, Lqc/e;->b:I

    .line 34
    .line 35
    if-eq v2, v1, :cond_2

    .line 36
    .line 37
    const-string v1, "capacity="

    .line 38
    .line 39
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :cond_2
    sget-object v1, Lpc/f;->a:Lpc/f;

    .line 51
    .line 52
    iget-object v2, p0, Lqc/e;->c:Lpc/f;

    .line 53
    .line 54
    if-eq v2, v1, :cond_3

    .line 55
    .line 56
    const-string v1, "onBufferOverflow="

    .line 57
    .line 58
    invoke-static {v2, v1}, Lkotlin/jvm/internal/h;->k(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const/16 v1, 0x5b

    .line 82
    .line 83
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", "

    .line 87
    .line 88
    const/4 v2, 0x0

    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v4, 0x0

    .line 91
    const/16 v5, 0x3e

    .line 92
    .line 93
    invoke-static/range {v0 .. v5}, Lm9/t;->g1(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lx9/l;I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const/16 v1, 0x5d

    .line 98
    .line 99
    invoke-static {v6, v0, v1}, Landroid/support/v4/media/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    return-object v0
.end method
